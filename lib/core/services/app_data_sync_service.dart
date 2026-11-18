import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';
import '../../features/auth/domain/user_model.dart';
import '../../features/courses/data/course_catalog_data.dart';
import '../../features/courses/domain/course_model.dart';
import '../../features/profile/domain/profile_models.dart';

/// Represents a user account visible in both Admin Backend and Frontend
class AdminUserEntry {
  final String id;
  final String name;
  final String email;
  final String role; // 'Platform Admin', 'Instructor', 'Org Admin', 'Learner'
  final Color badgeColor;
  final String careerLevel;
  final String targetCareerLevel;
  final String organization;
  final String department;
  final String phone;
  final double currentSalary;
  final double targetSalary;
  final List<String> skills;
  final String bio;
  final String? photoUrl;
  final int xpPoints;
  final int completedLessonsCount;
  final bool isSuspended;
  final DateTime lastActive;

  const AdminUserEntry({
    required this.id,
    required this.name,
    required this.email,
    required this.role,
    required this.badgeColor,
    this.careerLevel = 'Junior Staff (បុគ្គលិកកម្រិតដំបូង)',
    this.targetCareerLevel = 'Team Leader (ប្រធានក្រុមការងារ)',
    this.organization = 'BBU Innovation Co., Ltd.',
    this.department = 'Marketing & Operations',
    this.phone = '+855 12 889 900',
    this.currentSalary = 450.0,
    this.targetSalary = 1200.0,
    this.skills = const ['Digital Marketing', 'Data Analytics', 'Team Leadership'],
    this.bio = 'អ្នកជំនាញផ្នែកទីផ្សារឌីជីថល និងប្រតិបត្តិការអាជីវកម្ម',
    this.photoUrl,
    this.xpPoints = 350,
    this.completedLessonsCount = 5,
    this.isSuspended = false,
    required this.lastActive,
  });

  AdminUserEntry copyWith({
    String? name,
    String? email,
    String? role,
    Color? badgeColor,
    String? careerLevel,
    String? targetCareerLevel,
    String? organization,
    String? department,
    String? phone,
    double? currentSalary,
    double? targetSalary,
    List<String>? skills,
    String? bio,
    String? photoUrl,
    int? xpPoints,
    int? completedLessonsCount,
    bool? isSuspended,
    DateTime? lastActive,
  }) {
    return AdminUserEntry(
      id: id,
      name: name ?? this.name,
      email: email ?? this.email,
      role: role ?? this.role,
      badgeColor: badgeColor ?? this.badgeColor,
      careerLevel: careerLevel ?? this.careerLevel,
      targetCareerLevel: targetCareerLevel ?? this.targetCareerLevel,
      organization: organization ?? this.organization,
      department: department ?? this.department,
      phone: phone ?? this.phone,
      currentSalary: currentSalary ?? this.currentSalary,
      targetSalary: targetSalary ?? this.targetSalary,
      skills: skills ?? this.skills,
      bio: bio ?? this.bio,
      photoUrl: photoUrl ?? this.photoUrl,
      xpPoints: xpPoints ?? this.xpPoints,
      completedLessonsCount: completedLessonsCount ?? this.completedLessonsCount,
      isSuspended: isSuspended ?? this.isSuspended,
      lastActive: lastActive ?? this.lastActive,
    );
  }
}

/// Represents a quiz attempt submitted by a learner from frontend
class QuizSubmissionEntry {
  final String id;
  final String userId;
  final String userName;
  final String userEmail;
  final String courseId;
  final String courseTitleKh;
  final String lessonId;
  final String lessonTitleKh;
  final String question;
  final int selectedOptionIndex;
  final String selectedOptionText;
  final bool isCorrect;
  final String? explanation;
  final String? notes;
  final DateTime submittedAt;

  const QuizSubmissionEntry({
    required this.id,
    required this.userId,
    required this.userName,
    required this.userEmail,
    required this.courseId,
    required this.courseTitleKh,
    required this.lessonId,
    required this.lessonTitleKh,
    required this.question,
    required this.selectedOptionIndex,
    required this.selectedOptionText,
    required this.isCorrect,
    this.explanation,
    this.notes,
    required this.submittedAt,
  });
}

/// Represents lesson completion progress by a user
class LessonProgressEntry {
  final String id;
  final String userId;
  final String userName;
  final String courseId;
  final String lessonId;
  final String lessonTitleKh;
  final String? notes;
  final DateTime completedAt;

  const LessonProgressEntry({
    required this.id,
    required this.userId,
    required this.userName,
    required this.courseId,
    required this.lessonId,
    required this.lessonTitleKh,
    this.notes,
    required this.completedAt,
  });
}

/// Represents a CV generated or submitted from the frontend CV Builder
class CvSubmissionEntry {
  final String id;
  final String userId;
  final String userName;
  final String userEmail;
  final String phone;
  final String careerLevel;
  final String targetTitle;
  final String summary;
  final List<String> skills;
  final String experienceXyz;
  final String education;
  final String salaryExpectation;
  final String fullCvText;
  final DateTime submittedAt;
  final String status; // 'New', 'Reviewed', 'Shortlisted', 'Hired'
  final int? aiScore;
  final String? aiSummary;
  final List<String>? suggestedQuestions;
  final bool telegramSent;

  const CvSubmissionEntry({
    required this.id,
    required this.userId,
    required this.userName,
    required this.userEmail,
    required this.phone,
    required this.careerLevel,
    required this.targetTitle,
    required this.summary,
    required this.skills,
    required this.experienceXyz,
    required this.education,
    required this.salaryExpectation,
    required this.fullCvText,
    required this.submittedAt,
    this.status = 'New',
    this.aiScore,
    this.aiSummary,
    this.suggestedQuestions,
    this.telegramSent = false,
  });

