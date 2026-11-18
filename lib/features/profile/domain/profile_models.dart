/// Extended user profile data for career planning and CV generation
class ExtendedUserProfile {
  final String id;
  final String email;
  final String displayName;
  final String? photoUrl;
  final String phone;
  final String bio;
  final String careerLevel;
  final String targetCareerLevel;
  final String companyContext; // 'SME' or 'Standard Corporate'
  final String organization;
  final String department;
  final List<String> skills;
  final double currentSalaryUsd;
  final double targetSalaryUsd;
  final String education;
  final String yearsOfExperience;

  const ExtendedUserProfile({
    required this.id,
    required this.email,
    required this.displayName,
    this.photoUrl,
    this.phone = '+855 12 345 678',
    this.bio = 'អ្នកជំនាញផ្នែកទីផ្សារឌីជីថល និងប្រតិបត្តិការអាជីវកម្ម ដែលមានបទពិសោធន៍ជំរុញកំណើនលក់ និងដឹកនាំក្រុមការងារប្រកបដោយប្រសិទ្ធភាព។',
    this.careerLevel = 'Junior Staff (បុគ្គលិកកម្រិតដំបូង)',
    this.targetCareerLevel = 'Team Leader (ប្រធានក្រុមការងារ)',
    this.companyContext = 'SME Company',
    this.organization = 'BBU Innovation Co., Ltd.',
    this.department = 'Marketing & Business Development',
    this.skills = const [
      'Digital Marketing',
      'Data Analytics',
      'Project Management',
      'Team Leadership',
      'Negotiation',
      'Budget Management',
    ],
    this.currentSalaryUsd = 450.0,
    this.targetSalaryUsd = 1200.0,
    this.education = 'បរិញ្ញាបត្រ គ្រប់គ្រងពាណិជ្ជកម្ម (BBA) — សាកលវិទ្យាល័យបៀលប្រាយ (BBU)',
    this.yearsOfExperience = '២ ឆ្នាំ',
  });

  ExtendedUserProfile copyWith({
    String? displayName,
    String? photoUrl,
    String? phone,
    String? bio,
    String? careerLevel,
    String? targetCareerLevel,
    String? companyContext,
    String? organization,
    String? department,
    List<String>? skills,
    double? currentSalaryUsd,
    double? targetSalaryUsd,
    String? education,
    String? yearsOfExperience,
  }) {
    return ExtendedUserProfile(
      id: id,
      email: email,
      displayName: displayName ?? this.displayName,
      photoUrl: photoUrl ?? this.photoUrl,
      phone: phone ?? this.phone,
      bio: bio ?? this.bio,
      careerLevel: careerLevel ?? this.careerLevel,
      targetCareerLevel: targetCareerLevel ?? this.targetCareerLevel,
      companyContext: companyContext ?? this.companyContext,
      organization: organization ?? this.organization,
      department: department ?? this.department,
      skills: skills ?? this.skills,
      currentSalaryUsd: currentSalaryUsd ?? this.currentSalaryUsd,
      targetSalaryUsd: targetSalaryUsd ?? this.targetSalaryUsd,
      education: education ?? this.education,
      yearsOfExperience: yearsOfExperience ?? this.yearsOfExperience,
    );
  }
}

/// Standard preset avatars for quick professional selection
class PresetAvatar {
  final String id;
  final String name;
  final String avatarUrl;
  final String roleTag;

  const PresetAvatar({
    required this.id,
    required this.name,
    required this.avatarUrl,
    required this.roleTag,
  });
}

class ProfilePresetAvatars {
  static const List<PresetAvatar> avatars = [
    PresetAvatar(
      id: 'exec-1',
      name: 'សុខ វិបុល',
      avatarUrl: 'https://images.unsplash.com/photo-1534528741775-53994a69daeb?w=150&auto=format&fit=crop&q=80',
      roleTag: 'Marketing Lead',
    ),
    PresetAvatar(
      id: 'exec-2',
      name: 'ចាន់ សុភាព',
      avatarUrl: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=150&auto=format&fit=crop&q=80',
      roleTag: 'Tech Specialist',
    ),
    PresetAvatar(
      id: 'exec-3',
      name: 'គឹម ស្រីនាង',
      avatarUrl: 'https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?w=150&auto=format&fit=crop&q=80',
      roleTag: 'Finance Director',
    ),
    PresetAvatar(
      id: 'exec-4',
      name: 'ម៉េង ហេង',
      avatarUrl: 'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?w=150&auto=format&fit=crop&q=80',
      roleTag: 'Operations Manager',
    ),
    PresetAvatar(
      id: 'exec-5',
      name: 'តែ សុវណ្ណារី',
      avatarUrl: 'https://images.unsplash.com/photo-1580489944761-15a19d654956?w=150&auto=format&fit=crop&q=80',
      roleTag: 'C-Suite Executive',
    ),
  ];
}

