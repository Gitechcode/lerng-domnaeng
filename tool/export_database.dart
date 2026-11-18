import 'dart:convert';
import 'dart:io';

import '../lib/features/courses/data/course_catalog_data.dart';
import '../lib/features/profile/domain/cv_templates_data.dart';

String escapeSql(String? str) {
  if (str == null) return 'NULL';
  final escaped = str
      .replaceAll(r'\', r'\\')
      .replaceAll("'", r"\'")
      .replaceAll('\n', r'\n')
      .replaceAll('\r', r'\r');
  return "'$escaped'";
}

void main() async {
  final dbDir = Directory('database');
  if (!dbDir.existsSync()) {
    dbDir.createSync(recursive: true);
  }

  final buffer = StringBuffer();

  buffer.writeln('-- ==========================================================');
  buffer.writeln('-- Lerng Domnaeng (ឡើងដំណែង) - Complete Database Schema & Seed');
  buffer.writeln('-- Generated for DBeaver (MySQL / MariaDB / SQLite compatible)');
  buffer.writeln('-- ==========================================================\n');

  buffer.writeln('CREATE DATABASE IF NOT EXISTS `lerng_domnaeng` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;');
  buffer.writeln('USE `lerng_domnaeng`;\n');

  // 1. Users Table
  buffer.writeln('-- 1. USERS TABLE');
  buffer.writeln('DROP TABLE IF EXISTS `user_progress`;');
  buffer.writeln('DROP TABLE IF EXISTS `quiz_questions`;');
  buffer.writeln('DROP TABLE IF EXISTS `lessons`;');
  buffer.writeln('DROP TABLE IF EXISTS `courses`;');
  buffer.writeln('DROP TABLE IF EXISTS `cv_templates`;');
  buffer.writeln('DROP TABLE IF EXISTS `users`;\n');

  buffer.writeln('''
CREATE TABLE `users` (
  `id` VARCHAR(64) NOT NULL PRIMARY KEY,
  `email` VARCHAR(191) NOT NULL UNIQUE,
  `display_name` VARCHAR(191) NOT NULL,
  `role` VARCHAR(50) NOT NULL DEFAULT 'learner',
  `career_level` VARCHAR(50) NOT NULL DEFAULT 'intern',
  `target_career_level` VARCHAR(50) NULL,
  `industry` VARCHAR(100) NULL,
  `company_context` VARCHAR(100) NULL,
  `xp_points` INT NOT NULL DEFAULT 0,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
''');

  // Insert Default Demo Users
  buffer.writeln('''
INSERT INTO `users` (`id`, `email`, `display_name`, `role`, `career_level`, `target_career_level`, `industry`, `company_context`, `xp_points`) VALUES
('usr-admin-01', 'admin@lerngdomnaeng.com', 'ប្រព័ន្ធគ្រប់គ្រងទូទៅ (System Admin)', 'admin', 'executive', 'founder', 'Technology & Education', 'Standard Enterprise', 5000),
('usr-learner-01', 'learner@lerngdomnaeng.com', 'សុខ ជា (Learner)', 'learner', 'junior', 'senior', 'Information Technology', 'SME Company', 1200),
('usr-instructor-01', 'instructor@lerngdomnaeng.com', 'លោកគ្រូ សុជាតិ វណ្ណារ៉ា (Instructor)', 'instructor', 'director', 'executive', 'Corporate Training', 'Standard Enterprise', 3500);
''');

  // 2. Courses Table
  buffer.writeln('-- 2. COURSES TABLE');
  buffer.writeln('''
CREATE TABLE `courses` (
  `id` VARCHAR(64) NOT NULL PRIMARY KEY,
  `title_kh` VARCHAR(255) NOT NULL,
  `title_en` VARCHAR(255) NOT NULL,
  `description_kh` TEXT NOT NULL,
  `description_en` TEXT NOT NULL,
  `target_level` VARCHAR(50) NOT NULL,
  `category` VARCHAR(100) NOT NULL,
  `instructor_name` VARCHAR(100) NOT NULL,
  `total_lessons` INT NOT NULL DEFAULT 10,
  `estimated_minutes` INT NOT NULL DEFAULT 120,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
''');

  for (final course in CourseCatalogData.allCourses) {
    buffer.writeln('INSERT INTO `courses` (`id`, `title_kh`, `title_en`, `description_kh`, `description_en`, `target_level`, `category`, `instructor_name`, `total_lessons`, `estimated_minutes`) VALUES ('
        '${escapeSql(course.id)}, '
        '${escapeSql(course.titleKh)}, '
        '${escapeSql(course.titleEn)}, '
        '${escapeSql(course.descriptionKh)}, '
        '${escapeSql(course.descriptionEn)}, '
        '${escapeSql(course.targetLevel.name)}, '
        '${escapeSql(course.category)}, '
        '${escapeSql(course.instructorName)}, '
        '${course.totalLessons}, '
        '${course.estimatedMinutes});');
  }
  buffer.writeln();

  // 3. Lessons Table
  buffer.writeln('-- 3. LESSONS TABLE');
  buffer.writeln('''
CREATE TABLE `lessons` (
  `id` VARCHAR(64) NOT NULL PRIMARY KEY,
  `course_id` VARCHAR(64) NOT NULL,
  `module_id` VARCHAR(64) NOT NULL,
  `order_index` INT NOT NULL,
  `title_kh` VARCHAR(255) NOT NULL,
  `title_en` VARCHAR(255) NOT NULL,
  `type` VARCHAR(30) NOT NULL DEFAULT 'text',
  `learning_objectives` TEXT NOT NULL,
  `short_explanation` LONGTEXT NOT NULL,
  `workplace_story` LONGTEXT NOT NULL,
  `practical_example` LONGTEXT NOT NULL,
  `practical_exercise` TEXT NOT NULL,
  `reflection` TEXT NOT NULL,
  `workplace_action` TEXT NOT NULL,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  INDEX `idx_course_order` (`course_id`, `order_index`),
  CONSTRAINT `fk_lesson_course` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
''');

  // 4. Quiz Questions Table
  buffer.writeln('-- 4. QUIZ QUESTIONS TABLE');
  buffer.writeln('''
CREATE TABLE `quiz_questions` (
  `id` VARCHAR(64) NOT NULL PRIMARY KEY,
  `lesson_id` VARCHAR(64) NOT NULL,
  `prompt_kh` TEXT NOT NULL,
  `prompt_en` TEXT NOT NULL,
  `options_kh` JSON NOT NULL,
  `options_en` JSON NOT NULL,
  `correct_option_index` INT NOT NULL,
  `explanation_kh` TEXT NOT NULL,
  `explanation_en` TEXT NOT NULL,
  CONSTRAINT `fk_quiz_lesson` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
''');

  // Insert Lessons & Quizzes
  int totalLessonCount = 0;
  int totalQuizCount = 0;

  for (final course in CourseCatalogData.allCourses) {
    final lessons = CourseCatalogData.detailedLessons[course.id] ?? [];
    for (final lesson in lessons) {
      totalLessonCount++;
      buffer.writeln('INSERT INTO `lessons` (`id`, `course_id`, `module_id`, `order_index`, `title_kh`, `title_en`, `type`, `learning_objectives`, `short_explanation`, `workplace_story`, `practical_example`, `practical_exercise`, `reflection`, `workplace_action`) VALUES ('
          '${escapeSql(lesson.id)}, '
          '${escapeSql(lesson.courseId)}, '
          '${escapeSql(lesson.moduleId)}, '
          '${lesson.orderIndex}, '
          '${escapeSql(lesson.titleKh)}, '
          '${escapeSql(lesson.titleEn)}, '
          '${escapeSql(lesson.type.name)}, '
          '${escapeSql(lesson.learningObjectives)}, '
          '${escapeSql(lesson.shortExplanation)}, '
          '${escapeSql(lesson.workplaceStory)}, '
          '${escapeSql(lesson.practicalExample)}, '
          '${escapeSql(lesson.practicalExercise)}, '
          '${escapeSql(lesson.reflection)}, '
          '${escapeSql(lesson.workplaceAction)});');

      for (final quiz in lesson.quizQuestions) {
        totalQuizCount++;
        final optionsKhJson = jsonEncode(quiz.optionsKh);
        final optionsEnJson = jsonEncode(quiz.optionsEn);
        buffer.writeln('INSERT INTO `quiz_questions` (`id`, `lesson_id`, `prompt_kh`, `prompt_en`, `options_kh`, `options_en`, `correct_option_index`, `explanation_kh`, `explanation_en`) VALUES ('
            '${escapeSql(quiz.id)}, '
            '${escapeSql(lesson.id)}, '
            '${escapeSql(quiz.promptKh)}, '
            '${escapeSql(quiz.promptEn)}, '
            '${escapeSql(optionsKhJson)}, '
            '${escapeSql(optionsEnJson)}, '
            '${quiz.correctOptionIndex}, '
            '${escapeSql(quiz.explanationKh)}, '
            '${escapeSql(quiz.explanationEn)});');
      }
    }
  }
  buffer.writeln();

  // 5. CV Templates Table
  buffer.writeln('-- 5. CV TEMPLATES TABLE');
  buffer.writeln('''
CREATE TABLE `cv_templates` (
  `id` VARCHAR(64) NOT NULL PRIMARY KEY,
  `industry_kh` VARCHAR(100) NOT NULL,
  `industry_en` VARCHAR(100) NOT NULL,
  `title_kh` VARCHAR(255) NOT NULL,
  `title_en` VARCHAR(255) NOT NULL,
  `icon_name` VARCHAR(50) NOT NULL,
  `summary` TEXT NOT NULL,
  `skills` JSON NOT NULL,
  `achievements_xyz` TEXT NOT NULL,
  `education` TEXT NOT NULL,
  `recommended_for_level` VARCHAR(100) NOT NULL,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
''');

  for (final t in CvTemplatesRepository.allTemplates) {
    final skillsJson = jsonEncode(t.skills);
    buffer.writeln('INSERT INTO `cv_templates` (`id`, `industry_kh`, `industry_en`, `title_kh`, `title_en`, `icon_name`, `summary`, `skills`, `achievements_xyz`, `education`, `recommended_for_level`) VALUES ('
        '${escapeSql(t.id)}, '
        '${escapeSql(t.industryKh)}, '
        '${escapeSql(t.industryEn)}, '
        '${escapeSql(t.titleKh)}, '
        '${escapeSql(t.titleEn)}, '
        '${escapeSql(t.iconName)}, '
        '${escapeSql(t.summary)}, '
        '${escapeSql(skillsJson)}, '
        '${escapeSql(t.achievementsXyz)}, '
        '${escapeSql(t.education)}, '
        '${escapeSql(t.recommendedForLevel)});');
  }
  buffer.writeln();

  // 6. User Progress Table
  buffer.writeln('-- 6. USER PROGRESS TABLE');
  buffer.writeln('''
CREATE TABLE `user_progress` (
  `id` VARCHAR(64) NOT NULL PRIMARY KEY,
  `user_id` VARCHAR(64) NOT NULL,
  `course_id` VARCHAR(64) NOT NULL,
  `lesson_id` VARCHAR(64) NOT NULL,
  `completed` TINYINT(1) NOT NULL DEFAULT 1,
  `quiz_passed` TINYINT(1) NOT NULL DEFAULT 1,
  `completed_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  INDEX `idx_user_progress` (`user_id`, `course_id`),
  CONSTRAINT `fk_prog_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_prog_course` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_prog_lesson` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
''');

  // Sample Progress
  buffer.writeln('''
INSERT INTO `user_progress` (`id`, `user_id`, `course_id`, `lesson_id`, `completed`, `quiz_passed`) VALUES
('prog-01', 'usr-learner-01', 'course-intern-comm', 'lesson-comm-1', 1, 1),
('prog-02', 'usr-learner-01', 'course-intern-comm', 'lesson-comm-2', 1, 1),
('prog-03', 'usr-learner-01', 'course-eq-critical', 'lesson-eq-1', 1, 1);
''');

  final sqlFile = File('database/lerng_domnaeng.sql');
  await sqlFile.writeAsString(buffer.toString());

  print('Database SQL file generated successfully: ${sqlFile.path}');
  print('Total Courses: ${CourseCatalogData.allCourses.length}');
  print('Total Lessons: $totalLessonCount');
  print('Total Quizzes: $totalQuizCount');
  print('Total CV Templates: ${CvTemplatesRepository.allTemplates.length}');
}