  CvSubmissionEntry copyWith({
    String? status,
    int? aiScore,
    String? aiSummary,
    List<String>? suggestedQuestions,
    bool? telegramSent,
  }) {
    return CvSubmissionEntry(
      id: id,
      userId: userId,
      userName: userName,
      userEmail: userEmail,
      phone: phone,
      careerLevel: careerLevel,
      targetTitle: targetTitle,
      summary: summary,
      skills: skills,
      experienceXyz: experienceXyz,
      education: education,
      salaryExpectation: salaryExpectation,
      fullCvText: fullCvText,
      submittedAt: submittedAt,
      status: status ?? this.status,
      aiScore: aiScore ?? this.aiScore,
      aiSummary: aiSummary ?? this.aiSummary,
      suggestedQuestions: suggestedQuestions ?? this.suggestedQuestions,
      telegramSent: telegramSent ?? this.telegramSent,
    );
  }
}

/// System-wide audit log of actions performed across frontend and backend
class AuditLogEntry {
  final String id;
  final String action;
  final String operator;
  final String role;
  final DateTime timestamp;
  final String tag;
  final Color color;
  final String? details;

  const AuditLogEntry({
    required this.id,
    required this.action,
    required this.operator,
    required this.role,
    required this.timestamp,
    required this.tag,
    required this.color,
    this.details,
  });
}

/// Central state notifier connecting Frontend and Backend in real-time
class AppDataSyncNotifier extends ChangeNotifier {
  static const _uuid = Uuid();

  // 1. Current Active Profile in Frontend
  ExtendedUserProfile _currentUserProfile = const ExtendedUserProfile(
    id: 'usr-vibol-01',
    email: 'vibol.demo@lerngdomnaeng.com',
    displayName: 'សុខ វិបុល',
    photoUrl: 'https://images.unsplash.com/photo-1534528741775-53994a69daeb?w=150&auto=format&fit=crop&q=80',
    phone: '+855 12 889 900',
    bio: 'អ្នកជំនាញផ្នែកទីផ្សារឌីជីថល និងប្រតិបត្តិការអាជីវកម្ម ដែលមានបទពិសោធន៍ជំរុញកំណើនលក់ និងដឹកនាំក្រុមការងារប្រកបដោយប្រសិទ្ធភាព។',
    careerLevel: 'Junior Staff (បុគ្គលិកកម្រិតដំបូង)',
    targetCareerLevel: 'Team Leader (ប្រធានក្រុមការងារ)',
    companyContext: 'SME Company',
    organization: 'BBU Innovation Co., Ltd.',
    department: 'Marketing & Business Development',
    skills: [
      'Digital Marketing',
      'Data Analytics',
      'Team Leadership',
      'Negotiation',
      'Eisenhower Matrix',
      'Root Cause Analysis',
    ],
    currentSalaryUsd: 450.0,
    targetSalaryUsd: 1200.0,
    education: 'បរិញ្ញាបត្រ គ្រប់គ្រងពាណិជ្ជកម្ម (BBA) — សាកលវិទ្យាល័យបៀលប្រាយ (BBU)',
    yearsOfExperience: '២ ឆ្នាំ',
  );

  // 2. All Registered Users (Backend User Management)
  late List<AdminUserEntry> _users;

  // 3. Courses Catalog (Shared between Learner Catalog & Admin Courses CRUD)
  late List<CourseModel> _courses;

  // 4. Course Lessons
  late Map<String, List<LessonModel>> _courseLessons;

  // 5. Quiz Submissions (Frontend -> Backend live)
  final List<QuizSubmissionEntry> _quizSubmissions = [];

  // 6. Lesson Progress / Completions (Frontend -> Backend live)
  final List<LessonProgressEntry> _lessonCompletions = [];

  // 7. CV Submissions (Frontend CV Builder -> Backend Candidates Pool)
  final List<CvSubmissionEntry> _cvSubmissions = [];

  // 8. Audit Logs
  final List<AuditLogEntry> _auditLogs = [];

  // 9. B2B Organizations
  late List<Map<String, dynamic>> _organizations;

  // 10. Database sync status
  DateTime _lastDbSyncTime = DateTime.now();
  bool _isDbSynced = true;

  AppDataSyncNotifier() {
    _initializeData();
  }

  ExtendedUserProfile get currentUserProfile => _currentUserProfile;
  List<AdminUserEntry> get users => List.unmodifiable(_users);
  List<CourseModel> get courses => List.unmodifiable(_courses);
  Map<String, List<LessonModel>> get courseLessons => _courseLessons;
  List<QuizSubmissionEntry> get quizSubmissions => List.unmodifiable(_quizSubmissions);
  List<LessonProgressEntry> get lessonCompletions => List.unmodifiable(_lessonCompletions);
  List<CvSubmissionEntry> get cvSubmissions => List.unmodifiable(_cvSubmissions);
  List<AuditLogEntry> get auditLogs => List.unmodifiable(_auditLogs);
  List<Map<String, dynamic>> get organizations => List.unmodifiable(_organizations);
  DateTime get lastDbSyncTime => _lastDbSyncTime;
  bool get isDbSynced => _isDbSynced;

