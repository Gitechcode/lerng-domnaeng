import 'package:flutter_test/flutter_test.dart';
import 'package:lerng_domnaeng/core/services/app_data_sync_service.dart';
import 'package:lerng_domnaeng/features/auth/domain/user_model.dart';
import 'package:lerng_domnaeng/features/profile/domain/profile_models.dart';

void main() {
  group('AppDataSyncService & Frontend-Backend Data Connectivity', () {
    late AppDataSyncNotifier syncNotifier;

    setUp(() {
      syncNotifier = AppDataSyncNotifier();
    });

    test('Initializes with comprehensive live data', () {
      expect(syncNotifier.courses.length, 10);
      expect(syncNotifier.users.length >= 7, true);
      expect(syncNotifier.quizSubmissions.length >= 2, true);
      expect(syncNotifier.cvSubmissions.length >= 1, true);
      expect(syncNotifier.auditLogs.isNotEmpty, true);
    });

    test('Profile updates in frontend sync to users list and audit logs', () {
      final updatedProfile = const ExtendedUserProfile(
        id: 'usr-vibol-01',
        email: 'vibol.demo@lerngdomnaeng.com',
        displayName: 'សុខ វិបុល (កែសម្រួល)',
        phone: '+855 12 999 888',
        careerLevel: 'Senior Specialist',
        targetCareerLevel: 'Manager',
        currentSalaryUsd: 850.0,
        targetSalaryUsd: 2000.0,
      );

      syncNotifier.updateUserProfile(updatedProfile);

      expect(syncNotifier.currentUserProfile.displayName, 'សុខ វិបុល (កែសម្រួល)');
      final user = syncNotifier.users.firstWhere((u) => u.id == 'usr-vibol-01');
      expect(user.name, 'សុខ វិបុល (កែសម្រួល)');
      expect(user.currentSalary, 850.0);
      expect(syncNotifier.auditLogs.first.tag, 'USER_UPDATE');
    });

    test('Frontend Quiz submission records in backend with XP gain', () {
      final initialQuizzes = syncNotifier.quizSubmissions.length;
      final initialUser = syncNotifier.users.firstWhere((u) => u.id == 'usr-vibol-01');
      final initialXp = initialUser.xpPoints;

      syncNotifier.recordQuizSubmission(
        courseId: 'course-intern-comm',
        lessonId: 'intern-comm-01',
        question: 'សំណួរតេស្តជាក់ស្ដែង?',
        selectedOptionIndex: 0,
        selectedOptionText: 'ចម្លើយត្រឹមត្រូវ',
        isCorrect: true,
        notes: 'កំណត់ត្រាសាកល្បង',
      );

      expect(syncNotifier.quizSubmissions.length, initialQuizzes + 1);
      final latestQuiz = syncNotifier.quizSubmissions.first;
      expect(latestQuiz.question, 'សំណួរតេស្តជាក់ស្ដែង?');
      expect(latestQuiz.isCorrect, true);
      expect(latestQuiz.notes, 'កំណត់ត្រាសាកល្បង');

      final updatedUser = syncNotifier.users.firstWhere((u) => u.id == 'usr-vibol-01');
      expect(updatedUser.xpPoints, initialXp + 50);
    });

    test('Frontend CV submission records in backend candidate pool', () {
      final initialCvs = syncNotifier.cvSubmissions.length;

      syncNotifier.submitCv(
        targetTitle: 'Head of Marketing',
        summary: 'សេចក្តីសង្ខេបវិជ្ជាជីវៈ...',
        skills: ['Growth Hacking', 'Brand Strategy'],
        experienceXyz: '• សម្រេចបានលទ្ធផល X ដោយធ្វើ Z...',
        education: 'BBA Marketing',
        salaryExpectation: '\$2,500 / ខែ',
        fullCvText: 'FULL ATS CV CONTENT',
      );

      expect(syncNotifier.cvSubmissions.length, initialCvs + 1);
      final latestCv = syncNotifier.cvSubmissions.first;
      expect(latestCv.targetTitle, 'Head of Marketing');
      expect(latestCv.skills, contains('Growth Hacking'));
      expect(latestCv.status, 'New');
    });

    test('Backend course creation dynamically updates courses list', () {
      final initialCourses = syncNotifier.courses.length;

      syncNotifier.addCourse(
        titleKh: 'វគ្គសិក្សាសាកល្បងថ្មី',
        titleEn: 'New Test Course',
        descriptionKh: 'ការពិពណ៌នា...',
        descriptionEn: 'Description...',
        targetLevel: CareerLevel.manager,
        category: 'Strategy',
        instructorName: 'លោកគ្រូ សុជាតិ',
      );

      expect(syncNotifier.courses.length, initialCourses + 1);
      final newCourse = syncNotifier.courses.last;
      expect(newCourse.titleKh, 'វគ្គសិក្សាសាកល្បងថ្មី');
      expect(syncNotifier.courseLessons[newCourse.id], isNotNull);
    });

    test('Live overview metrics reflect combined system activity', () {
      final stats = syncNotifier.getLiveOverviewStats();
      expect(stats['totalCourses'], syncNotifier.courses.length);
      expect(stats['totalLearners'], syncNotifier.users.length);
      expect(stats['totalQuizzesTaken'], syncNotifier.quizSubmissions.length);
      expect(stats['totalCvSubmissions'], syncNotifier.cvSubmissions.length);
    });
  });
}