/// 10 Career Levels with Cambodia Market Salary Benchmarks
class SalaryScaleBenchmark {
  final int level;
  final String positionKh;
  final String positionEn;
  final String smeRangeUsd;
  final String corporateRangeUsd;
  final String promotionRequirementKh;
  final String compensationStructureKh;

  const SalaryScaleBenchmark({
    required this.level,
    required this.positionKh,
    required this.positionEn,
    required this.smeRangeUsd,
    required this.corporateRangeUsd,
    required this.promotionRequirementKh,
    required this.compensationStructureKh,
  });
}

class CareerSalaryRepository {
  static const List<SalaryScaleBenchmark> benchmarks = [
    SalaryScaleBenchmark(
      level: 1,
      positionKh: 'កូនជាង / ហាត់ការ',
      positionEn: 'Intern',
      smeRangeUsd: '\$120 - \$200',
      corporateRangeUsd: '\$180 - \$280',
      promotionRequirementKh: 'បញ្ចប់កិច្ចការប្រចាំថ្ងៃបានទាន់ពេល មានអត្តចរិតរៀនសូត្រខ្ពស់ និងគោរពវិន័យការងារ។',
      compensationStructureKh: 'ប្រាក់ឧបត្ថម្ភគោល (Base Stipend) + អាហារថ្ងៃត្រង់/ថ្លៃសាំង',
    ),
    SalaryScaleBenchmark(
      level: 2,
      positionKh: 'បុគ្គលិកទើបចូលថ្មី',
      positionEn: 'Junior Staff',
      smeRangeUsd: '\$250 - \$450',
      corporateRangeUsd: '\$350 - \$650',
      promotionRequirementKh: 'បំពេញការងារតាម SOP ដោយមិនចាំបាច់មានអ្នកតាមដានជាប់លាប់ សម្រេច KPI លើសពី ៨៥%។',
      compensationStructureKh: 'ប្រាក់ខែគោល + ប.ស.ស + ប្រាក់លើកទឹកចិត្តប្រចាំខែ (Incentive)',
    ),
    SalaryScaleBenchmark(
      level: 3,
      positionKh: 'បុគ្គលិកជំនាញជាន់ខ្ពស់',
      positionEn: 'Senior Specialist',
      smeRangeUsd: '\$500 - \$1,000',
      corporateRangeUsd: '\$800 - \$1,800',
      promotionRequirementKh: 'ម្ចាស់ការលើគម្រោងធំៗ ដោះស្រាយបញ្ហាស្មុគស្មាញ និងជួយណែនាំ (Coach) បុគ្គលិកថ្មីៗ។',
      compensationStructureKh: 'ប្រាក់ខែគោល + ប្រាក់រង្វាន់តាមគម្រោង (Project Bonus) + ធានារ៉ាប់រងសុខភាពបន្ថែម',
    ),
    SalaryScaleBenchmark(
      level: 4,
      positionKh: 'ប្រធានក្រុមការងារ',
      positionEn: 'Team Leader',
      smeRangeUsd: '\$800 - \$1,400',
      corporateRangeUsd: '\$1,200 - \$2,200',
      promotionRequirementKh: 'ដឹកនាំសមាជិក ៣-៨ នាក់សម្រេចគោលដៅ គ្រប់គ្រងកាលវិភាគការងារ និងដោះស្រាយវិវាទក្នុងក្រុម។',
      compensationStructureKh: 'ប្រាក់ខែគោល + ប្រាក់ឧបត្ថម្ភការដឹកនាំ (Leadership Allowance) + KPI Bonus',
    ),
    SalaryScaleBenchmark(
      level: 5,
      positionKh: 'ប្រធានផ្នែករង / អនុប្រធាន',
      positionEn: 'Supervisor',
      smeRangeUsd: '\$1,000 - \$1,800',
      corporateRangeUsd: '\$1,500 - \$2,800',
      promotionRequirementKh: 'តភ្ជាប់រវាងយុទ្ធសាស្ត្ររបស់ប្រធានផ្នែក និងការអនុវត្តជាក់ស្តែង ត្រួតពិនិត្យគុណភាពការងារ (QA/QC)។',
      compensationStructureKh: 'ប្រាក់ខែគោល + ប្រាក់រង្វាន់ត្រីមាស (Quarterly Performance Bonus)',
    ),
    SalaryScaleBenchmark(
      level: 6,
      positionKh: 'អ្នកគ្រប់គ្រងផ្នែក / ប្រធានផ្នែក',
      positionEn: 'Department Manager',
      smeRangeUsd: '\$1,500 - \$2,800',
      corporateRangeUsd: '\$2,500 - \$4,500',
      promotionRequirementKh: 'គ្រប់គ្រង P&L (ចំណូល-ចំណាយ) របស់ផ្នែក រៀបចំថវិកាប្រចាំឆ្នាំ និងកសាងសមត្ថភាពក្រុមការងារ។',
      compensationStructureKh: 'ប្រាក់ខែគោល + ចំណែកភាគលាភប្រចាំឆ្នាំ (Annual Profit Bonus) + កាតសាំង/ទូរស័ព្ទ',
    ),
    SalaryScaleBenchmark(
      level: 7,
      positionKh: 'នាយកផ្នែក',
      positionEn: 'Head of Department',
      smeRangeUsd: '\$2,000 - \$3,800',
      corporateRangeUsd: '\$3,500 - \$6,500',
      promotionRequirementKh: 'កំណត់យុទ្ធសាស្ត្រកំណើនរយៈពេល ៣-៥ ឆ្នាំ និងដឹកនាំកិច្ចសហការអន្តរផ្នែក (Cross-functional)។',
      compensationStructureKh: 'ប្រាក់ខែគោល + Management Incentive Pool + ប្រាក់រង្វាន់សមិទ្ធផលប្រចាំឆ្នាំ',
    ),
    SalaryScaleBenchmark(
      level: 8,
      positionKh: 'នាយកប្រតិបត្តិការងារ',
      positionEn: 'Director',
      smeRangeUsd: '\$3,000 - \$5,500',
      corporateRangeUsd: '\$5,000 - \$9,000',
      promotionRequirementKh: 'បង្កើតប្រភពចំណូលថ្មីៗ ពង្រីកទីផ្សារ និងធានានិរន្តរភាពអាជីវកម្មក្នុងបរិបទប្រកួតប្រជែង។',
      compensationStructureKh: 'ប្រាក់ខែគោល + ចំណែកប្រាក់ចំណេញសុទ្ធ (Profit Sharing) + កញ្ចប់ធានារ៉ាប់រងអន្តរជាតិ',
    ),
    SalaryScaleBenchmark(
      level: 9,
      positionKh: 'ថ្នាក់ដឹកនាំកំពូល (C-Suite)',
      positionEn: 'Executive (CEO, COO, CFO, CTO)',
      smeRangeUsd: '\$4,500 - \$8,000+',
      corporateRangeUsd: '\$8,000 - \$16,000+',
      promotionRequirementKh: 'ដឹកនាំក្រុមហ៊ុនទាំងមូលឱ្យមានប្រាក់ចំណេញ ស្ថិរភាព និងកំណើនតម្លៃទីផ្សារ (Company Valuation)។',
      compensationStructureKh: 'ប្រាក់ខែគោល + ESOP / Phantom Shares + ភាគលាភ (Executive Dividends)',
    ),
    SalaryScaleBenchmark(
      level: 10,
      positionKh: 'ស្ថាបនិក / ម្ចាស់សហគ្រាស',
      positionEn: 'Founder & Owner',
      smeRangeUsd: 'ភាគលាភ និងប្រាក់ចំណេញសុទ្ធ',
      corporateRangeUsd: 'ភាគហ៊ុន (Equity) & ភាគលាភធុរកិច្ច',
      promotionRequirementKh: 'ទស្សនវិស័យវែងឆ្ងាយ ការស្វែងរកទុនវិនិយោគ និងការកសាងប្រព័ន្ធស្ថាប័នរឹងមាំយូរអង្វែង។',
      compensationStructureKh: 'ម្ចាស់ភាគហ៊ុន (Majority Shareholder) + ភាគលាភប្រចាំឆ្នាំ (Dividends) + Capital Gain',
    ),
  ];
}