  void _initializeData() {
    // Initialize Courses from CourseCatalogData
    _courses = List.from(CourseCatalogData.allCourses);
    _courseLessons = Map.from(CourseCatalogData.detailedLessons);

    // Initialize Registered Users
    _users = [
      AdminUserEntry(
        id: 'usr-vibol-01',
        name: 'សុខ វិបុល',
        email: 'vibol.demo@lerngdomnaeng.com',
        role: 'Learner',
        badgeColor: const Color(0xFF0F5A47),
        careerLevel: 'Junior Staff (បុគ្គលិកកម្រិតដំបូង)',
        targetCareerLevel: 'Team Leader (ប្រធានក្រុមការងារ)',
        organization: 'BBU Innovation Co., Ltd.',
        department: 'Marketing & Business Development',
        phone: '+855 12 889 900',
        currentSalary: 450.0,
        targetSalary: 1200.0,
        skills: ['Digital Marketing', 'Data Analytics', 'Team Leadership'],
        bio: 'អ្នកជំនាញផ្នែកទីផ្សារឌីជីថល និងប្រតិបត្តិការអាជីវកម្ម',
        photoUrl: 'https://images.unsplash.com/photo-1534528741775-53994a69daeb?w=150&auto=format&fit=crop&q=80',
        xpPoints: 480,
        completedLessonsCount: 6,
        lastActive: DateTime.now().subtract(const Duration(minutes: 5)),
      ),
      AdminUserEntry(
        id: 'usr-admin-01',
        name: 'សុខ វិបុល (Admin)',
        email: 'admin@lerngdomnaeng.com',
        role: 'Platform Admin',
        badgeColor: const Color(0xFFD32F2F),
        careerLevel: 'Executive (ថ្នាក់ដឹកនាំជាន់ខ្ពស់)',
        organization: 'Lerng Domnaeng EdTech',
        lastActive: DateTime.now().subtract(const Duration(minutes: 1)),
      ),
      AdminUserEntry(
        id: 'usr-inst-01',
        name: 'លោកគ្រូ សុជាតិ វណ្ណារ៉ា',
        email: 'vannara@lerngdomnaeng.com',
        role: 'Instructor',
        badgeColor: const Color(0xFF1E88E5),
        careerLevel: 'Senior Specialist',
        organization: 'Lerng Domnaeng Academy',
        lastActive: DateTime.now().subtract(const Duration(hours: 2)),
      ),
      AdminUserEntry(
        id: 'usr-inst-02',
        name: 'អ្នកគ្រូ ចាន់ថុល សុរិយា',
        email: 'chanthol@lerngdomnaeng.com',
        role: 'Instructor',
        badgeColor: const Color(0xFF1E88E5),
        careerLevel: 'Head of Department',
        organization: 'Lerng Domnaeng Academy',
        lastActive: DateTime.now().subtract(const Duration(hours: 4)),
      ),
      AdminUserEntry(
        id: 'usr-org-01',
        name: 'រស្មី សីហា (HR Director)',
        email: 'seyha@khmersme.com',
        role: 'Org Admin',
        badgeColor: const Color(0xFFC59B27),
        careerLevel: 'Director',
        organization: 'Khmer SME Logistics Co., Ltd.',
        lastActive: DateTime.now().subtract(const Duration(hours: 6)),
      ),
      AdminUserEntry(
        id: 'usr-learner-02',
        name: 'គឹមសួរ ចាន់ថា',
        email: 'kimsour@learner.com',
        role: 'Learner',
        badgeColor: const Color(0xFF0F5A47),
        careerLevel: 'Intern (កម្មសិក្សាការី)',
        organization: 'Angkor Digital Agency',
        xpPoints: 220,
        completedLessonsCount: 3,
        lastActive: DateTime.now().subtract(const Duration(days: 1)),
      ),
      AdminUserEntry(
        id: 'usr-learner-03',
        name: 'កល្យាណ ទេពី',
        email: 'kalyan@learner.com',
        role: 'Learner',
        badgeColor: const Color(0xFF0F5A47),
        careerLevel: 'Supervisor (អ្នកគ្រប់គ្រងផ្ទាល់)',
        organization: 'Kirirom Food Processing',
        xpPoints: 850,
        completedLessonsCount: 10,
        lastActive: DateTime.now().subtract(const Duration(days: 2)),
      ),
    ];

    // Initialize Organizations
    _organizations = [
      {
        'id': 'org-1',
        'name': 'ក្រុមហ៊ុន Khmer SME Logistics Co., Ltd.',
        'industry': 'Logistics & Supply Chain',
        'members': 28,
        'completion': 0.82,
        'assignedCourse': 'សិល្បៈនៃការចាត់ចែងការងារ និងការផ្ដល់ Feedback',
        'tier': 'Enterprise Plan',
      },
      {
        'id': 'org-2',
        'name': 'Angkor Digital Creative Agency',
        'industry': 'Marketing & Media',
        'members': 15,
        'completion': 0.94,
        'assignedCourse': 'ទំនាក់ទំនង និងសីលធម៌ការងារប្រកបដោយវិជ្ជាជីវៈ',
        'tier': 'SME Pro',
      },
      {
        'id': 'org-3',
        'name': 'សហគ្រាស Kirirom Food Processing',
        'industry': 'Manufacturing & Agriculture',
        'members': 42,
        'completion': 0.68,
        'assignedCourse': 'EQ និងការត្រិះរិះពិចារណាដោះស្រាយបញ្ហាការងារ',
        'tier': 'Enterprise Plan',
      },
      {
        'id': 'org-4',
        'name': 'Battambang FinTech Solutions',
        'industry': 'Financial Technology',
        'members': 19,
        'completion': 0.89,
        'assignedCourse': 'ការដោះស្រាយជម្លោះ និងការសន្ទនាស្មុគស្មាញ',
        'tier': 'SME Pro',
      },
    ];

    // Seed some initial quiz submissions
    _quizSubmissions.addAll([
      QuizSubmissionEntry(
        id: 'quiz-sub-01',
        userId: 'usr-vibol-01',
        userName: 'សុខ វិបុល',
        userEmail: 'vibol.demo@lerngdomnaeng.com',
        courseId: 'course-intern-comm',
        courseTitleKh: 'ទំនាក់ទំនង និងសីលធម៌ការងារប្រកបដោយវិជ្ជាជីវៈ',
        lessonId: 'intern-comm-01',
        lessonTitleKh: 'មូលដ្ឋានគ្រឹះនៃការប្រាស្រ័យទាក់ទងបែបវិជ្ជាជីវៈ',
        question: 'នៅពេលទទួលបានការចាត់ចែងការងារមិនច្បាស់លាស់ពីប្រធាន តើអ្នកគួរធ្វើដូចម្តេច?',
        selectedOptionIndex: 1,
        selectedOptionText: 'សួរបញ្ជាក់ភ្លាមៗដោយសុភាព និងសង្ខេបចំណុចសំខាន់ៗដែលបានយល់ឡើងវិញ',
        isCorrect: true,
        explanation: 'ការសួរបញ្ជាក់ភ្លាមៗ (Active Clarification) ការពារការយល់ច្រឡំ និងសន្សំសំចៃពេលវេលា។',
        notes: 'បានអនុវត្តភ្លាមៗនៅព្រឹកមិញជាមួយប្រធានផ្នែក ឃើញថាការងារដើរលឿនជាងមុនច្រើន!',
        submittedAt: DateTime.now().subtract(const Duration(minutes: 45)),
      ),
      QuizSubmissionEntry(
        id: 'quiz-sub-02',
        userId: 'usr-learner-02',
        userName: 'គឹមសួរ ចាន់ថា',
        userEmail: 'kimsour@learner.com',
        courseId: 'course-intern-comm',
        courseTitleKh: 'ទំនាក់ទំនង និងសីលធម៌ការងារប្រកបដោយវិជ្ជាជីវៈ',
        lessonId: 'intern-comm-02',
        lessonTitleKh: 'ការសរសេរអ៊ីមែល និងសារទំនាក់ទំនងការងារផ្លូវការ',
        question: 'តើចំណងជើងអ៊ីមែល (Email Subject Line) បែបណាដែលត្រឹមត្រូវតាមស្តង់ដារ?',
        selectedOptionIndex: 0,
        selectedOptionText: '[ACTION REQUIRED] របាយការណ៍សង្ខេបលទ្ធផលលក់ Q3 - ផ្នែកទីផ្សារ',
        isCorrect: true,
        explanation: 'ចំណងជើងច្បាស់លាស់មាន Tag សកម្មភាព និងប្រធានបទ ជួយឱ្យអ្នកទទួលឆាប់យល់។',
        submittedAt: DateTime.now().subtract(const Duration(hours: 3)),
      ),
    ]);

    // Seed initial CV submission
    _cvSubmissions.add(
      CvSubmissionEntry(
        id: 'cv-sub-01',
        userId: 'usr-vibol-01',
        userName: 'សុខ វិបុល',
        userEmail: 'vibol.demo@lerngdomnaeng.com',
        phone: '+855 12 889 900',
        careerLevel: 'Junior Staff (បុគ្គលិកកម្រិតដំបូង)',
        targetTitle: 'Team Leader (ប្រធានក្រុមការងារ)',
        summary: 'អ្នកជំនាញផ្នែកទីផ្សារឌីជីថល និងប្រតិបត្តិការអាជីវកម្ម ដែលមានបទពិសោធន៍ជំរុញកំណើនលក់ និងដឹកនាំក្រុមការងារប្រកបដោយប្រសិទ្ធភាព។',
        skills: ['Digital Marketing', 'Data Analytics', 'Team Leadership', 'Negotiation', 'Eisenhower Matrix'],
        experienceXyz: '• សម្រេចបានកំណើនលក់ ២៥% ក្នុងរយៈពេល ៦ ខែ (X) តាមរយៈការរៀបចំយុទ្ធសាស្ត្រទីផ្សារឌីជីថលថ្មី (Z) ដែលបង្កើតចំណូលបន្ថែម \$15,000 (Y)។\n• កាត់បន្ថយពេលវេលាដំណើរការឯកសារ ៤០% (X) តាមរយៈការបង្កើតទម្រង់ស្វ័យប្រវត្តលើ Google Sheets & Automation Tools (Z) សន្សំបាន ៥ ម៉ោងក្នុងមួយសប្តាហ៍ (Y)។\n• ដឹកនាំ និងបណ្តុះបណ្តាលសមាជិកក្រុមថ្មី ៣ នាក់ (Z) ឱ្យសម្រេច KPI លើសពី ៩០% ក្នុងខែដំបូងនៃការសាកល្បងការងារ (X)។',
        education: 'បរិញ្ញាបត្រ គ្រប់គ្រងពាណិជ្ជកម្ម (BBA) — សាកលវិទ្យាល័យបៀលប្រាយ (BBU)',
        salaryExpectation: '\$1,200 / ខែ',
        fullCvText: 'SUK VIBOL - CV\nTarget: Team Leader\nEmail: vibol.demo@lerngdomnaeng.com',
        submittedAt: DateTime.now().subtract(const Duration(hours: 1)),
        status: 'New',
      ),
    );

    // Seed initial Audit Logs
    _auditLogs.addAll([
      AuditLogEntry(
        id: 'log-1',
        action: 'ប្រព័ន្ធបានចាប់ផ្ដើម និងតភ្ជាប់ Frontend ទៅកាន់ Backend រួចរាល់ (Full Data Sync Active)',
        operator: 'System Engine',
        role: 'Core System',
        timestamp: DateTime.now().subtract(const Duration(minutes: 10)),
        tag: 'SYSTEM',
        color: const Color(0xFF0F5A47),
      ),
      AuditLogEntry(
        id: 'log-2',
        action: 'អ្នកប្រើប្រាស់ សុខ វិបុល បានបញ្ជូន CV តាម Google XYZ Formula ទៅកាន់ Backend',
        operator: 'សុខ វិបុល',
        role: 'Learner',
        timestamp: DateTime.now().subtract(const Duration(hours: 1)),
        tag: 'CV_SUBMIT',
        color: const Color(0xFF6A1B9A),
      ),
      AuditLogEntry(
        id: 'log-3',
        action: 'សិស្ស សុខ វិបុល បានឆ្លើយត្រូវសំណួរតេស្តមេរៀន មូលដ្ឋានគ្រឹះនៃការប្រាស្រ័យទាក់ទង (+50 XP)',
        operator: 'សុខ វិបុល',
        role: 'Learner',
        timestamp: DateTime.now().subtract(const Duration(minutes: 45)),
        tag: 'QUIZ_PASS',
        color: const Color(0xFF2E7D32),
      ),
    ]);
  }

