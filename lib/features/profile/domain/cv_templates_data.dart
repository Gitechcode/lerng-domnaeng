/// Professional CV Template model for various industry skillsets
class CvSkillTemplate {
  final String id;
  final String industryKh;
  final String industryEn;
  final String titleKh;
  final String titleEn;
  final String iconName;
  final String summary;
  final List<String> skills;
  final String achievementsXyz;
  final String education;
  final String recommendedForLevel;

  const CvSkillTemplate({
    required this.id,
    required this.industryKh,
    required this.industryEn,
    required this.titleKh,
    required this.titleEn,
    required this.iconName,
    required this.summary,
    required this.skills,
    required this.achievementsXyz,
    required this.education,
    required this.recommendedForLevel,
  });

  String toFormattedText({required String candidateName, required String phone, required String email}) {
    return '''
======================================================
${candidateName.toUpperCase()}
$titleKh ($titleEn)
Email: $email | Phone: $phone
======================================================

[ គោលបំណង & សេចក្តីសង្ខេបវិជ្ជាជីវៈ (EXECUTIVE SUMMARY) ]
$summary

[ ជំនាញស្នូល & ឧបករណ៍បច្ចេកទេស (CORE SKILLS & TOOLS) ]
${skills.join(' • ')}

[ សមិទ្ធផលការងារជាក់ស្តែងតាមរូបមន្ត XYZ (WORK EXPERIENCE - GOOGLE XYZ) ]
$achievementsXyz

[ កម្រិតវប្បធម៌ & វិញ្ញាបនបត្រ (EDUCATION & CERTIFICATIONS) ]
$education
======================================================
Generated via Lerng Domnaeng Career Development Platform
''';
  }
}

