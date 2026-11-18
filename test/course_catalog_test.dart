import 'package:flutter_test/flutter_test.dart';
import 'package:lerng_domnaeng/features/courses/data/course_catalog_data.dart';

void main() {
  group('Course Catalog & 9-Part Lessons Data Integrity', () {
    test('Catalog contains 10 courses spanning Intern to Founder (1 for each career level)', () {
      expect(CourseCatalogData.allCourses.length, 10);
      final courseIds = CourseCatalogData.allCourses.map((c) => c.id).toList();
      expect(courseIds, containsAll([
        'course-intern-comm',
        'course-eq-critical',
        'course-senior-mentorship',
        'course-leader-delegation',
        'course-supervisor-ops',
        'course-manager-conflict',
        'course-hod-strategy',
        'course-director-governance',
        'course-executive-csuite',
        'course-founder-sme',
      ]));
    });

    test('All 10 courses have full-length lessons with complete 9-part curriculum', () {
      for (final course in CourseCatalogData.allCourses) {
        final lessons = CourseCatalogData.detailedLessons[course.id];
        expect(lessons, isNotNull, reason: 'Course ${course.id} must have lessons');
        expect(lessons!.length, course.totalLessons, reason: 'Course ${course.id} must have ${course.totalLessons} lessons');

        for (final lesson in lessons) {
          // Check Lesson headers
          expect(lesson.titleKh.isNotEmpty, true);
          expect(lesson.titleEn.isNotEmpty, true);

          // Part 1: Learning Objectives
          expect(lesson.learningObjectives, isNotNull);
          expect(lesson.learningObjectives!.isNotEmpty, true);

          // Part 2: Short Explanation
          expect(lesson.shortExplanation, isNotNull);
          expect(lesson.shortExplanation!.isNotEmpty, true);

          // Part 3: Workplace Story (Cambodian context)
          expect(lesson.workplaceStory, isNotNull);
          expect(lesson.workplaceStory!.isNotEmpty, true);

          // Part 4: Practical Example & Scripts
          expect(lesson.practicalExample, isNotNull);
          expect(lesson.practicalExample!.isNotEmpty, true);

          // Part 5: Practical Exercise
          expect(lesson.practicalExercise, isNotNull);
          expect(lesson.practicalExercise!.isNotEmpty, true);

          // Part 6: Scenario Quiz & Assessment
          expect(lesson.quizQuestions.isNotEmpty, true, reason: 'Lesson ${lesson.id} must have quiz questions');
          final quiz = lesson.quizQuestions.first;
          expect(quiz.promptKh.isNotEmpty, true);
          expect(quiz.optionsKh.length >= 3, true);
          expect(quiz.correctOptionIndex, isNotNull);
          expect(quiz.explanationKh, isNotNull);

          // Part 7: Self-Reflection
          expect(lesson.reflection, isNotNull);
          expect(lesson.reflection!.isNotEmpty, true);

          // Part 8: Workplace Action Card
          expect(lesson.workplaceAction, isNotNull);
          expect(lesson.workplaceAction!.isNotEmpty, true);
        }
      }
    });
  });
}