  // ==========================================================
  // 1. FRONTEND USER PROFILE SYNC
  // ==========================================================
  void updateUserProfile(ExtendedUserProfile updatedProfile) {
    _currentUserProfile = updatedProfile;

    // Update in users list as well
    final index = _users.indexWhere((u) => u.id == updatedProfile.id || u.email == updatedProfile.email);
    if (index != -1) {
      _users[index] = _users[index].copyWith(
        name: updatedProfile.displayName,
        email: updatedProfile.email,
        phone: updatedProfile.phone,
        careerLevel: updatedProfile.careerLevel,
        targetCareerLevel: updatedProfile.targetCareerLevel,
        organization: updatedProfile.organization,
        department: updatedProfile.department,
        currentSalary: updatedProfile.currentSalaryUsd,
        targetSalary: updatedProfile.targetSalaryUsd,
        skills: updatedProfile.skills,
        bio: updatedProfile.bio,
        photoUrl: updatedProfile.photoUrl,
        lastActive: DateTime.now(),
      );
    } else {
      _users.insert(
        0,
        AdminUserEntry(
          id: updatedProfile.id,
          name: updatedProfile.displayName,
          email: updatedProfile.email,
          role: 'Learner',
          badgeColor: const Color(0xFF0F5A47),
          careerLevel: updatedProfile.careerLevel,
          targetCareerLevel: updatedProfile.targetCareerLevel,
          organization: updatedProfile.organization,
          department: updatedProfile.department,
          phone: updatedProfile.phone,
          currentSalary: updatedProfile.currentSalaryUsd,
          targetSalary: updatedProfile.targetSalaryUsd,
          skills: updatedProfile.skills,
          bio: updatedProfile.bio,
          photoUrl: updatedProfile.photoUrl,
          lastActive: DateTime.now(),
        ),
      );
    }

    _addAuditLog(
      action: 'អ្នកប្រើប្រាស់ ${updatedProfile.displayName} បានកែសម្រួលគណនី (Profile Updated) ក្នុង Frontend',
      operator: updatedProfile.displayName,
      role: 'Learner',
      tag: 'USER_UPDATE',
      color: const Color(0xFF1E88E5),
      details: 'Career: ${updatedProfile.careerLevel} -> Target: ${updatedProfile.targetCareerLevel}',
    );

    _isDbSynced = false;
    notifyListeners();
  }

