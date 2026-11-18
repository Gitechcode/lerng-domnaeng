enum CareerLevel {
  intern('Intern', 'កម្មសិក្សាការី'),
  junior('Junior', 'បុគ្គលិកកម្រិតដំបូង'),
  senior('Senior', 'បុគ្គលិកជាន់ខ្ពស់'),
  teamLeader('Team Leader', 'ប្រធានក្រុម'),
  supervisor('Supervisor', 'អ្នកគ្រប់គ្រងផ្ទាល់'),
  manager('Manager', 'អ្នកគ្រប់គ្រង'),
  headOfDepartment('Head of Department', 'ប្រធានផ្នែក'),
  director('Director', 'នាយកប្រតិបត្តិ'),
  executive('Executive', 'ថ្នាក់ដឹកនាំជាន់ខ្ពស់'),
  founder('Founder', 'ស្ថាបនិក/ម្ចាស់អាជីវកម្ម');

  final String enLabel;
  final String khLabel;
  const CareerLevel(this.enLabel, this.khLabel);
}

enum UserRole {
  learner('Learner', 'សិស្ស/អ្នករៀន'),
  instructor('Instructor', 'គ្រូបង្រៀន'),
  organizationAdmin('Organization Admin', 'អ្នកគ្រប់គ្រងស្ថាប័ន'),
  platformAdmin('Platform Admin', 'អ្នកគ្រប់គ្រងប្រព័ន្ធ');

  final String enLabel;
  final String khLabel;
  const UserRole(this.enLabel, this.khLabel);
}

class UserModel {
  final String id;
  final String email;
  final String displayName;
  final String? photoUrl;
  final CareerLevel careerLevel;
  final CareerLevel? targetCareerLevel;
  final UserRole role;
  final String? organizationId;
  final String? industry;
  final String? companyContext; // 'SME' or 'Corporate'
  final List<String> learningGoals;
  final String preferredLanguage; // 'km' or 'en'
  final DateTime createdAt;

  const UserModel({
    required this.id,
    required this.email,
    required this.displayName,
    this.photoUrl,
    required this.careerLevel,
    this.targetCareerLevel,
    required this.role,
    this.organizationId,
    this.industry,
    this.companyContext,
    this.learningGoals = const [],
    this.preferredLanguage = 'km',
    required this.createdAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'email': email,
      'displayName': displayName,
      'photoUrl': photoUrl,
      'careerLevel': careerLevel.name,
      'targetCareerLevel': targetCareerLevel?.name,
      'role': role.name,
      'organizationId': organizationId,
      'industry': industry,
      'companyContext': companyContext,
      'learningGoals': learningGoals,
      'preferredLanguage': preferredLanguage,
      'createdAt': createdAt.toIso8601String(),
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map, String id) {
    return UserModel(
      id: id,
      email: map['email'] ?? '',
      displayName: map['displayName'] ?? 'Learner',
      photoUrl: map['photoUrl'],
      careerLevel: CareerLevel.values.firstWhere(
        (e) => e.name == map['careerLevel'],
        orElse: () => CareerLevel.junior,
      ),
      targetCareerLevel: map['targetCareerLevel'] != null
          ? CareerLevel.values.firstWhere(
              (e) => e.name == map['targetCareerLevel'],
              orElse: () => CareerLevel.teamLeader,
            )
          : null,
      role: UserRole.values.firstWhere(
        (e) => e.name == map['role'],
        orElse: () => UserRole.learner,
      ),
      organizationId: map['organizationId'],
      industry: map['industry'],
      companyContext: map['companyContext'],
      learningGoals: List<String>.from(map['learningGoals'] ?? []),
      preferredLanguage: map['preferredLanguage'] ?? 'km',
      createdAt: map['createdAt'] != null
          ? DateTime.tryParse(map['createdAt']) ?? DateTime.now()
          : DateTime.now(),
    );
  }

  UserModel copyWith({
    String? displayName,
    String? photoUrl,
    CareerLevel? careerLevel,
    CareerLevel? targetCareerLevel,
    UserRole? role,
    String? organizationId,
    String? industry,
    String? companyContext,
    List<String>? learningGoals,
    String? preferredLanguage,
  }) {
    return UserModel(
      id: id,
      email: email,
      displayName: displayName ?? this.displayName,
      photoUrl: photoUrl ?? this.photoUrl,
      careerLevel: careerLevel ?? this.careerLevel,
      targetCareerLevel: targetCareerLevel ?? this.targetCareerLevel,
      role: role ?? this.role,
      organizationId: organizationId ?? this.organizationId,
      industry: industry ?? this.industry,
      companyContext: companyContext ?? this.companyContext,
      learningGoals: learningGoals ?? this.learningGoals,
      preferredLanguage: preferredLanguage ?? this.preferredLanguage,
      createdAt: createdAt,
    );
  }
}