class CvTemplatesRepository {
  static const List<CvSkillTemplate> allTemplates = [
    // 0. Java Enterprise Backend Engineer & Tech Lead
    CvSkillTemplate(
      id: 'cv-java-backend',
      industryKh: 'បច្ចេកវិទ្យាព័ត៌មាន & វិស្វកម្មសូហ្វវែរ',
      industryEn: 'Information Technology & Software Engineering',
      titleKh: 'វិស្វករជាន់ខ្ពស់ Java Enterprise & Spring Boot (Senior Java Architect)',
      titleEn: 'Senior Java Enterprise Backend Engineer & Tech Lead',
      iconName: 'code',
      summary:
          'វិស្វករសូហ្វវែរជាន់ខ្ពស់ដែលមានបទពិសោធន៍ជាង ៥ ឆ្នាំក្នុងការរចនា និងអភិវឌ្ឍប្រព័ន្ធ Enterprise Banking & Microservices ដោយប្រើប្រាស់ Java 21, Spring Boot 3, Hibernate, Kafka និង PostgreSQL។ មានជំនាញរឹងមាំលើ System Architecture, High-Throughput API, និងការដឹកនាំក្រុមវិស្វករ Agile។',
      skills: [
        'Java 21 LTS',
        'Spring Boot 3',
        'Spring Cloud & Microservices',
        'Hibernate / JPA',
        'Apache Kafka & RabbitMQ',
        'PostgreSQL & Redis Cache',
        'Docker & Kubernetes',
        'Clean Architecture & DDD',
        'Bakong / ABA Payway Gateway Integration',
        'CI/CD & Jenkins',
      ],
      achievementsXyz:
          '• បង្កើនល្បឿនដំណើរការប្រតិបត្តិការទូទាត់ប្រាក់ ៦៥% (X) តាមរយៈការ Refactor ប្រព័ន្ធ Monolith ទៅជា Spring Boot Microservices និងប្រើ Virtual Threads (Z) ដែលកាត់បន្ថយ Response Time ពី 850ms មកត្រឹម 120ms (Y)។\n\n'
          '• សន្សំការចំណាយលើ Cloud Server \$18,000 ក្នុងមួយឆ្នាំ (Y) តាមរយៈការដាក់ឱ្យប្រើប្រាស់ Redis Multi-level Caching និង Database Connection Pooling លើ PostgreSQL (Z) គាំទ្រអ្នកប្រើប្រាស់ 100,000 Concurrent Users គ្មានការរអាក់រអួល (X)។\n\n'
          '• ដឹកនាំ និងបង្វឹកវិស្វករ Junior & Mid-level ៦ នាក់ (Z) ឱ្យទទួលបានវិញ្ញាបនបត្រ Oracle Certified Professional Java Developer និងបង្កើន Sprint Velocity ៤០% ក្នុងរយៈពេល ៤ ខែ (X)។',
      education: 'បរិញ្ញាបត្រ វិទ្យាសាស្ត្រកុំព្យូទ័រ (CS) • វិញ្ញាបនបត្រ Oracle Certified Professional (OCP) Java SE & Spring Professional',
      recommendedForLevel: 'Senior / Tech Lead / Specialist',
    ),

    // 1. Digital Marketing & Media
    CvSkillTemplate(
      id: 'cv-marketing',
      industryKh: 'ទីផ្សារឌីជីថល & ប្រព័ន្ធផ្សព្វផ្សាយ',
      industryEn: 'Digital Marketing & Content Media',
      titleKh: 'ប្រធានយុទ្ធសាស្ត្រទីផ្សារឌីជីថល',
      titleEn: 'Digital Marketing & Growth Specialist',
      iconName: 'campaign',
      summary: 'អ្នកជំនាញទីផ្សារឌីជីថលដែលមានបទពិសោធន៍ ៤ ឆ្នាំក្នុងការរៀបចំយុទ្ធនាការ Performance Marketing បង្កើនអតិថិជនសក្តានុពល (Lead Generation) និងការគ្រប់គ្រងថវិកាផ្សាយពាណិជ្ជកម្មតាមបែប ROI-driven។',
      skills: [
        'Meta Ads Manager',
        'TikTok Ads',
        'Google Analytics 4',
        'SEO/SEM Optimization',
        'Content Strategy',
        'Canva & CapCut Production',
        'Customer Acquisition Cost (CAC) Reduction',
      ],
      achievementsXyz:
          '• បង្កើនការលក់អនឡាញ ៣៥% ក្នុងរយៈពេល ៦ ខែ (X) តាមរយៈការរៀបចំយុទ្ធនាការ TikTok Short Videos ចំនួន ៣០ ភាគ (Z) ដែលបង្កើតចំណូលបន្ថែម \$45,000 (Y)។\n\n'
          '• កាត់បន្ថយថ្លៃដើមទាក់ទាញអតិថិជន (CAC) ២៥% (X) តាមរយៈការធ្វើ A/B Testing លើ Meta Ad Creatives ចំនួន ៥០ ទម្រង់ (Z) សន្សំថវិកាក្រុមហ៊ុនបាន \$3,500 ក្នុងមួយខែ (Y)។\n\n'
          '• ដឹកនាំ និងបណ្តុះបណ្តាលក្រុមការងារ Content Creators ៤ នាក់ (Z) ឱ្យផលិតវីដេអូ Viral ដែលមានអ្នកទស្សនាសរុបជាង ២ លានដង (X)។',
      education: 'បរិញ្ញាបត្រ ផ្នែកទីផ្សារ (Marketing) — សាកលវិទ្យាល័យភូមិន្ទនីតិសាស្ត្រ និងវិទ្យាសាស្ត្រសេដ្ឋកិច្ច (RULE)\nវិញ្ញាបនបត្រ Meta Certified Digital Marketing Associate (2025)',
      recommendedForLevel: 'Junior / Senior Specialist',
    ),

    // 2. Tech, IT Support & Software Engineering
    CvSkillTemplate(
      id: 'cv-tech',
      industryKh: 'បច្ចេកវិទ្យា & អភិវឌ្ឍន៍សូហ្វវែរ',
      industryEn: 'Software Engineering & IT Infrastructure',
      titleKh: 'វិស្វករអភិវឌ្ឍន៍ប្រព័ន្ធជាន់ខ្ពស់',
      titleEn: 'Senior Full-Stack Software Engineer',
      iconName: 'code',
      summary: 'វិស្វករកម្មវិធីដែលមានបទពិសោធន៍ ៥ ឆ្នាំក្នុងការកសាងប្រព័ន្ធ Cloud Scalable, RESTful APIs, និង Mobile/Web Applications។ មានជំនាញក្នុងការបង្កើនល្បឿនប្រព័ន្ធ និងការការពារសុវត្ថិភាពទិន្នន័យ។',
      skills: [
        'Flutter & Dart',
        'Node.js & TypeScript',
        'PostgreSQL & MongoDB',
        'Docker & CI/CD Pipelines',
        'AWS Cloud Infrastructure',
        'System Architecture & Microservices',
        'Clean Architecture & Unit Testing',
      ],
      achievementsXyz:
          '• បង្កើនល្បឿនដំណើរការប្រព័ន្ធ ៦០% (X) តាមរយៈការ Refactor Database Queries និងការអនុវត្ត Redis Caching Layer (Z) កាត់បន្ថយ Latency ពី 800ms មកត្រឹម 120ms (Y)។\n\n'
          '• កសាង និងដាក់ឱ្យដំណើរការ Mobile App ថ្មីសម្រាប់អតិថិជន ១០០,០០០ នាក់ (X) ក្នុងរយៈពេល ៤ ខែ ដោយប្រើ Flutter & Clean Architecture (Z) សម្រេចបាន Crash-free Rate ៩៩.៨% (Y)។\n\n'
          '• កាត់បន្ថយការចំណាយលើ Cloud Server ៣០% (X) តាមរយៈការផ្លាស់ប្តូរទៅកាន់ Containerized Microservices លើ AWS ECS (Z) សន្សំ \$1,200 ក្នុងមួយខែ (Y)។',
      education: 'បរិញ្ញាបត្រ វិទ្យាសាស្ត្រកុំព្យូទ័រ — វិទ្យាស្ថានបច្ចេកវិទ្យាកម្ពុជា (ITC)\nAWS Certified Solutions Architect – Associate',
      recommendedForLevel: 'Senior Specialist / Tech Lead',
    ),

    // 3. Accounting, Banking & Finance
    CvSkillTemplate(
      id: 'cv-finance',
      industryKh: 'គណនេយ្យ ហិរញ្ញវត្ថុ & ធនាគារ',
      industryEn: 'Accounting, Banking & Corporate Finance',
      titleKh: 'ប្រធានគណនេយ្យ និងវិភាគហិរញ្ញវត្ថុ',
      titleEn: 'Accounting & Financial Analysis Manager',
      iconName: 'account_balance_wallet',
      summary: 'អ្នកជំនាញគណនេយ្យ និងហិរញ្ញវត្ថុដែលមានការយល់ដឹងស៊ីជម្រៅអំពីស្តង់ដារ CIFRS for SMEs ច្បាប់សារពើពន្ធកម្ពុជា (GDT) និងការគ្រប់គ្រងលំហូរសាច់ប្រាក់អាជីវកម្មប្រកបដោយតម្លាភាព។',
      skills: [
        'QuickBooks & SAP ERP',
        'Cambodian Tax Declarations (Monthly & Annual Tax on Income)',
        'Cash Flow Forecasting',
        'P&L & Balance Sheet Analysis',
        'Cost Reduction & Internal Audit',
        'Advanced Microsoft Excel (Financial Modeling)',
      ],
      achievementsXyz:
          '• កាត់បន្ថយកំហុសទិន្នន័យប្រកាសពន្ធមកត្រឹម ០% (X) តាមរយៈការរៀបចំប្រព័ន្ធផ្ទៀងផ្ទាត់វិក្កយបត្រ E-Tax Invoice ស្វ័យប្រវត្ត (Z) ជៀសវាងការផាកពិន័យពីអគ្គនាយកដ្ឋានពន្ធដារបាន \$12,000 (Y)។\n\n'
          '• បង្កើនលំហូរសាច់ប្រាក់បម្រុងរបស់ក្រុមហ៊ុន ៤០% (X) តាមរយៈការកែសម្រួលគោលការណ៍ទារបំណុលអតិថិជន (DSO) ពី ៦០ ថ្ងៃមកត្រឹម ៣០ ថ្ងៃ (Z)។\n\n'
          '• ដឹកនាំការរៀបចំរបាយការណ៍សវនកម្មផ្ទៃក្នុងប្រចាំឆ្នាំ (Z) ដែលទទួលបានការអនុម័តដោយគ្មានលក្ខខណ្ឌពីក្រុមហ៊ុនសវនកម្មអន្តរជាតិ Big 4 (X)។',
      education: 'បរិញ្ញាបត្រ គណនេយ្យ និងហិរញ្ញវត្ថុ — សាកលវិទ្យាល័យជាតិគ្រប់គ្រង (NUM)\nវិញ្ញាបនបត្រ ACCA Candidate (Affiliate Level)',
      recommendedForLevel: 'Senior / Supervisor / Manager',
    ),

    // 4. HR & Administrative Management
    CvSkillTemplate(
      id: 'cv-hr',
      industryKh: 'គ្រប់គ្រងធនធានមនុស្ស & រដ្ឋបាល',
      industryEn: 'Human Resources & Talent Management',
      titleKh: 'ប្រធានផ្នែកធនធានមនុស្ស',
      titleEn: 'Human Resources Business Partner (HRBP)',
      iconName: 'people',
      summary: 'អ្នកគ្រប់គ្រងធនធានមនុស្សដែលមានបទពិសោធន៍ក្នុងការជ្រើសរើសបុគ្គលិកឆ្នើម ការអនុវត្តច្បាប់ការងារកម្ពុជា (ប.ស.ស, អតីតភាពការងារ) និងការកសាងវប្បធម៌ស្ថាប័នប្រកបដោយផលិតភាពខ្ពស់។',
      skills: [
        'Talent Acquisition & Interviewing',
        'Cambodian Labor Law & NSSF Compliance',
        'KPI & OKR Performance Appraisals',
        'Employee Retention & 1-on-1 Coaching',
        'Training & Capacity Building',
        'Conflict Mediation & Workplace Harmony',
      ],
      achievementsXyz:
          '• កាត់បន្ថយអត្រាបុគ្គលិកលាលែងពីការងារ (Turnover Rate) ពី ២៨% មកត្រឹម ១១% ក្នុងមួយឆ្នាំ (X) តាមរយៈការរៀបចំប្រព័ន្ធវាយតម្លៃលទ្ធផលការងារប្រកបដោយយុត្តិធម៌ និងកម្មវិធីសុខុមាលភាពបុគ្គលិក (Z)។\n\n'
          '• ជ្រើសរើស និងបណ្តុះបណ្តាលបុគ្គលិកថ្មីចំនួន ៤៥ នាក់ទាន់កាលកំណត់ (X) សម្រាប់ការពង្រីកសាខាថ្មីចំនួន ៣ (Z) ដោយកាត់បន្ថយពេលវេលាជ្រើសរើស (Time-to-hire) ពី ៤៥ ថ្ងៃមកត្រឹម ២១ ថ្ងៃ (Y)។\n\n'
          '• រៀបចំ និងសម្របសម្រួលវគ្គបណ្តុះបណ្តាលផ្ទៃក្នុងចំនួន ១២ វគ្គ (Z) ដែលបង្កើនពិន្ទុពេញចិត្តរបស់បុគ្គលិក (eNPS) ដល់ ៨៥% (X)។',
      education: 'បរិញ្ញាបត្រ គ្រប់គ្រងធនធានមនុស្ស — សាកលវិទ្យាល័យបៀលប្រាយ (BBU)\nវិញ្ញាបនបត្រ Professional Human Resource Management (CAMHR)',
      recommendedForLevel: 'Supervisor / Manager / Head of Dept',
    ),

    // 5. Sales & Business Development
    CvSkillTemplate(
      id: 'cv-sales',
      industryKh: 'ផ្នែកលក់ និងទំនាក់ទំនងអតិថិជន',
      industryEn: 'B2B/B2C Sales & Business Development',
      titleKh: 'ប្រធានអភិវឌ្ឍន៍អាជីវកម្ម និងការលក់',
      titleEn: 'Business Development & Corporate Sales Lead',
      iconName: 'trending_up',
      summary: 'អ្នកជំនាញផ្នែកលក់ B2B ដែលមានកំណត់ត្រាជោគជ័យក្នុងការចរចាកិច្ចសន្យាធុរកិច្ចធំៗ ការបើកទីផ្សារថ្មី និងការកសាងទំនាក់ទំនងយូរអង្វែងជាមួយដៃគូសាជីវកម្ម។',
      skills: [
        'B2B Pipeline Management',
        'Contract Negotiation & Closing',
        'Key Account Management',
        'Sales Pitch & Presentation',
        'CRM (HubSpot & Salesforce)',
        'Market Penetration Strategy',
      ],
      achievementsXyz:
          '• បង្កើតចំណូលលក់កិច្ចសន្យាថ្មីបាន \$320,000 ក្នុងរយៈពេល ១ ឆ្នាំ (X) តាមរយៈការចរចា និងចុះហត្ថលេខាលើកិច្ចព្រមព្រៀងជាមួយអតិថិជនសាជីវកម្មធំៗចំនួន ១៨ ក្រុមហ៊ុន (Z) សម្រេចបាន ១៣៥% នៃ KPI ប្រចាំឆ្នាំ (Y)។\n\n'
          '• បង្កើនអត្រាបំប្លែងពី Lead ទៅជាការទិញពិតប្រាកដ (Conversion Rate) ពី ១២% ឡើងដល់ ២៨% (X) តាមរយៈការកែសម្រួល Sales Script និងការផ្តល់ដំណោះស្រាយចំតម្រូវការអតិថិជន (Z)។\n\n'
          '• ដឹកនាំក្រុមលក់ ៦ នាក់សម្រេចចំណូលជាប់ចំណាត់ថ្នាក់លេខ ១ ទូទាំងក្រុមហ៊ុនរយៈពេល ៣ ត្រីមាសជាប់គ្នា (X)។',
      education: 'បរិញ្ញាបត្រ គ្រប់គ្រងពាណិជ្ជកម្ម (BBA) — សាកលវិទ្យាល័យភូមិន្ទភ្នំពេញ (RUPP)\nវិញ្ញាបនបត្រ Advanced Consultative Selling Skills',
      recommendedForLevel: 'Senior / Team Leader / Manager',
    ),

    // 6. Operations, Supply Chain & Logistics
    CvSkillTemplate(
      id: 'cv-logistics',
      industryKh: 'ប្រតិបត្តិការ ដឹកជញ្ជូន & ឃ្លាំង',
      industryEn: 'Supply Chain, Logistics & Warehouse Operations',
      titleKh: 'អ្នកគ្រប់គ្រងខ្សែច្រវាក់ផ្គត់ផ្គង់ និងឃ្លាំង',
      titleEn: 'Supply Chain & Logistics Operations Manager',
      iconName: 'local_shipping',
      summary: 'អ្នកជំនាញប្រតិបត្តិការឃ្លាំង និងដឹកជញ្ជូនដែលមានបទពិសោធន៍ក្នុងការកាត់បន្ថយការខាតបង់ស្តុក ការរៀបចំប្រព័ន្ធដឹកជញ្ជូនលឿនរហ័ស និងការគ្រប់គ្រងអ្នកផ្គត់ផ្គង់ (Vendor Management)។',
      skills: [
        'Warehouse Inventory Management (FIFO/LIFO)',
        'Route & Fleet Optimization',
        'Vendor Contract Negotiation',
        'Safety & Quality Standards (5S / Kaizen)',
        'ERP Inventory Tracking',
        'Logistics Cost Optimization',
      ],
      achievementsXyz:
          '• កាត់បន្ថយការខូចខាត និងការបាត់បង់ទំនិញក្នុងស្តុក ៤៥% (X) តាមរយៈការអនុវត្តប្រព័ន្ធ Barcode Scanning និងក្បួន 5S ក្នុងឃ្លាំងទំហំ ៣,០០០ ម៉ែត្រការ៉េ (Z) សន្សំ \$18,000 ក្នុងមួយឆ្នាំ (Y)។\n\n'
          '• បង្កើនអត្រាដឹកជញ្ជូនទំនិញដល់ដៃអតិថិជនទាន់ពេលវេលា (On-Time Delivery) ពី ៨២% ឡើងដល់ ៩៧% (X) តាមរយៈការកែសម្រួលផ្លូវធ្វើដំណើរ និងការតាមដាន GPS យានយន្ត (Z)។\n\n'
          '• ចរចាកាត់បន្ថយថ្លៃដើមដឹកជញ្ជូនពីដៃគូផ្គត់ផ្គង់បាន ១២% (X) ដែលសន្សំថ្លៃដើមប្រតិបត្តិការប្រចាំឆ្នាំបាន \$24,000 (Y)។',
      education: 'បរិញ្ញាបត្រ គ្រប់គ្រងខ្សែច្រវាក់ផ្គត់ផ្គង់ និងភស្តុភារ — សាកលវិទ្យាល័យវេស្ទើន (Western University)\nវិញ្ញាបនបត្រ Certified Supply Chain Specialist',
      recommendedForLevel: 'Supervisor / Manager',
    ),

    // 7. Graphic Design & UI/UX Creative
    CvSkillTemplate(
      id: 'cv-design',
      industryKh: 'ផ្នែករចនាក្រាហ្វិក & UI/UX',
      industryEn: 'Graphic Design, Branding & UI/UX Product Design',
      titleKh: 'ប្រធានផ្នែករចនាម៉ាកសញ្ញា និងផលិតផល',
      titleEn: 'Senior Brand & UI/UX Product Designer',
      iconName: 'palette',
      summary: 'អ្នករចនាច្នៃប្រឌិតដែលមានបទពិសោធន៍ក្នុងការកសាងអត្តសញ្ញាណម៉ាកសញ្ញា (Brand Identity) និងការរចនាបទពិសោធន៍អ្នកប្រើប្រាស់ (User Experience) សម្រាប់ Mobile App និង Web Platform។',
      skills: [
        'Figma & Adobe XD',
        'Adobe Illustrator & Photoshop',
        'Design System & Component Architecture',
        'User Research & Wireframing',
        'Responsive Web & Mobile UI',
        'Brand Guidelines & Packaging Design',
      ],
      achievementsXyz:
          '• បង្កើនការចុះឈ្មោះប្រើប្រាស់លើកម្មវិធីទូរស័ព្ទ (Sign-up Rate) ៥០% (X) តាមរយៈការធ្វើ Redesign លើទម្រង់ Onboarding Flow ឱ្យសាមញ្ញ និងងាយស្រួល (Z) ផ្អែកលើការស្រាវជ្រាវអ្នកប្រើប្រាស់ ៣០ នាក់ (Y)។\n\n'
          '• បង្កើត Design System ស្តង់ដាររួមមួយដែលមាន Components ជាង ២០០ (Z) ដែលជួយឱ្យក្រុម Developers បង្កើតមុខងារថ្មីៗបានលឿនជាងមុន ៣៥% (X)។\n\n'
          '• ដឹកនាំការរចនា Brand Identity ថ្មីទាំងស្រុងសម្រាប់ផលិតផល ៥ មុខ (Z) ដែលទទួលបានការសរសើរពីអតិថិជន និងបង្កើនការចងចាំម៉ាកសញ្ញា (Brand Recall) ៦០% (X)។',
      education: 'បរិញ្ញាបត្រ រចនាប្រព័ន្ធផ្សព្វផ្សាយ និងសិល្បៈ — សាកលវិទ្យាល័យភូមិន្ទវិចិត្រសិល្បៈ (RUFA)\nGoogle UX Design Professional Certificate',
      recommendedForLevel: 'Senior / Lead Designer',
    ),

    // 8. Project Management & Strategy
    CvSkillTemplate(
      id: 'cv-project',
      industryKh: 'គ្រប់គ្រងគម្រោង & យុទ្ធសាស្ត្រ',
      industryEn: 'Agile Project Management & Scrum Master',
      titleKh: 'ប្រធានគ្រប់គ្រងគម្រោងស្ថាប័ន',
      titleEn: 'Enterprise Agile Project Manager / Scrum Master',
      iconName: 'assignment_turned_in',
      summary: 'អ្នកគ្រប់គ្រងគម្រោងដែលមានវិញ្ញាបនបត្រ PMP និងមានបទពិសោធន៍ដឹកនាំគម្រោងបច្ចេកវិទ្យា និងអាជីវកម្មឆ្លងកាត់នាយកដ្ឋានជាច្រើន ដោយធានាការប្រគល់លទ្ធផលទាន់ពេលវេលា និងក្នុងកញ្ចប់ថវិកាកំណត់។',
      skills: [
        'Agile, Scrum & Kanban Frameworks',
        'Jira, Trello & Asana Management',
        'Budget & Resource Forecasting',
        'Risk Mitigation & Stakeholder Management',
        'Sprint Planning & Retrospectives',
        'KPI & Milestone Tracking',
      ],
      achievementsXyz:
          '• ដឹកនាំគម្រោង Digital Transformation ទំហំ \$150,000 បញ្ចប់បានមុនកាលកំណត់ ៣ សប្តាហ៍ (X) និងសន្សំថវិកាបាន ៨% (Y) តាមរយៈការអនុវត្តក្បួន Scrum Sprints រយៈពេល ២ សប្តាហ៍ម្តង (Z)។\n\n'
          '• កាត់បន្ថយឧបសគ្គកកស្ទះគម្រោង (Project Bottlenecks) ៧០% (X) តាមរយៈការរៀបចំ Daily Standup និង Risk Register យ៉ាងម៉ត់ចត់ (Z)។\n\n'
          '• សម្របសម្រួលកិច្ចសហការរវាងក្រុមការងារចំនួន ៤ នាយកដ្ឋានសរុប ២៥ នាក់ (Z) សម្រេចបានពិន្ទុពេញចិត្តពីភាគីពាក់ព័ន្ធ (Stakeholder Satisfaction) ៩៥% (X)។',
      education: 'បរិញ្ញាបត្រ គ្រប់គ្រងពាណិជ្ជកម្ម និងប្រព័ន្ធព័ត៌មាន — សាកលវិទ្យាល័យបញ្ញាសាស្ត្រកម្ពុជា (PUC)\nវិញ្ញាបនបត្រ Project Management Professional (PMP) / Certified ScrumMaster (CSM)',
      recommendedForLevel: 'Project Manager / Scrum Master',
    ),

    // 9. Hospitality & Customer Experience
    CvSkillTemplate(
      id: 'cv-hospitality',
      industryKh: 'បដិសណ្ឋារកិច្ច និងសេវាកម្ម',
      industryEn: 'Hospitality, Tourism & Guest Relations',
      titleKh: 'ប្រធានផ្នែកសេវាកម្ម និងបដិសណ្ឋារកិច្ច',
      titleEn: 'Guest Relations & Hospitality Operations Manager',
      iconName: 'hotel',
      summary: 'អ្នកជំនាញផ្នែកបដិសណ្ឋារកិច្ចលំដាប់ផ្កាយ ៥ ដែលមានជំនាញពិសេសក្នុងការផ្តល់សេវាកម្មល្អឥតខ្ចោះ ការដោះស្រាយបណ្តឹងភ្ញៀវដោយសន្តិវិធី និងការបណ្តុះបណ្តាលបុគ្គលិកជួរមុខ។',
      skills: [
        '5-Star Hospitality Service Standards',
        'VIP Guest Relations & Protocol',
        'Guest Complaint Resolution',
        'Front Office Management Systems (Opera PMS)',
        'Service Quality Audit & Staff Training',
        'Cross-Cultural Communication (Khmer, English, Chinese)',
      ],
      achievementsXyz:
          '• បង្កើនពិន្ទុពេញចិត្តរបស់ភ្ញៀវលើ TripAdvisor ពី ៤.២ ឡើងដល់ ៤.៨ ផ្កាយ (X) ក្នុងរយៈពេល ៨ ខែ តាមរយៈការបណ្តុះបណ្តាលបុគ្គលិកជួរមុខលើក្បួន "Service from the Heart" (Z)។\n\n'
          '• ដោះស្រាយ និងបម្លែងបណ្តឹងភ្ញៀវមិនពេញចិត្ត ១០០% ឱ្យក្លាយជាភ្ញៀវស្មោះត្រង់ (X) តាមរយៈការអនុវត្តក្បួនសុំទោស និងផ្តល់ដំណោះស្រាយភ្លាមៗក្នុងរយៈពេលមិនឱ្យលើសពី ១៥ នាទី (Z)។\n\n'
          '• បង្កើនចំណូលពីការលក់សេវាកម្មបន្ថែម (Upselling Rooms & Dining) បាន \$30,000 ក្នុងមួយត្រីមាស (X) តាមរយៈការបង្កើតកញ្ចប់លើកទឹកចិត្តដល់បុគ្គលិកទទួលភ្ញៀវ (Z)។',
      education: 'បរិញ្ញាបត្រ គ្រប់គ្រងទេសចរណ៍ និងបដិសណ្ឋារកិច្ច — សាកលវិទ្យាល័យជាតិគ្រប់គ្រង (NUM)\nវិញ្ញាបនបត្រ Certified Hospitality Supervisor (CHS)',
      recommendedForLevel: 'Supervisor / Manager',
    ),

    // 10. Executive Leadership & General Management
    CvSkillTemplate(
      id: 'cv-executive',
      industryKh: 'ថ្នាក់ដឹកនាំកំពូល & នាយកប្រតិបត្តិ',
      industryEn: 'C-Suite Executive & General Management',
      titleKh: 'អគ្គនាយកប្រតិបត្តិ / នាយកគ្រប់គ្រងទូទៅ',
      titleEn: 'Chief Executive Officer (CEO) / General Manager',
      iconName: 'business_center',
      summary: 'ថ្នាក់ដឹកនាំជាន់ខ្ពស់ដែលមានកំណត់ត្រាដឹកនាំក្រុមហ៊ុនឱ្យមានកំណើនប្រាក់ចំណេញជាបន្តបន្ទាប់ ការរៀបចំយុទ្ធសាស្ត្រពង្រីកទីផ្សារ ការកសាងក្រុមដឹកនាំរឹងមាំ និងការគ្រប់គ្រងអភិបាលកិច្ចស្ថាប័នកម្រិតខ្ពស់។',
      skills: [
        'Strategic Vision & Company Valuation',
        'P&L Management & Capital Allocation',
        'Board of Directors & Investor Relations',
        'Mergers & Acquisitions (M&A) & Joint Ventures',
        'Executive Talent Recruitment & ESOP Architecture',
        'Organizational Transformation & Crisis Management',
      ],
      achievementsXyz:
          '• ដឹកនាំក្រុមហ៊ុនពង្រីកចំណូលសរុបពី \$2.5M ឡើងដល់ \$7.2M ក្នុងរយៈពេល ៣ ឆ្នាំ (X) តាមរយៈការពង្រីកសាខាថ្មីចំនួន ៨ និងការដាក់លក់ខ្សែស្រឡាយផលិតផលថ្មីចំនួន ៣ (Z) បង្កើន EBITDA ២៨% (Y)។\n\n'
          '• រៀបចំរចនាសម្ព័ន្ធស្ថាប័នឡើងវិញ និងអនុវត្តប្រព័ន្ធ OKRs ទូទាំងក្រុមហ៊ុន (Z) ដែលកាត់បន្ថយចំណាយប្រតិបត្តិការ ១៨% និងបង្កើនផលិតភាពបុគ្គលិក ៣៥% (X)។\n\n'
          '• ដឹកនាំការចរចាស្វែងរកទុនវិនិយោគស៊េរី A បានសម្រេចចំនួន \$3,000,000 ពីស្ថាប័នវិនិយោគអន្តរជាតិ (Z) បង្កើនតម្លៃក្រុមហ៊ុន (Valuation) ឡើងដល់ \$15M (X)។',
      education: 'អនុបណ្ឌិត គ្រប់គ្រងពាណិជ្ជកម្មសម្រាប់ថ្នាក់ដឹកនាំ (Executive MBA) — AIT / National University of Singapore\nសមាជិកវិទ្យាស្ថាននាយកកម្ពុជា (Cambodian Institute of Directors)',
      recommendedForLevel: 'Director / Executive / Founder',
    ),
  ];
}