  // ==========================================================
  // 2. USER REGISTRATION & ROLE MANAGEMENT
  // ==========================================================
  void registerNewUser({
    required String name,
    required String email,
    required CareerLevel level,
  }) {
    final newUser = AdminUserEntry(
      id: 'usr-${_uuid.v4().substring(0, 8)}',
      name: name,
      email: email,
      role: 'Learner',
      badgeColor: const Color(0xFF0F5A47),
      careerLevel: level.khLabel,
      lastActive: DateTime.now(),
    );

    _users.insert(0, newUser);

    _addAuditLog(
      action: 'សមាជិកថ្មីបានចុះឈ្មោះ៖ $name ($email)',
      operator: name,
      role: 'Learner',
      tag: 'AUTH_REGISTER',
      color: const Color(0xFF2E7D32),
    );

    _isDbSynced = false;
    notifyListeners();
  }

  void updateUserRole(String userId, String newRole) {
    final idx = _users.indexWhere((u) => u.id == userId);
    if (idx != -1) {
      final oldUser = _users[idx];
      Color badgeColor = const Color(0xFF0F5A47);
      if (newRole == 'Platform Admin') badgeColor = const Color(0xFFD32F2F);
      if (newRole == 'Instructor') badgeColor = const Color(0xFF1E88E5);
      if (newRole == 'Org Admin') badgeColor = const Color(0xFFC59B27);

      _users[idx] = oldUser.copyWith(role: newRole, badgeColor: badgeColor);

      _addAuditLog(
        action: 'បានផ្លាស់ប្ដូរតួនាទី ${oldUser.name} ទៅជា $newRole',
        operator: 'Admin',
        role: 'Platform Admin',
        tag: 'ROLE_CHANGE',
        color: const Color(0xFFE65100),
      );

      _isDbSynced = false;
      notifyListeners();
    }
  }

  void toggleUserStatus(String userId) {
    final idx = _users.indexWhere((u) => u.id == userId);
    if (idx != -1) {
      final old = _users[idx];
      final newStatus = !old.isSuspended;
      _users[idx] = old.copyWith(isSuspended: newStatus);

      _addAuditLog(
        action: newStatus
            ? 'បានផ្អាកដំណើរការគណនី (Suspend): ${old.name}'
            : 'បានបើកដំណើរការគណនីឡើងវិញ (Activate): ${old.name}',
        operator: 'Admin',
        role: 'Platform Admin',
        tag: 'USER_STATUS',
        color: newStatus ? Colors.red : Colors.green,
      );

      _isDbSynced = false;
      notifyListeners();
    }
  }

  // ==========================================================
  // 3. QUIZ SUBMISSIONS & LESSON PROGRESS (FRONTEND -> BACKEND)
  // ==========================================================
  void recordQuizSubmission({
    required String courseId,
    required String lessonId,
    required String question,
    required int selectedOptionIndex,
    required String selectedOptionText,
    required bool isCorrect,
    String? explanation,
    String? notes,
  }) {
    final course = _courses.firstWhere(
      (c) => c.id == courseId,
      orElse: () => _courses.first,
    );
    final lessons = _courseLessons[courseId] ?? [];
    final lesson = lessons.firstWhere(
      (l) => l.id == lessonId,
      orElse: () => lessons.isNotEmpty ? lessons.first : const LessonModel(
        id: 'unknown',
        courseId: 'unknown',
        moduleId: 'unknown',
        orderIndex: 1,
        titleKh: 'មេរៀនទូទៅ',
        titleEn: 'General Lesson',
        type: LessonType.text,
      ),
    );

    final submission = QuizSubmissionEntry(
      id: 'quiz-sub-${_uuid.v4().substring(0, 8)}',
      userId: _currentUserProfile.id,
      userName: _currentUserProfile.displayName,
      userEmail: _currentUserProfile.email,
      courseId: courseId,
      courseTitleKh: course.titleKh,
      lessonId: lessonId,
      lessonTitleKh: lesson.titleKh,
      question: question,
      selectedOptionIndex: selectedOptionIndex,
      selectedOptionText: selectedOptionText,
      isCorrect: isCorrect,
      explanation: explanation,
      notes: notes,
      submittedAt: DateTime.now(),
    );

    _quizSubmissions.insert(0, submission);

    // Update user XP & stats
    final userIdx = _users.indexWhere((u) => u.id == _currentUserProfile.id);
    if (userIdx != -1) {
      final currentXp = _users[userIdx].xpPoints;
      _users[userIdx] = _users[userIdx].copyWith(
        xpPoints: currentXp + (isCorrect ? 50 : 10),
        lastActive: DateTime.now(),
      );
    }

    _addAuditLog(
      action: 'សិស្ស ${_currentUserProfile.displayName} បានឆ្លើយតេស្ត៖ ${lesson.titleKh} (${isCorrect ? '✅ ត្រឹមត្រូវ (+50 XP)' : '❌ មិនទាន់ត្រូវ'})',
      operator: _currentUserProfile.displayName,
      role: 'Learner',
      tag: isCorrect ? 'QUIZ_PASS' : 'QUIZ_ATTEMPT',
      color: isCorrect ? const Color(0xFF2E7D32) : const Color(0xFFD32F2F),
      details: 'ចម្លើយ៖ $selectedOptionText',
    );

    _isDbSynced = false;
    notifyListeners();
  }

  void recordLessonCompletion({
    required String courseId,
    required String lessonId,
    String? notes,
  }) {
    final lessons = _courseLessons[courseId] ?? [];
    final lesson = lessons.firstWhere((l) => l.id == lessonId, orElse: () => lessons.first);

    final progress = LessonProgressEntry(
      id: 'prog-${_uuid.v4().substring(0, 8)}',
      userId: _currentUserProfile.id,
      userName: _currentUserProfile.displayName,
      courseId: courseId,
      lessonId: lessonId,
      lessonTitleKh: lesson.titleKh,
      notes: notes,
      completedAt: DateTime.now(),
    );

    _lessonCompletions.insert(0, progress);

    // Update user completed lessons count
    final userIdx = _users.indexWhere((u) => u.id == _currentUserProfile.id);
    if (userIdx != -1) {
      final currentCompleted = _users[userIdx].completedLessonsCount;
      final currentXp = _users[userIdx].xpPoints;
      _users[userIdx] = _users[userIdx].copyWith(
        completedLessonsCount: currentCompleted + 1,
        xpPoints: currentXp + 100,
        lastActive: DateTime.now(),
      );
    }

    _addAuditLog(
      action: 'សិស្ស ${_currentUserProfile.displayName} បានបញ្ចប់មេរៀន៖ ${lesson.titleKh} (+100 XP)',
      operator: _currentUserProfile.displayName,
      role: 'Learner',
      tag: 'LESSON_COMPLETE',
      color: const Color(0xFF0F5A47),
    );

    _isDbSynced = false;
    notifyListeners();
  }

  // ==========================================================
  // 4. CV BUILDER SUBMISSIONS (FRONTEND -> BACKEND)
  // ==========================================================
  void submitCv({
    required String targetTitle,
    required String summary,
    required List<String> skills,
    required String experienceXyz,
    required String education,
    required String salaryExpectation,
    required String fullCvText,
    String? candidateName,
    String? candidateEmail,
    String? candidatePhone,
    String? candidateLevel,
    int? aiScore,
    String? aiSummary,
    List<String>? suggestedQuestions,
    bool telegramSent = false,
  }) {
    final cv = CvSubmissionEntry(
      id: 'cv-sub-${_uuid.v4().substring(0, 8)}',
      userId: _currentUserProfile.id,
      userName: candidateName ?? _currentUserProfile.displayName,
      userEmail: candidateEmail ?? _currentUserProfile.email,
      phone: candidatePhone ?? _currentUserProfile.phone,
      careerLevel: candidateLevel ?? _currentUserProfile.careerLevel,
      targetTitle: targetTitle,
      summary: summary,
      skills: skills,
      experienceXyz: experienceXyz,
      education: education,
      salaryExpectation: salaryExpectation,
      fullCvText: fullCvText,
      submittedAt: DateTime.now(),
      status: 'New',
      aiScore: aiScore,
      aiSummary: aiSummary,
      suggestedQuestions: suggestedQuestions,
      telegramSent: telegramSent,
    );

    _cvSubmissions.insert(0, cv);

    final aiTag = aiScore != null ? ' | AI Score: $aiScore/100' : '';
    final tgTag = telegramSent ? ' | ✈️ Telegram Alert Sent' : '';

    _addAuditLog(
      action: 'បេក្ខជន ${_currentUserProfile.displayName} បានបញ្ជូន CV សម្រាប់តំណែង $targetTitle ទៅកាន់ Backend$aiTag$tgTag',
      operator: _currentUserProfile.displayName,
      role: 'Learner',
      tag: 'CV_SUBMIT',
      color: const Color(0xFF6A1B9A),
      details: 'ជំនាញ៖ ${skills.join(', ')}',
    );

    _isDbSynced = false;
    notifyListeners();
  }

  void updateCvStatus(String cvId, String newStatus) {
    final idx = _cvSubmissions.indexWhere((c) => c.id == cvId);
    if (idx != -1) {
      final old = _cvSubmissions[idx];
      _cvSubmissions[idx] = old.copyWith(status: newStatus);

      _addAuditLog(
        action: 'បានប្តូរស្ថានភាព CV របស់ ${old.userName} ទៅជា $newStatus',
        operator: 'HR/Admin',
        role: 'Org Admin',
        tag: 'CV_STATUS',
        color: const Color(0xFF6A1B9A),
      );

      _isDbSynced = false;
      notifyListeners();
    }
  }

  // ==========================================================
  // 5. COURSES CRUD (ADMIN BACKEND -> FRONTEND CATALOG)
  // ==========================================================
  void addCourse({
    required String titleKh,
    required String titleEn,
    required String descriptionKh,
    required String descriptionEn,
    required CareerLevel targetLevel,
    required String category,
    required String instructorName,
    int estimatedMinutes = 120,
    List<LessonModel> initialLessons = const [],
  }) {
    final courseId = 'course-${_uuid.v4().substring(0, 8)}';
    final newCourse = CourseModel(
      id: courseId,
      titleKh: titleKh,
      titleEn: titleEn,
      descriptionKh: descriptionKh,
      descriptionEn: descriptionEn,
      targetLevel: targetLevel,
      category: category,
      thumbnailUrl: 'https://images.unsplash.com/photo-1552664730-d307ca884978?w=800&auto=format&fit=crop&q=80',
      instructorName: instructorName,
      totalLessons: initialLessons.isNotEmpty ? initialLessons.length : 10,
      estimatedMinutes: estimatedMinutes,
      isPublished: true,
      createdAt: DateTime.now(),
    );

    _courses.add(newCourse);
    _courseLessons[courseId] = initialLessons.isNotEmpty
        ? initialLessons
        : [
            LessonModel(
              id: '$courseId-l01',
              courseId: courseId,
              moduleId: 'mod-1',
              orderIndex: 1,
              titleKh: 'មេរៀនទី ១៖ សេចក្តីផ្តើម និងផែនទីបង្ហាញផ្លូវ',
              titleEn: 'Lesson 1: Introduction & Roadmap',
              type: LessonType.text,
              shortExplanation: 'ការយល់ដឹងអំពីគោលបំណង និងលទ្ធផលរំពឹងទុកនៃវគ្គសិក្សា។',
            ),
          ];

    _addAuditLog(
      action: 'បានបង្កើតវគ្គសិក្សាថ្មី៖ $titleKh ($category)',
      operator: 'Admin',
      role: 'Platform Admin',
      tag: 'COURSE_CREATE',
      color: const Color(0xFF0F5A47),
    );

    _isDbSynced = false;
    notifyListeners();
  }

  void updateCourse({
    required String courseId,
    required String titleKh,
    required String titleEn,
    required String descriptionKh,
    required CareerLevel targetLevel,
    required String category,
    required String instructorName,
  }) {
    final idx = _courses.indexWhere((c) => c.id == courseId);
    if (idx != -1) {
      final old = _courses[idx];
      _courses[idx] = CourseModel(
        id: courseId,
        titleKh: titleKh,
        titleEn: titleEn,
        descriptionKh: descriptionKh,
        descriptionEn: old.descriptionEn,
        targetLevel: targetLevel,
        category: category,
        thumbnailUrl: old.thumbnailUrl,
        instructorName: instructorName,
        totalLessons: old.totalLessons,
        estimatedMinutes: old.estimatedMinutes,
        isPublished: old.isPublished,
        createdAt: old.createdAt,
      );

      _addAuditLog(
        action: 'បានកែសម្រួលវគ្គសិក្សា៖ $titleKh',
        operator: 'Admin',
        role: 'Platform Admin',
        tag: 'COURSE_UPDATE',
        color: const Color(0xFF1E88E5),
      );

      _isDbSynced = false;
      notifyListeners();
    }
  }

  void deleteCourse(String courseId) {
    final idx = _courses.indexWhere((c) => c.id == courseId);
    if (idx != -1) {
      final name = _courses[idx].titleKh;
      _courses.removeAt(idx);
      _courseLessons.remove(courseId);

      _addAuditLog(
        action: 'បានលុបវគ្គសិក្សា៖ $name',
        operator: 'Admin',
        role: 'Platform Admin',
        tag: 'COURSE_DELETE',
        color: const Color(0xFFD32F2F),
      );

      _isDbSynced = false;
      notifyListeners();
    }
  }

  void togglePublishCourse(String courseId) {
    final idx = _courses.indexWhere((c) => c.id == courseId);
    if (idx != -1) {
      final old = _courses[idx];
      final newStatus = !old.isPublished;
      _courses[idx] = CourseModel(
        id: old.id,
        titleKh: old.titleKh,
        titleEn: old.titleEn,
        descriptionKh: old.descriptionKh,
        descriptionEn: old.descriptionEn,
        targetLevel: old.targetLevel,
        category: old.category,
        thumbnailUrl: old.thumbnailUrl,
        instructorName: old.instructorName,
        totalLessons: old.totalLessons,
        estimatedMinutes: old.estimatedMinutes,
        isPublished: newStatus,
        createdAt: old.createdAt,
      );

      _addAuditLog(
        action: newStatus
            ? 'បានបោះពុម្ពផ្សាយវគ្គសិក្សា (Publish): ${old.titleKh}'
            : 'បានដកការបោះពុម្ពផ្សាយ (Unpublish): ${old.titleKh}',
        operator: 'Admin',
        role: 'Platform Admin',
        tag: 'COURSE_PUBLISH',
        color: newStatus ? Colors.green : Colors.orange,
      );

      _isDbSynced = false;
      notifyListeners();
    }
  }

  void addLessonToCourse({
    required String courseId,
    required String titleKh,
    required String titleEn,
    required String learningObjectives,
    required String shortExplanation,
  }) {
    final currentList = _courseLessons[courseId] ?? [];
    final newOrder = currentList.length + 1;
    final newLesson = LessonModel(
      id: '$courseId-l0$newOrder',
      courseId: courseId,
      moduleId: 'mod-1',
      orderIndex: newOrder,
      titleKh: titleKh,
      titleEn: titleEn,
      type: LessonType.text,
      learningObjectives: learningObjectives,
      shortExplanation: shortExplanation,
      workplaceStory: 'ឧទាហរណ៍ជាក់ស្ដែងនៅកន្លែងធ្វើការ...',
      practicalExample: 'ការអនុវត្តជាក់ស្ដែង...',
      practicalExercise: 'លំហាត់អនុវត្ត...',
      reflection: 'ការត្រិះរិះពិចារណា...',
      workplaceAction: 'សកម្មភាពប្រចាំថ្ងៃ...',
    );

    currentList.add(newLesson);
    _courseLessons[courseId] = currentList;

    // Update course totalLessons
    final cIdx = _courses.indexWhere((c) => c.id == courseId);
    if (cIdx != -1) {
      final oldC = _courses[cIdx];
      _courses[cIdx] = CourseModel(
        id: oldC.id,
        titleKh: oldC.titleKh,
        titleEn: oldC.titleEn,
        descriptionKh: oldC.descriptionKh,
        descriptionEn: oldC.descriptionEn,
        targetLevel: oldC.targetLevel,
        category: oldC.category,
        thumbnailUrl: oldC.thumbnailUrl,
        instructorName: oldC.instructorName,
        totalLessons: currentList.length,
        estimatedMinutes: oldC.estimatedMinutes + 12,
        isPublished: oldC.isPublished,
        createdAt: oldC.createdAt,
      );
    }

    _addAuditLog(
      action: 'បានបន្ថែមមេរៀនថ្មី៖ $titleKh ក្នុងវគ្គ #$courseId',
      operator: 'Admin',
      role: 'Platform Admin',
      tag: 'LESSON_ADD',
      color: const Color(0xFF0F5A47),
    );

    _isDbSynced = false;
    notifyListeners();
  }

  // ==========================================================
  // 6. REAL-TIME STATS CALCULATION
  // ==========================================================
  Map<String, dynamic> getLiveOverviewStats() {
    int totalLessons = 0;
    _courseLessons.forEach((_, list) => totalLessons += list.length);

    int totalXp = 0;
    for (var u in _users) {
      totalXp += u.xpPoints;
    }

    final activeLearnersCount = _users.where((u) => !u.isSuspended).length;
    final totalQuizzes = _quizSubmissions.length;
    final passedQuizzes = _quizSubmissions.where((q) => q.isCorrect).length;
    final quizPassRate = totalQuizzes > 0 ? ((passedQuizzes / totalQuizzes) * 100).round() : 100;

    return {
      'totalCourses': _courses.length,
      'totalLessons': totalLessons,
      'totalLearners': _users.length,
      'activeLearners': activeLearnersCount,
      'totalQuizzesTaken': totalQuizzes,
      'quizzesPassed': passedQuizzes,
      'quizPassRate': quizPassRate,
      'totalCvSubmissions': _cvSubmissions.length,
      'totalLessonCompletions': _lessonCompletions.length,
      'totalXp': totalXp,
      'completionRate': 78,
    };
  }

  // ==========================================================
  // 7. DATABASE SYNC TRIGGER
  // ==========================================================
  void markDatabaseSynced() {
    _lastDbSyncTime = DateTime.now();
    _isDbSynced = true;

    _addAuditLog(
      action: 'បានធ្វើសមកាលកម្មទិន្នន័យទៅកាន់ Database (SQLite & MySQL) ជោគជ័យ',
      operator: 'System Admin',
      role: 'Platform Admin',
      tag: 'DB_SYNC',
      color: const Color(0xFF2E7D32),
    );

    notifyListeners();
  }

  void _addAuditLog({
    required String action,
    required String operator,
    required String role,
    required String tag,
    required Color color,
    String? details,
  }) {
    _auditLogs.insert(
      0,
      AuditLogEntry(
        id: 'log-${_uuid.v4().substring(0, 8)}',
        action: action,
        operator: operator,
        role: role,
        timestamp: DateTime.now(),
        tag: tag,
        color: color,
        details: details,
      ),
    );
  }

  void logAuditAction(String action, String details, {String tag = 'AI_COACH', Color color = const Color(0xFF6A1B9A)}) {
    _addAuditLog(
      action: action,
      operator: 'AI Agent (គ្រូ AI)',
      role: 'Career Coach Bot',
      tag: tag,
      color: color,
      details: details,
    );
    notifyListeners();
  }
}

/// Global Riverpod Provider for the App Data Sync Service
final appDataSyncProvider = ChangeNotifierProvider<AppDataSyncNotifier>((ref) {
  return AppDataSyncNotifier();
});
