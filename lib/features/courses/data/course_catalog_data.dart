import 'chinese_strategy_lessons.dart';
import '../../auth/domain/user_model.dart';
import '../domain/course_model.dart';
import 'extra_lessons_part1.dart';
import 'extra_lessons_part2.dart';
import 'extra_lessons_part3.dart';

class CourseCatalogData {
  static final List<CourseModel> allCourses = [
    ChineseStrategyLessons.course,
    // 1. Intern & Junior Course
    const CourseModel(
      id: 'course-intern-comm',
      titleKh: 'ទំនាក់ទំនង និងសីលធម៌ការងារប្រកបដោយវិជ្ជាជីវៈ',
      titleEn: 'Workplace Communication & Professional Ethics for Interns',
      descriptionKh: 'កសាងមូលដ្ឋានគ្រឹះរឹងមាំ៖ ការឆ្លើយតបអ៊ីមែលផ្លូវការ របៀបសួរសំណួរដើម្បីភាពច្បាស់លាស់ និងការទទួល Feedback ប្រកបដោយភាពចាស់ទុំ។',
      descriptionEn: 'Master professional workplace communication, active listening, asking clarifying questions, and handling feedback constructively.',
      targetLevel: CareerLevel.intern,
      category: 'Workplace Fundamentals',
      thumbnailUrl: '',
      instructorName: 'លោកគ្រូ សុជាតិ វណ្ណារ៉ា',
      totalLessons: 10,
      estimatedMinutes: 110,
      createdAt: null,
    ),

    // 2. Junior to Senior Course
    const CourseModel(
      id: 'course-eq-critical',
      titleKh: 'EQ និងការត្រិះរិះពិចារណាដោះស្រាយបញ្ហាការងារ',
      titleEn: 'Workplace EQ & Critical Problem Solving',
      descriptionKh: 'គ្រប់គ្រងសម្ពាធអារម្មណ៍ យល់ចិត្តអ្នកដទៃ (Empathy) និងវិភាគរកឫសគល់នៃបញ្ហានៅកន្លែងធ្វើការតាមបែបតក្កវិជ្ជា។',
      descriptionEn: 'Develop emotional intelligence, empathy, and root-cause problem solving under pressure.',
      targetLevel: CareerLevel.junior,
      category: 'EQ & Problem Solving',
      thumbnailUrl: '',
      instructorName: 'អ្នកគ្រូ ចាន់ថុល សុរិយា',
      totalLessons: 10,
      estimatedMinutes: 115,
      createdAt: null,
    ),

    // 3. Team Leader Course
    const CourseModel(
      id: 'course-leader-delegation',
      titleKh: 'សិល្បៈនៃការចាត់ចែងការងារ និងការផ្ដល់ Feedback ប្រកបដោយការស្ថាបនា',
      titleEn: 'Task Delegation & Constructive Feedback for Team Leaders',
      descriptionKh: 'របៀបប្រគល់ភារកិច្ចឱ្យចំមនុស្ស និងចំជំនាញ ការរៀបចំការប្រជុំ 1-on-1 និងការដោះស្រាយបុគ្គលិកដែលមិនស្តាប់បង្គាប់។',
      descriptionEn: 'Master delegation frameworks, 1-on-1 coaching sessions, and handling team resistance fairly.',
      targetLevel: CareerLevel.teamLeader,
      category: 'Management & Leadership',
      thumbnailUrl: '',
      instructorName: 'លោកគ្រូ រតនា គីមសាន',
      totalLessons: 10,
      estimatedMinutes: 125,
      createdAt: null,
    ),

    // 4. Manager Course
    const CourseModel(
      id: 'course-manager-conflict',
      titleKh: 'ការដោះស្រាយជម្លោះ និងការសន្ទនាស្មុគស្មាញក្នុងស្ថាប័ន',
      titleEn: 'Conflict Resolution & Difficult Conversations for Managers',
      descriptionKh: 'បច្ចេកទេសសម្រុះសម្រួលការខ្វែងគំនិតរវាងបុគ្គលិក ការការពារវប្បធម៌ Toxic និងការចរចាផលប្រយោជន៍ស្ថាប័នដោយយុត្តិធម៌។',
      descriptionEn: 'Navigate workplace politics, mediate team conflicts, and protect ethical team culture.',
      targetLevel: CareerLevel.manager,
      category: 'Conflict & Negotiation',
      thumbnailUrl: '',
      instructorName: 'អ្នកគ្រូ លីដា វណ្ណនី',
      totalLessons: 10,
      estimatedMinutes: 120,
      createdAt: null,
    ),

    // 5. Founder & SME Course
    const CourseModel(
      id: 'course-founder-sme',
      titleKh: 'ភាពជាអ្នកដឹកនាំយុទ្ធសាស្ត្រ និងការកសាងក្រុមការងារ SME',
      titleEn: 'Strategic Leadership & SME Team Building for Founders',
      descriptionKh: 'យុទ្ធសាស្ត្រជ្រើសរើសមនុស្សត្រូវនឹងវប្បធម៌ ការគ្រប់គ្រងលំហូរសាច់ប្រាក់បឋម និងការដឹកនាំអាជីវកម្មឱ្យមានចីរភាព។',
      descriptionEn: 'Hiring strategy, cash flow literacy, delegation culture, and scaling small teams sustainably.',
      targetLevel: CareerLevel.founder,
      category: 'Strategy & SME Leadership',
      thumbnailUrl: '',
      instructorName: 'លោកឧកញ៉ា សុផាត ប៊ុនណារិទ្ធ',
      totalLessons: 10,
      estimatedMinutes: 135,
      createdAt: null,
    ),

    // 6. Senior Specialist Course
    const CourseModel(
      id: 'course-senior-mentorship',
      titleKh: 'ជំនាញបច្ចេកទេសកម្រិតខ្ពស់ និងការធ្វើជាទីប្រឹក្សាការងារ (Mentorship)',
      titleEn: 'Technical Mastery & Mentorship for Senior Specialists',
      descriptionKh: 'ក្លាយជាអ្នកជំនាញឯកទេស (SME) ដោះស្រាយបញ្ហាស្មុគស្មាញដោយម្ចាស់ការ និងបង្វឹកសមាជិកជំនាន់ក្រោយប្រកបដោយប្រសិទ្ធភាព។',
      descriptionEn: 'Subject matter expertise, autonomous problem solving, and coaching junior talent effectively.',
      targetLevel: CareerLevel.senior,
      category: 'Specialist & Mentorship',
      thumbnailUrl: '',
      instructorName: 'លោក ស៊ុន វិទូ',
      totalLessons: 10,
      estimatedMinutes: 130,
      createdAt: null,
    ),

    // 7. Supervisor Course
    const CourseModel(
      id: 'course-supervisor-ops',
      titleKh: 'ការត្រួតពិនិត្យប្រតិបត្តិការ និងការគ្រប់គ្រងគុណភាព (QA/QC & Supervision)',
      titleEn: 'Operations Supervision & Quality Control for Supervisors',
      descriptionKh: 'ភ្ជាប់យុទ្ធសាស្ត្រថ្នាក់លើទៅការអនុវត្តជាក់ស្តែង ត្រួតពិនិត្យស្តង់ដារ QA/QC និងគ្រប់គ្រងទិន្នផលប្រចាំថ្ងៃ។',
      descriptionEn: 'Translate high-level strategy into daily execution, ensure QA/QC standards, and optimize workflow.',
      targetLevel: CareerLevel.supervisor,
      category: 'Operations & Quality',
      thumbnailUrl: '',
      instructorName: 'អ្នកស្រី កែវ មុនីនាថ',
      totalLessons: 10,
      estimatedMinutes: 125,
      createdAt: null,
    ),

    // 8. Head of Department Course
    const CourseModel(
      id: 'course-hod-strategy',
      titleKh: 'យុទ្ធសាស្ត្រដឹកនាំនាយកដ្ឋាន និងការគ្រប់គ្រង P&L (Departmental Leadership)',
      titleEn: 'Departmental Strategy & Financial Leadership for Heads of Department',
      descriptionKh: 'គ្រប់គ្រងថវិកាប្រចាំឆ្នាំ ដឹកនាំកិច្ចសហការអន្តរនាយកដ្ឋាន (Cross-functional) និងជំរុញចំណូលស្ថាប័ន។',
      descriptionEn: 'P&L management, cross-department alignment, strategic annual budgeting, and business scaling.',
      targetLevel: CareerLevel.headOfDepartment,
      category: 'Department Strategy',
      thumbnailUrl: '',
      instructorName: 'លោក គង់ សម្បត្តិ',
      totalLessons: 10,
      estimatedMinutes: 130,
      createdAt: null,
    ),

    // 9. Director Course
    const CourseModel(
      id: 'course-director-governance',
      titleKh: 'អភិបាលកិច្ចស្ថាប័ន និងការពង្រីកអាជីវកម្មជាយុទ្ធសាស្ត្រ (Corporate Governance)',
      titleEn: 'Corporate Governance & Strategic Expansion for Directors',
      descriptionKh: 'គ្រប់គ្រងហានិភ័យស្ថាប័ន ពង្រីកទីផ្សារ និងសាខាធុរកិច្ច និងកសាងប្រព័ន្ធអភិបាលកិច្ចរឹងមាំយូរអង្វែង។',
      descriptionEn: 'Enterprise risk management, market expansion, board alignment, and long-term governance.',
      targetLevel: CareerLevel.director,
      category: 'Governance & Expansion',
      thumbnailUrl: '',
      instructorName: 'លោកជំទាវ ជា សុភាព',
      totalLessons: 10,
      estimatedMinutes: 135,
      createdAt: null,
    ),

    // 10. Executive (C-Suite) Course
    const CourseModel(
      id: 'course-executive-csuite',
      titleKh: 'ភាពជាអ្នកដឹកនាំកំពូល C-Suite និងការបង្កើតតម្លៃទីផ្សារ (C-Suite Leadership)',
      titleEn: 'C-Suite Executive Leadership & Company Valuation',
      descriptionKh: 'រាយការណ៍ជូនក្រុមប្រឹក្សាភិបាល (Board of Directors) យុទ្ធសាស្ត្របែងចែកទុន (Capital Allocation) និងបង្កើនតម្លៃក្រុមហ៊ុន។',
      descriptionEn: 'Executive leadership, capital allocation, investor relations, and maximizing company valuation.',
      targetLevel: CareerLevel.executive,
      category: 'Executive Leadership',
      thumbnailUrl: '',
      instructorName: 'ឯកឧត្តមបណ្ឌិត ហេង វណ្ណា',
      totalLessons: 10,
      estimatedMinutes: 140,
      createdAt: null,
    ),
  ];

  static final Map<String, List<LessonModel>> detailedLessons = {
    'course-chinese-strategy-kh': ChineseStrategyLessons.lessons,
    // =========================================================================
    // 1. INTERN & JUNIOR COURSE (course-intern-comm)
    // =========================================================================
    'course-intern-comm': [
      LessonModel(
        id: 'lesson-comm-1',
        courseId: 'course-intern-comm',
        moduleId: 'mod-1',
        titleKh: '១. របៀបសួរបញ្ជាក់ការងារកុំឱ្យខុសទិសដៅ (Asking for Clarity Without Fear)',
        titleEn: 'Asking Clarifying Questions Effectively',
        type: LessonType.text,
        orderIndex: 1,
        learningObjectives: '• យល់ដឹងពីមូលហេតុដែលការសួរបញ្ជាក់បង្ហាញពីទំនួលខុសត្រូវវិជ្ជាជីវៈ មិនមែនជាភាពអសមត្ថភាព។\n'
            '• ចេះប្រើប្រាស់រូបមន្ត 4W1H ដើម្បីបញ្ជាក់ទម្រង់ (Format) ម៉ោងកំណត់ (Deadline) និងការរំពឹងទុករបស់ប្រធាន។\n'
            '• កាត់បន្ថយការខកចិត្ត និងពេលវេលាដែលត្រូវកែកិច្ចការឡើងវិញ។',
        shortExplanation: 'កំហុសធំបំផុតរបស់បុគ្គលិកថ្មីគឺ ការស្ងៀមស្ងាត់ហើយធ្វើតាមការស្មាន។ ការសួរនាំដើម្បីភាពច្បាស់លាស់ជួយសន្សំពេលវេលាក្រុមហ៊ុន និងកសាងទំនុកចិត្តថាអ្នកជាមនុស្សម៉ត់ចត់។',
        workplaceStory: '«សុភា ជាបុគ្គលិកថ្មីនៅក្រុមហ៊ុនភ្នាក់ងារផ្សព្វផ្សាយ (Digital Agency) មួយនៅភ្នំពេញ។ ថ្ងៃមួយ ប្រធានប្រាប់នាងយ៉ាងប្រញាប់មុនពេលចេញទៅជួបអតិថិជន៖ "ជួយធ្វើរបាយការណ៍លក់សប្តាហ៍មុនឱ្យខ្ញុំបន្ទាន់!"។ '
            'សុភាមិនហ៊ានសួរថា តើចង់បានជា Excel ឬ Slide ហើយ Deadline ម៉ោងប៉ុន្មានទេ។ នាងចំណាយពេលពេញមួយថ្ងៃរចនា Slide យ៉ាងស្អាតរហូតដល់ម៉ោង ៥ ល្ងាច។ ប៉ុន្តែប្រធានត្រូវការត្រឹមតារាងលេខ Excel បន្ទាន់នៅម៉ោង ២ រសៀលដើម្បីប្រជុំផ្ទៃក្នុង។ '
            'លទ្ធផល៖ ប្រធានខកចិត្តយ៉ាងខ្លាំងដោយសារគ្មានទិន្នន័យប្រជុំ ហើយសុភាមានអារម្មណ៍បាក់ទឹកចិត្ត និងយំដោយសារគិតថាខ្លួនឯងខំអស់ពីសមត្ថភាពហើយនៅតែខុស។»',
        practicalExample: '✅ របៀបនិយាយត្រឹមត្រូវ និងវិជ្ជាជីវៈ៖\n'
            '«ជម្រាបសួរបង! ដើម្បីកុំឱ្យខុសទិសដៅ និងតម្រូវការជាក់ស្តែង តើបងចង់បានរបាយការណ៍ជាតារាងលេខ Excel សង្ខេប ឬជា Slide បទបង្ហាញ? ហើយតើបងត្រូវការប្រើប្រាស់នៅម៉ោងប៉ុន្មានដែរ ដើម្បីខ្ញុំរៀបចំជូនទាន់ពេលវេលា?»',
        practicalExercise: 'អនុវត្តការសរសេរសារបញ្ជាក់ការងារសាកល្បងមួយផ្ញើទៅកាន់ប្រធាន នៅពេលអ្នកទទួលបានកិច្ចការដែលមិនទាន់ច្បាស់ពី Deadline ឬលទ្ធផលរំពឹងទុក។',
        quizQuestions: [
          QuestionModel(
            id: 'q-comm-1',
            promptKh: 'ប្រសិនបើប្រធានរបស់អ្នកប្រគល់ការងារបន្ទាន់មួយដែលអ្នកមិនទាន់យល់ច្បាស់ពីទម្រង់ និង Deadline តើអ្នកគួរធ្វើបែបណា?',
            promptEn: 'If your manager assigns an urgent task without clear format or deadline, what should you do?',
            optionsKh: [
              'A. ស្ងៀមស្ងាត់ហើយធ្វើតាមការស្មានក្រែងលោត្រូវ ដើម្បីកុំឱ្យប្រធានគិតថាយើងមិនចេះ។',
              'B. សួរបញ្ជាក់ទម្រង់ (Format) និងម៉ោងកំណត់ (Deadline) ដោយគួរសម មុនពេលចាប់ផ្តើមធ្វើ។',
              'C. ចាំដល់ម៉ោងប្រជុំទើបប្រាប់ប្រធានថាដោយសារមិនច្បាស់ទើបមិនទាន់បានធ្វើ។',
            ],
            optionsEn: [
              'A. Stay quiet and guess, hoping not to look incompetent.',
              'B. Clarify format and deadline politely before starting.',
              'C. Wait until the meeting to tell them you did not understand.',
            ],
            correctOptionIndex: 1,
            explanationKh: 'ការពន្យល់៖ ជម្រើស B បង្ហាញពីភាពចាស់ទុំ និងទំនួលខុសត្រូវខ្ពស់។ ការសួរបញ្ជាក់ចំណាយពេលតែ ២ នាទី ប៉ុន្តែការពារការខាតបង់ពេលវេលារាប់ម៉ោង និងកាត់បន្ថយការកែប្រែឡើងវិញ។',
            explanationEn: 'Explanation: Clarifying early shows professionalism and prevents hours of rework.',
          ),
        ],
        reflection: 'តើកន្លងមកអ្នកធ្លាប់ជួបការយល់ច្រឡំដោយសារមិនបានសួរនាំបញ្ជាក់ការងារឱ្យច្បាស់ដែរឬទេ? តើការខកខាននោះបានបង្រៀនអ្វីខ្លះដល់អ្នក?',
        workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ មុននឹងចាប់ផ្តើមកិច្ចការបន្ទាប់ សូមផ្ញើសារ ឬសួរផ្ទាល់មាត់យ៉ាងហោច ១ ដង ដើម្បីបញ្ជាក់ទម្រង់ និងម៉ោងប្រគល់ឱ្យច្បាស់ ១០០%។',
      ),
      LessonModel(
        id: 'lesson-comm-2',
        courseId: 'course-intern-comm',
        moduleId: 'mod-1',
        titleKh: '២. វិជ្ជាជីវៈក្នុងការឆ្លើយតបអ៊ីមែល & Telegram ការងារ (Workplace Messaging Etiquette)',
        titleEn: 'Professional Email & Messaging Etiquette',
        type: LessonType.text,
        orderIndex: 2,
        learningObjectives: '• ចេះសរសេរ Subject Line ច្បាស់លាស់ និងរៀបចំកថាខណ្ឌងាយអានតាមទម្រង់ 4 ផ្នែក។\n'
            '• ស្គាល់ពីព្រំដែននៃការប្រើប្រាស់បណ្តាញទំនាក់ទំនងផ្ទាល់ខ្លួនសម្រាប់ការងារផ្លូវការ។\n'
            '• ជៀសវាងការផ្ញើសារមិនច្បាស់លាស់ដែលធ្វើឱ្យអ្នកដទៃរង់ចាំ។',
        shortExplanation: 'សារការងារត្រូវតែខ្លី ចំគោលដៅ និងគោរពពេលវេលាអ្នកអាន។ កុំផ្ញើសារសួរត្រឹមតែ "បង?" រួចទុកឱ្យគេរង់ចាំដោយភាពស្រពេចស្រពិល។',
        workplaceStory: '«វិចិត្រ តែងតែផ្ញើសារ Telegram ទៅកាន់ថ្នាក់លើថា "បង! ទំនេរទេ?" រួចស្ងាត់ឈឹងរង់ចាំប្រធានឆ្លើយតប។ ប្រធានរបស់គាត់កំពុងប្រជុំមានអារម្មណ៍ភ័យផង និងធុញទ្រាន់ផង ដោយមិនដឹងថាមានរឿងបន្ទាន់អ្វី។ '
            'ក្រោយមក គាត់បានរៀនប្តូរមកជា៖ "ជម្រាបសួរបង! ខ្ញុំត្រូវការហត្ថលេខាលើ PO លេខ 104 សម្រាប់ទិញសម្ភារការិយាល័យ។ ឯកសារបានដាក់លើតុបងរួចហើយ។ ពេលបងទំនេរ ខ្ញុំសុំជួប ២ នាទី"។ ប្រធានឆ្លើយតបយល់ព្រមភ្លាមៗក្នុងរយៈពេល ៣ នាទី។»',
        practicalExample: '✅ ក្បួនសរសេរសារការងារ ៤ ផ្នែក៖\n'
            '១. [ស្វាគមន៍គួរសម]៖ "ជម្រាបសួរបង..."\n'
            '២. [បញ្ហា/សំណើសង្ខេប]៖ "ខ្ញុំសូមគោរពស្នើសុំ..."\n'
            '៣. [ឯកសារភ្ជាប់/បរិបទ]៖ "មានឯកសារភ្ជាប់ក្នុងតំណរភ្ជាប់នេះ..."\n'
            '៤. [សំណូមពរសកម្មភាពបន្ទាប់]៖ "តើបងអាចពិនិត្យមុនម៉ោង ៤ រសៀលបានទេ?"',
        practicalExercise: 'រៀបចំអ៊ីមែលសុំច្បាប់ឈប់សម្រាកព្យាបាលជំងឺ ឬស្នើសុំឯកសារការងារ ស្របតាមទម្រង់ ៤ ផ្នែកខាងលើ។',
        quizQuestions: [
          QuestionModel(
            id: 'q-comm-2',
            promptKh: 'នៅពេលត្រូវការជំនួយ ឬហត្ថលេខាពីប្រធានដែលកំពុងរវល់ តើការផ្ញើសារបែបណាដែលមានវិជ្ជាជីវៈបំផុត?',
            promptEn: 'When you need help or signature from a busy manager, what is the most professional message?',
            optionsKh: [
              'A. ផ្ញើពាក្យ "បង?" រួចចាំមើលប្រធានឆ្លើយតបសិន ទើបសរសេររឿងរ៉ាវបន្ត។',
              'B. ផ្ញើសារដែលមានទាំងការស្វាគមន៍ មូលហេតុសង្ខេប ឯកសារយោង និងសំណើសកម្មភាពក្នុងសារតែមួយ។',
              'C. ខលទូរស័ព្ទទារហត្ថលេខាភ្លាមៗដោយមិនបាច់ផ្ញើសារមុន។',
            ],
            optionsEn: [
              'A. Send "Bong?" and wait for reply before telling details.',
              'B. Send a single clear message with greeting, summary, reference, and requested action.',
              'C. Call repeatedly without messaging first.',
            ],
            correctOptionIndex: 1,
            explanationKh: 'ការពន្យល់៖ ជម្រើស B គោរពពេលវេលាអ្នកទទួលខ្ពស់បំផុត។ អ្នកអានអាចយល់ពីភាពបន្ទាន់ និងសម្រេចចិត្តបានភ្លាមៗដោយមិនបាច់ចំណាយពេលសួរដេញដោលច្រើនដង។',
            explanationEn: 'Explanation: Option B respects the recipient time and gives all context at a glance.',
          ),
        ],
        reflection: 'តើអ្នកមានអារម្មណ៍បែបណាពេលមានគេផ្ញើសារមិនច្បាស់លាស់មករំខានការងាររបស់អ្នក? តើអ្នកធ្លាប់ធ្វើបែបនេះទៅកាន់អ្នកដទៃដែរឬទេ?',
        workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ពិនិត្យសារការងាររបស់អ្នកឡើងវិញ មុននឹងចុច Send ដោយធានាថាមានព័ត៌មានគ្រប់គ្រាន់ក្នុងសារតែមួយ។',
      ),
      LessonModel(
        id: 'lesson-comm-3',
        courseId: 'course-intern-comm',
        moduleId: 'mod-1',
        titleKh: '៣. របៀបទទួលយក Feedback ដោយមិនការពារខ្លួន (Receiving Feedback with Emotional Maturity)',
        titleEn: 'Receiving Constructive Criticism with Emotional Maturity',
        type: LessonType.text,
        orderIndex: 3,
        learningObjectives: '• បែងចែកដាច់រវាងការរិះគន់លើការងារ និងការវាយប្រហារលើតម្លៃផ្ទាល់ខ្លួន។\n'
            '• ចេះគ្រប់គ្រងអារម្មណ៍ការពារខ្លួន (Defensive mode) និងប្រើពាក្យអរគុណជាមុន។\n'
            '• សួរនាំដើម្បីទទួលបានដំណោះស្រាយកែលម្អជាក់ស្តែង។',
        shortExplanation: 'Feedback គឺជាកាដូសម្រាប់ការរីកចម្រើន។ អ្នកដែលឡើងតំណែងលឿន គឺជាអ្នកដែលចេះស្រូបយកចំណុចខ្វះខាតយកមកកែប្រែដោយស្ងប់ចិត្ត មិនមែនជាអ្នកពូកែដោះសារនោះឡើយ។',
        workplaceStory: '«នៅពេលប្រធានប្រាប់ថា របាយការណ៍របស់តារាមានចំណុចខុសច្រើន តារាមានអារម្មណ៍ខឹង មុខក្រហម និងព្យាយាមដោះសារថាដោយសារកុំព្យូទ័រយឺត និងទិន្នន័យមកពីផ្នែកផ្សេងមិនច្បាស់។ ប្រធានមានអារម្មណ៍ថា តារាពិបាកបង្រៀន។ '
            'ផ្ទុយទៅវិញ កល្យាណ ពេលជួបរឿងដូចគ្នា នាងបានដកដង្ហើមវែងៗ រួចនិយាយថា៖ "អរគុណបងដែលបានជួយកត់សម្គាល់! ខ្ញុំពិតជាខ្វះការប្រុងប្រយ័ត្នលើចំណុចនេះមែន។ តើបងគិតថាខ្ញុំគួរពិនិត្យលើទិន្នន័យចំណុចណាជាពិសេសដើម្បីកុំឱ្យខុសទៀត?"។ ប្រធានពេញចិត្តនឹងឥរិយាបថកល្យាណជាខ្លាំង ហើយបានផ្តល់ឱកាសឱ្យនាងកាន់គម្រោងធំៗជាបន្តបន្ទាប់។»',
        practicalExample: '✅ របៀបឆ្លើយតប ៣ ជំហាន៖\n'
            '១. ទទួលស្គាល់៖ "អរគុណបងចំពោះមតិកែលម្អនេះ។"\n'
            '២. បញ្ជាក់ការយល់ស្រប៖ "ខ្ញុំយល់ស្របថាការវិភាគទិន្នន័យចំណុចនេះមិនទាន់គ្រប់ជ្រុងជ្រោយទេ។"\n'
            '៣. សកម្មភាពកែតម្រូវ៖ "ខ្ញុំនឹងកែសម្រួលឡើងវិញ ហើយផ្ញើជូនបងនៅម៉ោង ៤ រសៀលនេះ"។',
        practicalExercise: 'អនុវត្តការដកដង្ហើមវែងៗ ៥ វិនាទីមុនពេលឆ្លើយតប នៅពេលទទួលបានការរិះគន់លើកិច្ចការរបស់អ្នក។',
        quizQuestions: [
          QuestionModel(
            id: 'q-comm-3',
            promptKh: 'នៅពេលប្រធាន ឬសហការីរិះគន់ថាកិច្ចការរបស់អ្នកមានកំហុសបច្ចេកទេសច្រើន តើប្រតិកម្មដំបូងដ៏ត្រឹមត្រូវបំផុតគឺជាអ្វី?',
            promptEn: 'When a manager points out technical errors in your work, what is the best initial reaction?',
            optionsKh: [
              'A. លើកហេតុផលភ្លាមៗថាដោយសារកុំព្យូទ័រគាំង ឬសហការីផ្សេងមិនបានជួយ។',
              'B. ស្ងប់អារម្មណ៍ ថ្លែងអំណរគុណចំពោះមតិកែលម្អ និងសួរបញ្ជាក់ចំណុចដែលត្រូវកែតម្រូវឱ្យបានច្បាស់។',
              'C. ឈប់និយាយស្តីជាមួយអ្នករិះគន់ព្រោះគិតថាគេមិនចូលចិត្តយើង។',
            ],
            optionsEn: [
              'A. Defend yourself immediately blaming computer or teammates.',
              'B. Stay calm, thank them for the feedback, and ask for specific improvement areas.',
              'C. Stop talking to the reviewer feeling personally attacked.',
            ],
            correctOptionIndex: 1,
            explanationKh: 'ការពន្យល់៖ ជម្រើស B បង្ហាញពី EQ ខ្ពស់ និងវិជ្ជាជីវៈ។ ការទទួលយក Feedback ដោយបើកចំហជួយឱ្យអ្នករៀនសូត្របានលឿន និងកសាងទំនុកចិត្តជាមួយថ្នាក់លើ។',
            explanationEn: 'Explanation: High EQ professionals welcome feedback as a learning tool.',
          ),
        ],
        reflection: 'តើប្រតិកម្មដំបូងរបស់អ្នកនៅពេលមានគេរិះគន់ការងាររបស់អ្នកគឺជាអ្វី? តើអ្នកមានទំនោរការពារខ្លួន ឬស្តាប់ដើម្បីកែលម្អ?',
        workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ នៅពេលទទួលបាន Feedback ថ្ងៃនេះ សូមនិយាយពាក្យ "អរគុណ" ជាមុនសិន មុននឹងពន្យល់ហេតុផលណាមួយ។',
      ),
      LessonModel(
        id: 'lesson-comm-4',
        courseId: 'course-intern-comm',
        moduleId: 'mod-1',
        titleKh: '៤. ការគ្រប់គ្រងពេលវេលា & ភាពគួរឱ្យទុកចិត្តក្នុងការងារ (Time Management & Professional Reliability)',
        titleEn: 'Time Management & Reliability in Workplace',
        type: LessonType.text,
        orderIndex: 4,
        learningObjectives: '• យល់ដឹងពីគោលការណ៍ Under-promise and Over-deliver ក្នុងការងារ។\n'
            '• ចេះប្រើប្រាស់ប្រព័ន្ធផ្តល់ដំណឹងជាមុន (Early Warning System) នៅពេលដឹងថាមិនអាចទាន់ Deadline។\n'
            '• កសាងកេរ្តិ៍ឈ្មោះជាបុគ្គលិកដែលអាចទុកចិត្តបាន (Reliable Professional)។',
        shortExplanation: 'ភាពគួរឱ្យទុកចិត្ត (Reliability) គឺជាទ្រព្យសម្បត្តិធំបំផុតរបស់បុគ្គលិក។ ប្រសិនបើអ្នកដឹងថានឹងយឺត សូមប្រាប់ជាមុន កុំរង់ចាំដល់គេមកទារទើបដោះសារ។',
        workplaceStory: '«សុផល ដឹងថាកិច្ចការរបស់គាត់មិនអាចរួចទាន់ម៉ោង ៥ ល្ងាចទេ ប៉ុន្តែគាត់ខ្លាចប្រធានស្តីបន្ទោស ក៏ស្ងៀមស្ងាត់រហូតដល់ម៉ោង ៥ ទើបប្រធានទូរស័ព្ទមកសួរ។ ពេលនោះប្រធានខឹងយ៉ាងខ្លាំងព្រោះគាត់ត្រូវយកឯកសារទៅប្រជុំជាមួយក្រុមប្រឹក្សាភិបាល។ '
            'ផ្ទុយទៅវិញ វិបុល កាលដែលដឹងថាកិច្ចការស្មុគស្មាញនៅម៉ោង ២ រសៀល គាត់បានទូរស័ព្ទទៅប្រាប់ប្រធានភ្លាមៗថា៖ "បង! ខ្ញុំជួបបញ្ហាបច្ចេកទេសលើទិន្នន័យគណនេយ្យ ខ្ញុំសុំពន្យារដល់ម៉ោង ១០ ព្រឹកស្អែក។ ប៉ុន្តែខ្ញុំបានផ្ញើទិន្នន័យបឋមជូនបងមើលសិន"។ ប្រធានអាចរៀបចំផែនការបម្រុងទាន់ពេលវេលា និងកោតសរសើរវិបុលថាជាមនុស្សមានទំនួលខុសត្រូវ។»',
        practicalExample: '✅ ក្បួន Early Warning៖\n'
            'រាយការណ៍ជាមុនយ៉ាងហោច ៣ ទៅ ៤ ម៉ោង មុនពេលដល់ Deadline ដោយបញ្ជាក់៖\n'
            '១. ស្ថានភាពបច្ចុប្បន្ន (បានប៉ុន្មានភាគរយ)\n'
            '២. ឧបសគ្គដែលកំពុងជួបប្រទះ\n'
            '៣. ដំណោះស្រាយ ឬម៉ោងថ្មីដែលសន្យាថានឹងរួចរាល់។',
        practicalExercise: 'កត់ត្រាកាលវិភាគការងារថ្ងៃស្អែករបស់អ្នក ដោយបន្ថែម Buffer time ២០% លើកិច្ចការនីមួយៗដើម្បីការពារឧបទ្ទវហេតុចៃដន្យ។',
        quizQuestions: [
          QuestionModel(
            id: 'q-comm-4',
            promptKh: 'នៅពេលអ្នកដឹងច្បាស់ថាមិនអាចបញ្ចប់ការងារទាន់ Deadline ម៉ោង ៥ ល្ងាចបានទេ តើអ្នកគួរធ្វើដូចម្តេច?',
            promptEn: 'When you realize at 2 PM that you cannot meet a 5 PM deadline, what should you do?',
            optionsKh: [
              'A. ស្ងាត់ស្ងៀមធ្វើរហូតដល់ផុតម៉ោង ៥ ហើយចាំដល់ថ្ងៃស្អែកទើបប្រាប់ថាធ្វើមិនទាន់។',
              'B. រាយការណ៍ជាមុនភ្លាមៗនៅម៉ោង ២ រសៀល ដោយពន្យល់ឧបសគ្គ និងស្នើសុំម៉ោងកំណត់ថ្មីជាក់លាក់។',
              'C. ប្រគល់ការងារមិនទាន់ចប់ទាំងប្រញាប់ប្រញាល់ដោយមិនខ្វល់ពីគុណភាព។',
            ],
            optionsEn: [
              'A. Stay quiet and wait for tomorrow to explain why you failed.',
              'B. Give an early warning immediately at 2 PM, explain obstacles and propose a realistic new deadline.',
              'C. Submit unfinished, poor quality work in a hurry.',
            ],
            correctOptionIndex: 1,
            explanationKh: 'ការពន្យល់៖ ជម្រើស B ផ្តល់ឱកាសឱ្យថ្នាក់លើរៀបចំផែនការបម្រុង (Contingency plan) និងរក្សាទំនុកចិត្តវិជ្ជាជីវៈ។',
            explanationEn: 'Explanation: Early communication allows contingency planning and protects trust.',
          ),
        ],
        reflection: 'តើកន្លងមកអ្នកធ្លាប់ធ្វើឱ្យបាត់បង់ទំនុកចិត្តដោយសារការយឺតយ៉ាវ Deadline ដែរឬទេ? តើអ្នកអាចកែលម្អប្រព័ន្ធគ្រប់គ្រងពេលវេលារបស់អ្នកយ៉ាងដូចម្តេច?',
        workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ពិនិត្យមើលកិច្ចការទាំងអស់ថ្ងៃនេះ ប្រសិនបើមានការងារណាមិនទាន់ សូមរាយការណ៍ជូនថ្នាក់លើឥឡូវនេះ។',
      ),
      LessonModel(
        id: 'lesson-comm-5',
        courseId: 'course-intern-comm',
        moduleId: 'mod-1',
        titleKh: '៥. ការគ្រប់គ្រងពេលវេលា និងការចាត់អាទិភាពតាម Eisenhower Matrix',
        titleEn: 'Workplace Time Management & Eisenhower Matrix',
        type: LessonType.text,
        orderIndex: 5,
        learningObjectives: '• បែងចែកដាច់ស្រឡះរវាងការងារ «បន្ទាន់ (Urgent)» និងការងារ «សំខាន់ (Important)»។\n'
            '• អនុវត្តក្បួនបំបាត់ការងារខ្ជះខ្ជាយពេលវេលា ដើម្បីសម្រេចលទ្ធផលស្នូលប្រចាំថ្ងៃ។\n'
            '• កសាងទម្លាប់រៀបចំ Top 3 Priorities មុនពេលចាប់ផ្តើមធ្វើការរាល់ព្រឹក។',
        shortExplanation: 'ការរវល់ (Being Busy) មិនមានន័យថាមានទិន្នផល (Being Productive) នោះទេ។ បុគ្គលិកជោគជ័យផ្តោតថាមពលលើការងារសំខាន់ៗដែលបង្កើតតម្លៃខ្ពស់បំផុតដល់ស្ថាប័ន។',
        workplaceStory: '«ចាន់ណា ជាបុគ្គលិកថ្មីដែលតែងតែរត់ឆ្លេឆ្លាពេញមួយថ្ងៃ៖ ឆ្លើយតប Telegram ភ្លាមៗ ជួយទិញកាហ្វេសហការី និងមើលអ៊ីមែលគ្រប់ ៥ នាទី។ នៅម៉ោង ៥ ល្ងាច នាងអស់កម្លាំងខ្លាំង ប៉ុន្តែរបាយការណ៍វិភាគទិន្នន័យដែលប្រធានប្រគល់ឱ្យបែរជាមិនទាន់បានចាប់ផ្តើមធ្វើសោះ។ '
            'ប្រធានផ្នែកបានហៅចាន់ណាមកណែនាំអំពីតារាង Eisenhower Matrix ដោយបង្រៀនឱ្យនាងបិទសំឡេង Notification ពេលកំពុងធ្វើកិច្ចការសំខាន់បំផុត។ ក្រោយពីអនុវត្តក្បួននេះ ចាន់ណាបញ្ចប់ការងារស្នូលបានមុនថ្ងៃត្រង់ជារៀងរាល់ថ្ងៃ។»',
        practicalExample: '✅ របៀបចាត់ចែងការងារ ៤ ប្រអប់៖\n'
            '១. បន្ទាន់ & សំខាន់៖ ធ្វើភ្លាមៗ (Do First - វិបត្តិ, Deadline ថ្ងៃនេះ)។\n'
            '២. មិនបន្ទាន់ តែសំខាន់៖ កំណត់ម៉ោងធ្វើច្បាស់លាស់ (Schedule - ផែនការយុទ្ធសាស្ត្រ, ការរៀនសូត្រ)។\n'
            '៣. បន្ទាន់ តែមិនសំខាន់៖ ផ្ទេរភារកិច្ចបើអាច (Delegate - ការឆ្លើយសារសួរព័ត៌មានទូទៅ)។\n'
            '៤. មិនបន្ទាន់ & មិនសំខាន់៖ លុបចោលទាំងស្រុង (Eliminate - ការអង្គុយអូសបណ្តាញសង្គមឥតប្រយោជន៍)។',
        practicalExercise: 'សរសេរបញ្ជីការងារ ៥ មុខដែលអ្នកត្រូវធ្វើនៅថ្ងៃស្អែក ហើយចាត់ចូលក្នុងប្រអប់ទាំង ៤ នៃ Eisenhower Matrix។',
        quizQuestions: [
          QuestionModel(
            id: 'q-comm-5',
            promptKh: 'នៅម៉ោង ៩ ព្រឹក អ្នកត្រូវបញ្ចប់របាយការណ៍លក់ប្រចាំខែ (Deadline ម៉ោង ១១ ព្រឹក) ស្រាប់តែមានមិត្តរួមការងារម្នាក់មកសុំឱ្យអ្នកជួយរៀបចំតុប្រជុំ។ តើអ្នកគួរឆ្លើយតបបែបណា?',
            promptEn: 'You have a critical report due at 11 AM. A colleague asks you to help arrange meeting chairs. How should you respond?',
            optionsKh: [
              'A. ឈប់ធ្វើរបាយការណ៍ ហើយទៅជួយរៀបចំតុរហូតដល់ម៉ោង ១១ ដើម្បីកុំឱ្យខូចចិត្តគេ។',
              'B. ឆ្លើយតបដោយសុភាព៖ «ខ្ញុំកំពុងជាប់របាយការណ៍បន្ទាន់ Deadline ម៉ោង ១១។ ក្រោយម៉ោង ១១ ខ្ញុំនឹងអាចជួយបងបាន ឬបងអាចសួរទៅប្អូន X បានទេ?»',
              'C. ស្រែកស្តីបន្ទោសឱ្យគាត់ថាគ្មានការយល់ចិត្ត។',
            ],
            optionsEn: [
              'A. Drop the report and help set up tables to please them.',
              'B. Politely decline: "I have an urgent deadline at 11 AM. I can help after 11 or you can ask X."',
              'C. Yell at them for being inconsiderate.',
            ],
            correctOptionIndex: 1,
            explanationKh: 'ការពន្យល់៖ ជម្រើស B រក្សាអាទិភាពការងារស្នូលរបស់ខ្លួនផង និងឆ្លើយតបប្រកបដោយការគួរសមវិជ្ជាជីវៈផង។',
            explanationEn: 'Explanation: Politely protecting your core focus while offering alternatives shows mature professional boundaries.',
          ),
        ],
        reflection: 'តើអ្នកចំណាយពេលប៉ុន្មានម៉ោងក្នុងមួយថ្ងៃលើការងារដែលមិនបង្កើតផលពិតប្រាកដដល់គោលដៅរបស់អ្នក?',
        workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ កំណត់កិច្ចការ Top 1 នៃថ្ងៃនេះ ហើយចំណាយពេល ៦០ នាទីផ្តោតតែលើវាដោយមិនបើកបណ្តាញសង្គម។',
      ),
      LessonModel(
        id: 'lesson-comm-6',
        courseId: 'course-intern-comm',
        moduleId: 'mod-1',
        titleKh: '៦. ការរៀបចំរបាយការណ៍សង្ខេបប្រចាំថ្ងៃជូនប្រធាន (Daily Standup Reporting)',
        titleEn: 'Writing High-Impact Daily Standup Reports',
        type: LessonType.text,
        orderIndex: 6,
        learningObjectives: '• ចេះសរសេររបាយការណ៍សង្ខេបតាមរូបមន្ត 3P (Progress, Plans, Problems)។\n'
            '• បង្ហាញភាពជាម្ចាស់ការ និងតម្លាភាពក្នុងការងារជូនថ្នាក់ដឹកនាំ។\n'
            '• លើកឡើងពីឧបសគ្គការងារទាន់ពេល ដើម្បីទទួលបានការគាំទ្ររហ័ស។',
        shortExplanation: 'ប្រធានផ្នែកមិនមានពេលអានរបាយការណ៍វែងអន្លាយនោះទេ។ របាយការណ៍សង្ខេបខ្លី ខ្លឹម និងចំចំណុចតាមទម្រង់ 3P គឺជាឧបករណ៍កសាងទំនុកចិត្តដ៏មានឥទ្ធិពលបំផុត។',
        workplaceStory: '«ពិសិដ្ឋ ជាបុគ្គលិកហាត់ការផ្នែក IT Support។ រាល់ល្ងាចម៉ោង ៥:៣០ គាត់តែងតែផ្ញើសារសង្ខេប ៣ ចំណុចទៅកាន់ Telegram ក្រុម៖ អ្វីដែលបានធ្វើរួច (Progress), អ្វីដែលនឹងធ្វើស្អែក (Plans), និងបញ្ហាប្រឈមដែលត្រូវការជំនួយ (Problems)។ '
            'ប្រធានផ្នែកពេញចិត្តយ៉ាងខ្លាំងព្រោះមិនបាច់ចំណាយពេលតាមសួរដេញដោល ហើយដឹងច្បាស់ពីទិន្នផលការងាររបស់ពិសិដ្ឋ។ ត្រឹមតែ ៣ ខែ ពិសិដ្ឋត្រូវបានផ្តល់ការងារពេញសិទ្ធិមុនកាលកំណត់។»',
        practicalExample: '✅ គំរូរបាយការណ៍ 3P ស្តង់ដារវិជ្ជាជីវៈ៖\n'
            'ជម្រាបសួរបង! របាយការណ៍ការងារថ្ងៃនេះរបស់ខ្ញុំ៖\n'
            '១. Progress (បានបញ្ចប់)៖ បានផ្ទៀងផ្ទាត់ទិន្នន័យអតិថិជន ៥០ នាក់ និងរៀបចំវិក្កយបត្ររួចរាល់។\n'
            '២. Plans (គម្រោងថ្ងៃស្អែក)៖ ទាក់ទងអតិថិជន ២០ នាក់បន្ទាប់ និងធ្វើបច្ចុប្បន្នភាពឯកសារប្រព័ន្ធ។\n'
            '៣. Problems (ឧបសគ្គ)៖ ប្រព័ន្ធអ៊ីនធឺណិតជាន់ទី ២ រអាក់រអួល បានរាយការណ៍ទៅ IT រួចរាល់។',
        practicalExercise: 'អនុវត្តការសរសេររបាយការណ៍ 3P សម្រាប់កិច្ចការដែលអ្នកបានធ្វើនៅថ្ងៃនេះ។',
        quizQuestions: [
          QuestionModel(
            id: 'q-comm-6',
            promptKh: 'តើគោលបំណងចម្បងនៃរបាយការណ៍សង្ខេបប្រចាំថ្ងៃ (Daily 3P Report) គឺជាអ្វី?',
            promptEn: 'What is the primary purpose of a Daily 3P Report?',
            optionsKh: [
              'A. សរសេរអួតសរសើរខ្លួនឯងឱ្យប្រធានគិតថាខ្លួនរវល់ខ្លាំង។',
              'B. បង្ហាញតម្លាភាពការងារ រក្សាការតម្រង់ទិសដៅជាមួយក្រុម និងលើកឡើងពីបញ្ហាដើម្បីដោះស្រាយទាន់ពេល។',
              'C. ធ្វើគ្រាន់តែជាកិច្ចបំពេញកាតព្វកិច្ចដើម្បីកុំឱ្យត្រូវស្តីបន្ទោស។',
            ],
            optionsEn: [
              'A. Brag about how busy you are.',
              'B. Provide work transparency, maintain alignment, and raise blockers early for resolution.',
              'C. Pure compliance to avoid getting reprimanded.',
            ],
            correctOptionIndex: 1,
            explanationKh: 'ការពន្យល់៖ ជម្រើស B បង្ហាញពីគោលបំណងពិតប្រាកដនៃតម្លាភាពវិជ្ជាជីវៈ និងការសហការជាក្រុម។',
            explanationEn: 'Explanation: Daily reporting ensures transparent communication, alignment, and fast bottleneck removal.',
          ),
        ],
        reflection: 'តើប្រធានរបស់អ្នកដឹងច្បាស់ពីលទ្ធផលការងារប្រចាំថ្ងៃរបស់អ្នកកម្រិតណា? តើការផ្ញើសារ 3P អាចជួយកាត់បន្ថយការយល់ច្រឡំបានទេ?',
        workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ សាកល្បងរៀបចំរបាយការណ៍ 3P មួយច្បាប់ផ្ញើជូនប្រធានរបស់អ្នកនៅល្ងាចនេះ។',
      ),
      ...ExtraLessonsPart1.internLessons,
    ],

    // =========================================================================
    // 2. JUNIOR TO SENIOR COURSE (course-eq-critical)
    // =========================================================================
    'course-eq-critical': [
      LessonModel(
        id: 'lesson-eq-1',
        courseId: 'course-eq-critical',
        moduleId: 'mod-1',
        titleKh: '១. ការគ្រប់គ្រងអារម្មណ៍ និងសម្ពាធក្រោមភាពតានតឹង (Emotional Regulation & Grace Under Pressure)',
        titleEn: 'Emotional Regulation & Composure Under Stress',
        type: LessonType.text,
        orderIndex: 1,
        learningObjectives: '• យល់ដឹងពីបាតុភូត Amygdala Hijack នៅកន្លែងធ្វើការ (ការផ្ទុះកំហឹងភ្លាមៗដោយគ្មានការគិត)។\n'
            '• អនុវត្តរូបមន្ត STOP (Stop, Take a breath, Observe, Proceed) ពេលជួបសម្ពាធខ្លាំង។\n'
            '• បង្កើនភាពស្ងប់ស្ងាត់ដើម្បីធ្វើការសម្រេចចិត្តប្រកបដោយតក្កវិជ្ជា។',
        shortExplanation: 'ភាពឆ្លាតវៃខាងផ្លូវចិត្ត (EQ) មិនមែនជាការសង្កត់អារម្មណ៍មិនឱ្យកើតមាននោះទេ ប៉ុន្តែជាសមត្ថភាពដឹងពីអារម្មណ៍ខ្លួនឯង ហើយជ្រើសរើសការឆ្លើយតបដែលឆ្លាតវៃជំនួសឱ្យប្រតិកម្មតបត។',
        workplaceStory: '«រតនៈ ជាអ្នកសម្របសម្រួលគម្រោង (Project Coordinator) នៃក្រុមហ៊ុនដឹកជញ្ជូន។ ថ្ងៃមួយ ប្រព័ន្ធបច្ចេកវិទ្យាធ្លាក់ចុះ អតិថិជន VIP ម្នាក់បានទូរស័ព្ទមកស្រែកគំហក និងប្រើពាក្យប្រមាថយ៉ាងខ្លាំង។ '
            'រតនៈមានអារម្មណ៍ថាបេះដូងលោតញាប់ និងចង់ស្រែកតបតវិញភ្លាមៗ។ ប៉ុន្តែគាត់បានដកដង្ហើមវែងៗ ផ្អាក ៣ វិនាទី រួចឆ្លើយតបដោយសំឡេងស្ងប់ស្ងាត់៖ "ខ្ញុំយល់ច្បាស់ពីការខកចិត្តរបស់បង។ ឥឡូវនេះ ខ្ញុំកំពុងតាមដានកញ្ចប់ទំនិញរបស់បងដោយផ្ទាល់ជាមួយប្រធានឃ្លាំង ហើយខ្ញុំនឹងផ្ញើតេឡេក្រាមបញ្ជាក់ជូនបងក្នុងរយៈពេល ១០ នាទី"។ អតិថិជនបានបន្ទន់សំឡេងភ្លាមៗ ហើយក្រោយមកថែមទាំងបានផ្ញើសារសុំទោសរតនៈវិញផងដែរ។»',
        practicalExample: '✅ យុទ្ធសាស្ត្រ ៤ ជំហានពេលជួបសម្ពាធ៖\n'
            '១. STOP៖ ផ្អាកការវាយអត្ថបទ ឬការនិយាយភ្លាមៗ។\n'
            '២. BREATHE៖ ដកដង្ហើមចូលតាមច្រមុះ ៤ វិនាទី និងដកចេញយឺតៗ ៦ វិនាទី។\n'
            '៣. OBSERVE៖ សង្កេតមើល៖ "តើខ្ញុំកំពុងខឹង ឬភ័យខ្លាច? តើគោលដៅពិតប្រាកដរបស់ខ្ញុំគឺអ្វី?"\n'
            '៤. PROCEED៖ ឆ្លើយតបដោយផ្អែកលើដំណោះស្រាយ មិនមែនលើអារម្មណ៍។',
        practicalExercise: 'អនុវត្តបច្ចេកទេសប្រអប់ដង្ហើម (Box Breathing 4-4-4) រយៈពេល ២ នាទី នៅពេលអ្នកមានអារម្មណ៍តានតឹងជាមួយការងារ។',
        quizQuestions: [
          QuestionModel(
            id: 'q-eq-1',
            promptKh: 'នៅពេលអតិថិជន ឬសហការីកំពុងស្រែកបន្ទោសអ្នកដោយកំហឹង តើការឆ្លើយតបបែបណាដែលបង្ហាញពី EQ ខ្ពស់បំផុត?',
            promptEn: 'When a client or colleague is yelling at you angrily, what response reflects the highest EQ?',
            optionsKh: [
              'A. ស្រែកតបតវិញដើម្បីការពារកិត្តិយសខ្លួនឯងកុំឱ្យគេមើលងាយ។',
              'B. ស្ងាត់ស្ងៀម ដកដង្ហើមវែងៗ ទទួលស្គាល់អារម្មណ៍ខកចិត្តរបស់គេ រួចបង្វែរការសន្ទនាទៅរកដំណោះស្រាយជាក់ស្តែង។',
              'C. បិទទូរស័ព្ទ ឬដើរចេញភ្លាមៗដោយមិននិយាយអ្វីទាំងអស់។',
            ],
            optionsEn: [
              'A. Shout back to defend your pride.',
              'B. Stay composed, acknowledge their frustration, and steer conversation toward concrete solutions.',
              'C. Hang up or walk away abruptly without a word.',
            ],
            correctOptionIndex: 1,
            explanationKh: 'ការពន្យល់៖ ជម្រើស B បំបែករលកកំហឹងដោយការយល់ចិត្ត (De-escalation) និងរក្សាភាពជាអ្នកវិជ្ជាជីវៈខ្ពស់។',
            explanationEn: 'Explanation: De-escalating with empathy deactivates anger and keeps problem-solving intact.',
          ),
        ],
        reflection: 'តើកត្តាជំរុញ (Trigger) អារម្មណ៍ខឹងរបស់អ្នកនៅកន្លែងធ្វើការគឺជាអ្វី? តើអ្នកអាចដឹងខ្លួនមុនពេលអារម្មណ៍នោះផ្ទុះឡើងដោយរបៀបណា?',
        workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ នៅពេលមានសារ ឬអ៊ីមែលដែលធ្វើឱ្យអ្នកខឹង សូមផ្អាកយ៉ាងហោច ៥ នាទីសិនមុននឹងសរសេរតបត។',
      ),
      LessonModel(
        id: 'lesson-eq-2',
        courseId: 'course-eq-critical',
        moduleId: 'mod-1',
        titleKh: '២. វិធីសាស្ត្រវិភាគរកឫសគល់នៃបញ្ហា 5 Whys (Root Cause Problem Solving in SME Context)',
        titleEn: 'Root Cause Problem Solving with 5 Whys',
        type: LessonType.text,
        orderIndex: 2,
        learningObjectives: '• បែងចែកដាច់រវាង "រោគសញ្ញាខាងក្រៅ (Symptom)" និង "ឫសគល់ពិតប្រាកដ (Root Cause)" នៃបញ្ហា។\n'
            '• អនុវត្តឧបករណ៍ 5 Whys លើបញ្ហាការងារជាក់ស្តែងក្នុងបរិបទអាជីវកម្មកម្ពុជា។\n'
            '• កសាងដំណោះស្រាយជាប្រព័ន្ធការពារកុំឱ្យបញ្ហាកើតឡើងដដែលៗ។',
        shortExplanation: 'ការដោះស្រាយតែរោគសញ្ញាប្រៀបដូចជាការលេបថ្នាំបំបាត់ការឈឺក្បាលពេលមានជំងឺគ្រុនក្តៅ។ អ្នកដឹកនាំល្អតែងតែជីកកកាយរកឫសគល់ពិតប្រាកដ ដើម្បីដោះស្រាយម្តងចប់ជាស្ថាពរ។',
        workplaceStory: '«ហាងលក់សម្ភារសំណង់មួយតែងតែដឹកជញ្ជូនទំនិញខុសឱ្យអតិថិជនរៀងរាល់សប្តាហ៍។ ពីមុន ម្ចាស់ហាងតែងតែស្តីបន្ទោស និងកាត់ប្រាក់ខែអ្នកបើកបរ (ដោះស្រាយរោគសញ្ញា)។ '
            'ក្រោយមក អ្នកគ្រប់គ្រងថ្មីបានអនុវត្ត 5 Whys៖\n'
            '• ហេតុអ្វីដឹកខុស? ដោយសារលើកទំនិញខុសកូដពីឃ្លាំង។\n'
            '• ហេតុអ្វីលើកខុសកូដ? ដោយសារក្រដាសកត់ត្រាការកម្ម៉ង់សរសេរដោយដៃអានមិនច្បាស់។\n'
            '• ហេតុអ្វីសរសេរដៃ? ដោយសារកុំព្យូទ័រនៅតុលក់គាំងមិនដំណើរការ។\n'
            '• ហេតុអ្វីកុំព្យូទ័រគាំងយូរហើយមិនជួសជុល? ដោយសារគ្មានអ្នកណាទទួលខុសត្រូវថែទាំ IT។\n'
            'ឫសគល់ពិតប្រាកដមិនមែនអ្នកបើកបរខ្ជិលទេ ប៉ុន្តែដោយសារខ្វះការថែទាំប្រព័ន្ធ IT! ក្រោយពីជួសជុលកុំព្យូទ័រ និងបោះពុម្ពវិក្កយបត្រមាន Barcode កំហុសដឹកជញ្ជូនធ្លាក់ចុះដល់សូន្យ។»',
        practicalExample: '✅ របៀបប្រើ 5 Whys៖\n'
            'ចោទសួរ "ហេតុអ្វី?" ជាបន្តបន្ទាប់យ៉ាងតិច ៥ ដង រហូតដល់ជួបនឹង "ចន្លោះប្រហោងនៃប្រព័ន្ធ (System Failure)" ឬ "កង្វះដំណើរការស្តង់ដារ (Lack of SOP)"។',
        practicalExercise: 'ជ្រើសរើសបញ្ហាការងារមួយដែលធ្លាប់កើតឡើងក្នុងក្រុមរបស់អ្នក ហើយសរសេរ 5 Whys ស្វែងរកឫសគល់ពិតប្រាកដ។',
        quizQuestions: [
          QuestionModel(
            id: 'q-eq-2',
            promptKh: 'របាយការណ៍លក់ប្រចាំខែតែងតែខុសទិន្នន័យជាប្រចាំ។ តើការអនុវត្តបែបណាដែលជាការដោះស្រាយបែបឫសគល់ (Root Cause)?',
            promptEn: 'Monthly sales reports have recurring errors. What is a true root-cause solution?',
            optionsKh: [
              'A. ដាក់ទណ្ឌកម្ម និងកាត់ប្រាក់លើកទឹកចិត្តបុគ្គលិកដែលធ្វើខុស។',
              'B. ស្វែងរកមូលហេតុប្រព័ន្ធ បង្កើតទម្រង់ Excel Template ដែលមានរូបមន្តស្វ័យប្រវត្ត និងរៀបចំការបណ្តុះបណ្តាលខ្លី។',
              'C. ឱ្យបុគ្គលិកម្នាក់ទៀតជួយអង្គុយផ្ទៀងផ្ទាត់រាល់ល្ងាចដោយមិនកែប្រែប្រព័ន្ធ។',
            ],
            optionsEn: [
              'A. Penalize and deduct bonuses of the reporting staff.',
              'B. Diagnose system flaws, automate template formulas, and provide short training.',
              'C. Assign another person to manually audit every night without fixing templates.',
            ],
            correctOptionIndex: 1,
            explanationKh: 'ការពន្យល់៖ ជម្រើស B ដោះស្រាយឫសគល់តាមរយៈការកែលម្អប្រព័ន្ធ (Systemic fix) និងការអភិវឌ្ឍជំនាញ ដែលជួយការពារកំហុសជាអចិន្ត្រៃយ៍។',
            explanationEn: 'Explanation: Fixing templates and workflows prevents the recurring root cause permanently.',
          ),
        ],
        reflection: 'តើមានបញ្ហាអ្វីខ្លះក្នុងស្ថាប័នរបស់អ្នកដែលកំពុងកើតឡើងដដែលៗរៀងរាល់ខែ? តើឫសគល់ពិតប្រាកដអាចមកពីកង្វះប្រព័ន្ធ ឬដំណើរការមិនច្បាស់លាស់ដែរឬទេ?',
        workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ គូសផែនទី 5 Whys លើបញ្ហាមួយដែលកំពុងរំខានអ្នកក្នុងសប្តាហ៍នេះ រួចរៀបចំដំណោះស្រាយប្រព័ន្ធ ១ យ៉ាង។',
      ),
      LessonModel(
        id: 'lesson-eq-3',
        courseId: 'course-eq-critical',
        moduleId: 'mod-1',
        titleKh: '៣. ការស្តាប់ដោយការយល់ចិត្ត និងការបញ្ចេញទស្សនៈប្រកបដោយតក្កវិជ្ជា (Active Listening & Empathy in Workplace)',
        titleEn: 'Active Listening & Empathic Communication',
        type: LessonType.text,
        orderIndex: 3,
        learningObjectives: '• អនុវត្តបច្ចេកទេស Paraphrasing (ឆ្លុះបញ្ចាំងអ្វីដែលគេនិយាយ) ដើម្បីបង្កើតការទុកចិត្ត។\n'
            '• បែងចែករវាងការស្តាប់ដើម្បីឆ្លើយតប (Listen to reply) និងការស្តាប់ដើម្បីយល់ចិត្ត (Listen to understand)។\n'
            '• បញ្ចេញមតិខ្វែងគំនិតដោយមិនធ្វើឱ្យប៉ះពាល់ដល់អារម្មណ៍អ្នកដទៃ។',
        shortExplanation: 'មនុស្សភាគច្រើនមិនស្តាប់ដើម្បីយល់នោះទេ គឺស្តាប់ដើម្បីរង់ចាំដល់វេនខ្លួនឯងតបតវិញប៉ុណ្ណោះ។ អ្នកដែលចេះស្តាប់ដោយការយល់ចិត្ត តែងតែទទួលបានការគោរព និងអាចបញ្ចុះបញ្ចូលអ្នកដទៃបានយ៉ាងងាយស្រួល។',
        workplaceStory: '«នៅក្នុងកិច្ចប្រជុំយុទ្ធសាស្ត្រលក់ ផ្នែកលក់ និងផ្នែកទីផ្សារប្រកែកគ្នាយ៉ាងខ្លាំង។ ផ្នែកលក់បន្ទោសថាទិន្នន័យអតិថិជន (Leads) មិនមានគុណភាព ខណៈដែលផ្នែកទីផ្សារបន្ទោសថាផ្នែកលក់ខ្ជិលទាក់ទង។ '
            'សុវណ្ណ បានធ្វើអន្តរាគមន៍ដោយប្រើការស្តាប់យល់ចិត្ត៖ "បងសំណាងមកពីផ្នែកលក់ បារម្ភថាកូនចៅបងចំណាយពេលច្រើនលើលេខដែលទាក់ទងមិនចូល មែនទេ? ចំណែកបងស្រីមុំមកពីផ្នែកទីផ្សារ បារម្ភថាយុទ្ធនាការផ្សព្វផ្សាយចំណាយលុយច្រើន តែគ្មានការតាមដានទាន់ពេល មែនទេ?"។ '
            'ភាគីទាំងពីរស្តាប់ហើយមានអារម្មណ៍ថាមានគេយល់ចិត្ត ក៏ឈប់ប្រកែក ហើយចាប់ផ្តើមកំណត់លក្ខណៈសម្បត្តិ Lead រួមគ្នា។»',
        practicalExample: '✅ គំរូឃ្លា Paraphrasing ដ៏មានឥទ្ធិពល៖\n'
            '• "ប្រសិនបើខ្ញុំយល់ត្រឹមត្រូវ អ្វីដែលបងកំពុងបារម្ភធំបំផុតគឺ... មែនទេ?"\n'
            '• "បងចង់មានន័យថា ប្រសិនបើយើងបន្ថែមបុគ្គលិកផ្នែកនេះ នោះការងារនឹងលឿនជាងមុន មែនទេ?"',
        practicalExercise: 'នៅក្នុងកិច្ចសន្ទនាបន្ទាប់ សូមធ្វើការសង្ខេបអ្វីដែលដៃគូសន្ទនានិយាយ មុននឹងចាប់ផ្តើមបញ្ចេញមតិផ្ទាល់ខ្លួនរបស់អ្នក។',
        quizQuestions: [
          QuestionModel(
            id: 'q-eq-3',
            promptKh: 'សហការីម្នាក់មកត្អូញត្អែរជាមួយអ្នកថាគាត់ហត់នឿយ និងមានសម្ពាធការងារច្រើនពេក។ តើការឆ្លើយតបបែបណាដែលបង្ហាញពី Active Listening & Empathy?',
            promptEn: 'A teammate vents to you that they are overwhelmed with work. What response reflects active listening?',
            optionsKh: [
              'A. និយាយកាត់ភ្លាមថា "ប៉ុណ្ណឹងមិនទាន់ហត់ទេ ខ្ញុំធ្វើការច្រើនជាងអ្នកឯងទ្វេដងផង!"',
              'B. ស្តាប់ដោយយកចិត្តទុកដាក់ ឆ្លុះបញ្ចាំងអារម្មណ៍របស់គាត់ ("ខ្ញុំឃើញប្អូនខំប្រឹងខ្លាំងណាស់សប្តាហ៍នេះ") និងសួរថាតើអាចជួយសម្រាលចំណុចណាខ្លះ។',
              'C. ប្រាប់គាត់ឱ្យលាលែងពីការងារភ្លាមទៅបើពិបាកពេក។',
            ],
            optionsEn: [
              'A. Interrupt saying "That is nothing, I work twice as hard as you!"',
              'B. Listen attentively, validate their feeling, and ask how you can help lighten the load.',
              'C. Tell them to quit immediately if it is too hard.',
            ],
            correctOptionIndex: 1,
            explanationKh: 'ការពន្យល់៖ ជម្រើស B ផ្តល់សុវត្ថិភាពផ្លូវចិត្ត (Psychological safety) និងកសាងចំណងសាមគ្គីភាពក្នុងក្រុមការងារ។',
            explanationEn: 'Explanation: Validating their feelings builds psychological safety and team trust.',
          ),
        ],
        reflection: 'តើអ្នកជាមនុស្សចូលចិត្តស្តាប់ដើម្បីឆ្លើយតប ឬស្តាប់ដើម្បីយល់ចិត្តអ្នកដទៃ? តើការកែប្រែទម្លាប់នេះអាចជួយទំនាក់ទំនងការងាររបស់អ្នកយ៉ាងដូចម្តេច?',
        workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ស្តាប់សហការីម្នាក់និយាយឱ្យចប់ដោយមិនកាត់សម្តីសូម្បីតែម្តង រួចសង្ខេបចំណុចសំខាន់របស់គាត់ឡើងវិញ។',
      ),
      LessonModel(
        id: 'lesson-eq-4',
        courseId: 'course-eq-critical',
        moduleId: 'mod-1',
        titleKh: '៤. ការយកឈ្នះលើ Imposter Syndrome និងការកសាង Growth Mindset',
        titleEn: 'Overcoming Imposter Syndrome & Cultivating Growth Mindset',
        type: LessonType.text,
        orderIndex: 4,
        learningObjectives: '• កំណត់សម្គាល់អារម្មណ៍គិតថាខ្លួនឯងមិនសក្តិសម (Imposter Syndrome)។\n'
            '• ប្តូរភាសាផ្ទៃក្នុងពី Fixed Mindset ទៅជា Growth Mindset ដោយប្រើពាក្យ "មិនទាន់ (Not Yet)"។\n'
            '• កសាងទំនុកចិត្តលើខ្លួនឯងតាមរយៈទិន្នន័យសមិទ្ធផលជាក់ស្តែង (Brag Sheet)។',
        shortExplanation: 'បុគ្គលិកដែលមានសមត្ថភាពខ្ពស់ភាគច្រើនតែងតែមានអារម្មណ៍ថាខ្លួនឯងមិនពូកែគ្រប់គ្រាន់ ហើយខ្លាចគេចាប់បានថាមិនចេះ។ ការយល់ដឹងថាការមិនចេះគឺជាចំណុចចាប់ផ្តើមនៃការរៀនសូត្រ គឺជាគន្លឹះឆ្ពោះទៅកាន់ភាពជោគជ័យ។',
        workplaceStory: '«ចរិយា ទទួលបានការតែងតាំងជា Senior Data Analyst ក្នុងវ័យ ២៥ ឆ្នាំ។ នាងតែងតែភ័យខ្លាចរាល់ពេលចូលរួមប្រជុំជាមួយនាយកប្រតិបត្តិ ដោយគិតថានាងឡើងតំណែងនេះដោយសារសំណាងល្អប៉ុណ្ណោះ។ នាងលែងហ៊ានបញ្ចេញមតិព្រោះខ្លាចនិយាយខុស។ '
            'ប្រធានរបស់នាងបានកត់សម្គាល់ឃើញ ហើយបានឱ្យនាងធ្វើលំហាត់មួយ៖ កត់ត្រាគម្រោងជោគជ័យទាំង ៥ ដែលនាងបានដឹកនាំក្នុងរយៈពេល ១ ឆ្នាំកន្លងមក ព្រមទាំងតួលេខចំណេញដែលក្រុមហ៊ុនទទួលបាន។ នៅពេលមើលឃើញទិន្នន័យជាក់ស្តែង ចរិយាដឹងខ្លួនថាសមត្ថភាពរបស់នាងពិតជាសក្តិសម ហើយនាងបានយកឈ្នះការភ័យខ្លាចនោះបានទាំងស្រុង។»',
        practicalExample: '✅ របៀបប្តូរផ្នត់គំនិត (Mindset Shifts)៖\n'
            '• Fixed Mindset៖ "ខ្ញុំមិនពូកែរឿងលេខនេះទេ ខ្ញុំធ្វើមិនកើតឡើយ។"\n'
            '• Growth Mindset៖ "ខ្ញុំមិនទាន់ស្ទាត់ជំនាញលើរឿងលេខនេះនៅឡើយទេ ប៉ុន្តែខ្ញុំអាចរៀន និងអនុវត្តបន្ថែមបាន។"',
        practicalExercise: 'បង្កើតឯកសារ "Brag Sheet" សង្ខេបមួយ ដោយកត់ត្រាសមិទ្ធផលការងារ ៣ យ៉ាងដែលអ្នកមានមោទនភាពបំផុតក្នុងអាជីពរបស់អ្នក។',
        quizQuestions: [
          QuestionModel(
            id: 'q-eq-4',
            promptKh: 'នៅពេលត្រូវបានប្រគល់គម្រោងបច្ចេកវិទ្យាថ្មីដែលអ្នកមិនធ្លាប់ធ្វើពីមុនមក តើផ្នត់គំនិត Growth Mindset បែបណាដែលគួរប្រកាន់យក?',
            promptEn: 'When assigned a brand-new project you have never done, what is the Growth Mindset perspective?',
            optionsKh: [
              'A. បដិសេធភ្លាមៗព្រោះខ្លាចធ្វើខុសហើយប៉ះពាល់ដល់កេរ្តិ៍ឈ្មោះខ្លួនឯង។',
              'B. ទទួលយកដោយភាពស្មោះត្រង់ថាខ្លួនមិនទាន់ចេះគ្រប់ជ្រុងជ្រោយ ប៉ុន្តែត្រៀមខ្លួនស្រាវជ្រាវ និងសួរនាំអ្នកជំនាញដើម្បីរៀនសូត្រ។',
              'C. ធ្វើពុតជាចេះគ្រប់យ៉ាង ហើយលួចធ្វើស្ងាត់ៗដោយមិនហ៊ានសួរអ្នកណា។',
            ],
            optionsEn: [
              'A. Reject immediately fearing failure and reputation damage.',
              'B. Accept honestly acknowledging you do not know yet, but commit to researching and learning proactively.',
              'C. Pretend you know everything and work secretly without asking anyone.',
            ],
            correctOptionIndex: 1,
            explanationKh: 'ការពន្យល់៖ ជម្រើស B បង្ហាញពីភាពក្លាហានក្នុងការរៀនសូត្រ (Vulnerability & Growth) ដែលជាចរិតលក្ខណៈស្នូលនៃបុគ្គលិកឆ្នើម។',
            explanationEn: 'Explanation: Embracing the learning curve with proactive honesty is the core of Growth Mindset.',
          ),
        ],
        reflection: 'តើអ្នកធ្លាប់មានអារម្មណ៍ថាខ្លួនឯងមិនសក្តិសមនឹងតំណែង ឬការងារបច្ចុប្បន្នដែរឬទេ? តើសមិទ្ធផលពិតប្រាកដអ្វីខ្លះដែលអ្នកធ្លាប់សម្រេចបាន?',
        workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ កត់ត្រាសមិទ្ធផលជោគជ័យមួយរបស់អ្នកក្នុងសប្តាហ៍នេះចូលក្នុង Private Notes។',
      ),
      LessonModel(
        id: 'lesson-eq-5',
        courseId: 'course-eq-critical',
        moduleId: 'mod-1',
        titleKh: '៥. ការវិភាគរកឫសគល់នៃបញ្ហាតាមវិធី 5 Whys & Fishbone Diagram',
        titleEn: 'Root Cause Problem Solving with 5 Whys & Fishbone',
        type: LessonType.text,
        orderIndex: 5,
        learningObjectives: '• ចេះស្វែងរកឫសគល់ពិតប្រាកដនៃបញ្ហា ដោយមិនដោះស្រាយត្រឹមតែរោគសញ្ញាខាងក្រៅ។\n'
            '• អនុវត្តក្បួនសួរដេញដោល «ហេតុអ្វី?» ៥ ដង (5 Whys Technique) លើឧបសគ្គការងារជាក់ស្តែង។\n'
            '• បង្កើតដំណោះស្រាយប្រកបដោយចីរភាព ដើម្បីកុំឱ្យបញ្ហាចាស់កើតឡើងដដែលៗ។',
        shortExplanation: 'នៅពេលជួបបញ្ហា មនុស្សទូទៅតែងតែស្តីបន្ទោសមនុស្ស ឬប្រញាប់បិទបាំងរោគសញ្ញា។ អ្នកជំនាញពិតប្រាកដប្រើបច្ចេកទេស 5 Whys ដើម្បីស្វែងរកកំហុសក្នុងប្រព័ន្ធ ឬដំណើរការការងារ។',
        workplaceStory: '«អតិថិជន VIP ម្នាក់បានខឹងសម្បាយ៉ាងខ្លាំងព្រោះការបញ្ជាទិញទំនិញយឺត ៣ ថ្ងៃ។ ប្រធានដំបូងចង់ស្តីបន្ទោសអ្នកបើកបរឡានដឹក។ ប៉ុន្តែរតនា (Senior Specialist) បានស្នើឱ្យប្រើវិធី 5 Whys៖\n'
            '១. ហេតុអ្វីទំនិញយឺត? ព្រោះឡានចេញយឺត។\n'
            '២. ហេតុអ្វីឡានចេញយឺត? ព្រោះបុគ្គលិកឃ្លាំងរៀបចំឥវ៉ាន់មិនទាន់។\n'
            '៣. ហេតុអ្វីរៀបចំមិនទាន់? ព្រោះវិក្កយបត្របញ្ជាទិញចេញយឺត។\n'
            '៤. ហេតុអ្វីចេញយឺត? ព្រោះកុំព្យូទ័រគណនេយ្យគាំងពេលចេញវិក្កយបត្រ។\n'
            '៥. ហេតុអ្វីកុំព្យូទ័រគាំង? ព្រោះមិនដែលបានធ្វើបច្ចុប្បន្នភាពប្រព័ន្ធសុវត្ថិភាពទាល់តែសោះ។\n'
            'លទ្ធផល៖ ឫសគល់បញ្ហាគឺប្រព័ន្ធ IT មិនមែនអ្នកបើកបរឡាននោះទេ។ ក្រុមហ៊ុនបានដោះស្រាយចំបញ្ហា និងចំណេញពេលវេលាយ៉ាងច្រើន។»',
        practicalExample: '✅ របៀបប្រើប្រាស់ 5 Whys ក្នុងកិច្ចប្រជុំ៖\n'
            '«មុនពេលយើងស្តីបន្ទោសបុគ្គលណាម្នាក់ តើយើងអាចសួរ "ហេតុអ្វី?" ជាមួយគ្នាដើម្បីរកមើលថាតើប្រព័ន្ធ ឬដំណើរការ (Process) ណាដែលត្រូវការការកែសម្រួល?»',
        practicalExercise: 'ជ្រើសរើសកំហុសការងារមួយដែលទើបតែកើតឡើងក្នុងក្រុមរបស់អ្នក ហើយសាកល្បងសរសេរ 5 Whys ដើម្បីរកឫសគល់។',
        quizQuestions: [
          QuestionModel(
            id: 'q-eq-5',
            promptKh: 'នៅពេលមានកំហុសឆ្គងកើតឡើងក្នុងគម្រោង តើអ្នកដែលមានជំនាញ Critical Thinking ខ្ពស់គួរធ្វើបែបណា?',
            promptEn: 'When an error occurs in a project, what should someone with high Critical Thinking do?',
            optionsKh: [
              'A. ស្វែងរកមនុស្សដែលធ្វើខុស ហើយស្តីបន្ទោសជាសាធារណៈ។',
              'B. ផ្តោតលើការវិភាគដំណើរការការងារ (Process) តាមរយៈវិធី 5 Whys ដើម្បីកែប្រែប្រព័ន្ធកុំឱ្យកើតឡើងម្តងទៀត។',
              'C. លាក់បាំងកំហុសនោះដើម្បីកុំឱ្យថ្នាក់លើដឹង។',
            ],
            optionsEn: [
              'A. Find who made the mistake and publicly blame them.',
              'B. Analyze the work process using 5 Whys to fix the root cause and prevent recurrence.',
              'C. Conceal the mistake to protect team reputation.',
            ],
            correctOptionIndex: 1,
            explanationKh: 'ការពន្យល់៖ ជម្រើស B ផ្តោតលើការកែលម្អប្រព័ន្ធ (Systemic improvement) មិនមែនលើការវាយប្រហារបុគ្គលឡើយ។',
            explanationEn: 'Explanation: Focusing on process and root cause creates systemic solutions and psychological safety.',
          ),
        ],
        reflection: 'តើអ្នកធ្លាប់ដោះស្រាយបញ្ហាការងារមួយដដែលៗដោយសារមិនបានដោះស្រាយចំឫសគល់ដែរឬទេ?',
        workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ អនុវត្តការសួរ 5 Whys លើបញ្ហាកកស្ទះមួយក្នុងការងាររបស់អ្នកថ្ងៃនេះ។',
      ),
      LessonModel(
        id: 'lesson-eq-6',
        courseId: 'course-eq-critical',
        moduleId: 'mod-1',
        titleKh: '៦. ការកសាងភាពធន់នឹងសម្ពាធការងារ និងការទប់ស្កាត់ការឆេះដួងចិត្ត (Emotional Resilience & Burnout)',
        titleEn: 'Workplace Emotional Resilience & Burnout Prevention',
        type: LessonType.text,
        orderIndex: 6,
        learningObjectives: '• យល់ដឹងពីសញ្ញាដំបូងនៃការឆេះដួងចិត្ត (Burnout Signs) និងសម្ពាធអារម្មណ៍អវិជ្ជមាន។\n'
            '• អនុវត្តបច្ចេកទេសបញ្ឈប់អារម្មណ៍តានតឹងភ្លាមៗ (Emotional Pause & Box Breathing)។\n'
            '• កសាងព្រំដែនសុខភាពរវាងការងារ និងជីវិតផ្ទាល់ខ្លួន (Work-Life Boundaries)។',
        shortExplanation: 'ភាពជោគជ័យយូរអង្វែងក្នុងអាជីពមិនអាស្រ័យតែលើការរត់ប្រណាំងយ៉ាងលឿននោះទេ ប៉ុន្តែអាស្រ័យលើសមត្ថភាពរត់ម៉ារ៉ាតុងដោយមិនអស់កម្លាំង ឬបាក់ទឹកចិត្ត (Emotional Resilience)។',
        workplaceStory: '«វណ្ណា ជាបុគ្គលិកគណនេយ្យជាន់ខ្ពស់។ ក្នុងរដូវកាលបិទបញ្ជីចុងឆ្នាំ គាត់ធ្វើការ ១៤ ម៉ោងក្នុងមួយថ្ងៃ គេងមិនលក់ ហើយចាប់ផ្តើមឆេវឆាវដាក់មិត្តរួមការងារ និងគ្រួសារ។ គាត់គិតចង់លាលែងពីការងារភ្លាមៗ។ '
            'ប្រធានផ្នែកបានសង្កេតឃើញ ហើយបានតម្រូវឱ្យវណ្ណាឈប់សម្រាក ២ ថ្ងៃ និងណែនាំបច្ចេកទេសរៀបចំបែងចែកកាលវិភាគសម្រាកខួរក្បាល (Strategic Recovery)។ វណ្ណាបានរៀនពីរបៀបផ្ទេរការងារខ្លះ និងបង្កើតកាលវិភាគសម្រាកច្បាស់លាស់ ដែលជួយឱ្យគាត់ធ្វើការបានយូរអង្វែង និងមានថាមពលពេញលេញ។»',
        practicalExample: '✅ របៀបឆ្លើយតបនៅពេលមានអារម្មណ៍ធុញថប់ខ្លាំង៖\n'
            '«ខ្ញុំទទួលស្គាល់ថាខ្ញុំកំពុងមានអារម្មណ៍តានតឹង។ ខ្ញុំនឹងដកដង្ហើមវែងៗ ៥ នាទី ឬដើរចេញក្រៅមួយភ្លែតសិន មុនពេលធ្វើការសម្រេចចិត្ត ឬឆ្លើយតបសារនេះ។»',
        practicalExercise: 'អនុវត្តការដកដង្ហើមតាមបែប Box Breathing (ដកចូល ៤ វិនាទី, ទប់ ៤ វិនាទី, ដកចេញ ៤ វិនាទី, ទប់ ៤ វិនាទី) រយៈពេល ៣ នាទី។',
        quizQuestions: [
          QuestionModel(
            id: 'q-eq-6',
            promptKh: 'នៅពេលអ្នកចាប់ផ្តើមមានអារម្មណ៍អស់កម្លាំងខ្លាំង គេងមិនលក់ និងឆាប់ខឹងខុសធម្មតាចំពោះការងារ តើជាសញ្ញានៃអ្វី?',
            promptEn: 'When you feel chronically exhausted, sleepless, and unusually irritable at work, what is this a sign of?',
            optionsKh: [
              'A. ភាពខ្ជិលច្រអូស និងខ្វះការប្តេជ្ញាចិត្ត។',
              'B. សញ្ញាដំបូងនៃការឆេះដួងចិត្ត (Burnout) ដែលត្រូវការការកែសម្រួលកាលវិភាគ និងការសម្រាកស្តារថាមពល។',
              'C. ត្រូវបង្ខំខ្លួនឯងធ្វើការឱ្យកាន់តែច្រើនម៉ោងថែមទៀត។',
            ],
            optionsEn: [
              'A. Pure laziness and lack of discipline.',
              'B. Early signs of Burnout requiring schedule adjustments and recovery.',
              'C. Forcing yourself to work even longer hours.',
            ],
            correctOptionIndex: 1,
            explanationKh: 'ការពន្យល់៖ ជម្រើស B ទទួលស្គាល់ស្ថានភាពសុខភាពផ្លូវចិត្ត និងជួយការពារការដួលរលំនៃសមត្ថភាពការងារយូរអង្វែង។',
            explanationEn: 'Explanation: Recognizing burnout early and taking strategic recovery protects long-term career sustainability.',
          ),
        ],
        reflection: 'តើអ្នកមានវិធីសាស្ត្រអ្វីខ្លះដើម្បីបញ្ចូលថាមពលឡើងវិញ បន្ទាប់ពីឆ្លងកាត់សប្តាហ៍ការងារដ៏តានតឹង?',
        workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ កំណត់ម៉ោងបិទកុំព្យូទ័រការងារនៅល្ងាចនេះ ហើយចំណាយពេលយ៉ាងហោចណាស់ ៣០ នាទីហាត់ប្រាណ ឬដើរកម្សាន្ត។',
      ),
      ...ExtraLessonsPart1.juniorLessons,
    ],

    // =========================================================================
    // 3. TEAM LEADER COURSE (course-leader-delegation)
    // =========================================================================
    'course-leader-delegation': [
      LessonModel(
        id: 'lesson-lead-1',
        courseId: 'course-leader-delegation',
        moduleId: 'mod-1',
        titleKh: '១. ក្របខ័ណ្ឌ ៥ កម្រិតនៃការផ្ទេរភារកិច្ច (The 5 Levels of Effective Delegation)',
        titleEn: 'The 5 Levels of Effective Delegation',
        type: LessonType.text,
        orderIndex: 1,
        learningObjectives: '• យល់ដឹងពីភាពខុសគ្នារវាងការ "ផ្ទេរភារកិច្ច (Delegation)" និងការ "ទម្លាក់ចោលការងារ (Dumping)"។\n'
            '• កំណត់កម្រិតសិទ្ធិសម្រេចចិត្ត ៥ កម្រិតស្របតាមបទពិសោធន៍របស់សមាជិកក្រុម។\n'
            '• បង្កើតប្រព័ន្ធតាមដានលទ្ធផលដោយមិនចាំបាច់ Micromanage។',
        shortExplanation: 'មេដឹកនាំល្អមិនមែនជាអ្នកធ្វើការងារទាំងអស់នោះទេ ប៉ុន្តែជាអ្នកបង្កើតបរិយាកាសឱ្យសមាជិកក្រុមអាចរីកចម្រើនតាមរយៈការទទួលខុសត្រូវ។ ការឱបការងារធ្វើម្នាក់ឯងធ្វើឱ្យក្រុមចុះខ្សោយ។',
        workplaceStory: '«បូរ៉ា ឡើងធ្វើជា Team Leader ថ្មីផ្នែកទីផ្សារ។ ដោយសារខ្លាចកូនចៅធ្វើខុស គាត់ឱបក្រសោបការងារសំខាន់ៗធ្វើម្នាក់ឯងរហូតដល់ម៉ោង ៩ យប់រាល់ថ្ងៃ។ កូនចៅគ្មានការរីកចម្រើន ហើយចាប់ផ្តើមមានអារម្មណ៍ថាបូរ៉ាមិនទុកចិត្តពួកគេ។ ទីបំផុត បូរ៉ាធ្លាក់ខ្លួនឈឺចូលមន្ទីរពេទ្យ ហើយការងារក្រុមហ៊ុនត្រូវជាប់គាំងទាំងស្រុង។ '
            'ក្រោយមក គាត់បានរៀនបែងចែកការងារជា ៥ កម្រិត៖ បុគ្គលិកថ្មីឱ្យសួរនាំមុនធ្វើ ចំណែកបុគ្គលិកចាស់ឱ្យសិទ្ធិសម្រេចចិត្ត និងរាយការណ៍សង្ខេប។ ក្រុមរបស់គាត់បានក្លាយជាក្រុមដែលមានប្រសិទ្ធភាពខ្ពស់ជាងគេក្នុងក្រុមហ៊ុន។»',
        practicalExample: '✅ ក្របខ័ណ្ឌ ៥ កម្រិតនៃការផ្ទេរភារកិច្ច៖\n'
            'កម្រិត ១៖ រង់ចាំការបញ្ជា (Wait to be told)\n'
            'កម្រិត ២៖ សួរនាំ និងសុំការណែនាំមុនធ្វើ (Ask and get guidance)\n'
            'កម្រិត ៣៖ ស្រាវជ្រាវ និងស្នើសុំជម្រើសដំណោះស្រាយ (Recommend solutions)\n'
            'កម្រិត ៤៖ ធ្វើភ្លាម រួចរាយការណ៍លទ្ធផល (Act and report immediately)\n'
            'កម្រិត ៥៖ ស្វ័យភាពពេញលេញ (Full autonomy)។',
        practicalExercise: 'ជ្រើសរើសការងារ ១ ដែលអ្នកកំពុងធ្វើរាល់ថ្ងៃ ហើយសរសេរផែនការផ្ទេរទៅឱ្យសមាជិកក្រុមម្នាក់ស្របតាមកម្រិតសមត្ថភាពរបស់គាត់។',
        quizQuestions: [
          QuestionModel(
            id: 'q-lead-1',
            promptKh: 'សមាជិកក្រុមរបស់អ្នកទើបតែចូលបម្រើការងារបាន ២ សប្តាហ៍។ តើកម្រិតនៃការផ្ទេរភារកិច្ចណាដែលសមស្របបំផុតសម្រាប់គាត់?',
            promptEn: 'A team member joined 2 weeks ago. What delegation level is most appropriate for them?',
            optionsKh: [
              'A. កម្រិត ៥៖ ទុកឱ្យគាត់សម្រេចចិត្តដោយសេរីពេញលេញដោយមិនចាំបាច់សួរនាំ។',
              'B. កម្រិត ២ ឬ ៣៖ ឱ្យគាត់ស្រាវជ្រាវ ស្នើជម្រើសដំណោះស្រាយ និងសុំការយល់ព្រមពីអ្នកសិនមុននឹងអនុវត្ត។',
              'C. មិនផ្ទេរការងារឱ្យសោះ ហើយឱបការងារធ្វើម្នាក់ឯងរហូត។',
            ],
            optionsEn: [
              'A. Level 5: Full autonomy without asking.',
              'B. Level 2 or 3: Research, recommend options, and get approval before executing.',
              'C. Never delegate anything to them.',
            ],
            correctOptionIndex: 1,
            explanationKh: 'ការពន្យល់៖ ជម្រើស B ផ្តល់ការបណ្តុះបណ្តាលជាក់ស្តែង (Scaffolding) និងសុវត្ថិភាពដល់បុគ្គលិកថ្មី មុននឹងឈានទៅរកកម្រិតស្វ័យភាពខ្ពស់។',
            explanationEn: 'Explanation: Levels 2-3 provide proper guidance and safety net for new hires.',
          ),
        ],
        reflection: 'តើអ្វីជាការភ័យខ្លាចធំបំផុតរបស់អ្នកនៅពេលប្រគល់ការងារសំខាន់ឱ្យអ្នកដទៃធ្វើ? តើការភ័យខ្លាចនោះពិតជាសមហេតុផលដែរឬទេ?',
        workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ប្រគល់ភារកិច្ចមួយដែលអ្នកធ្លាប់ធ្វើតែម្នាក់ឯង ទៅឱ្យសមាជិកក្រុម ដោយបញ្ជាក់គោលដៅ និងកាលវិភាគ Check-in ឱ្យបានច្បាស់។',
      ),
      LessonModel(
        id: 'lesson-lead-2',
        courseId: 'course-leader-delegation',
        moduleId: 'mod-1',
        titleKh: '២. ការសន្ទនា 1-on-1 Feedback តាមទម្រង់ SBI (Situation-Behavior-Impact)',
        titleEn: 'Constructive Feedback using the SBI Framework',
        type: LessonType.text,
        orderIndex: 2,
        learningObjectives: '• ប្រើប្រាស់ទម្រង់ SBI ដើម្បីផ្តល់ Feedback ដោយមិនធ្វើឱ្យប៉ះពាល់ដល់ផ្លូវចិត្តបុគ្គលិក។\n'
            '• ជៀសវាងការប្រើពាក្យទូទៅដូចជា "អ្នកធ្វើការមិនសូវល្អ" ឬ "អ្នកខ្វះការយកចិត្តទុកដាក់"។\n'
            '• បង្កើតកិច្ចព្រមព្រៀងកែលម្អប្រកបដោយកិច្ចសហការ។',
        shortExplanation: 'Feedback ត្រូវតែផ្តោតលើទង្វើជាក់ស្តែងដែលអាចវាស់វែងបាន និងផលប៉ះពាល់ដែលកើតមាន មិនមែនលើអត្តចរិត ឬតម្លៃបុគ្គលឡើយ។',
        workplaceStory: '«ជំនួសឱ្យការនិយាយបន្ទោសថា "អ្នកឯងគ្មានទំនួលខុសត្រូវ និងមិនគោរពពេលវេលា!" មេដឹកនាំវិជ្ជាជីវៈបានកោះហៅជួបជាឯកជន ហើយនិយាយតាមទម្រង់ SBI ថា៖ '
            '"នៅក្នុងការប្រជុំជាមួយអតិថិជនកាលពីព្រឹកមិញម៉ោង ៩ (Situation) ប្អូនបានមកដល់យឺត ២០ នាទីដោយមិនបានផ្តល់ដំណឹងជាមុន (Behavior) ដែលធ្វើឱ្យអតិថិជនគិតថាក្រុមហ៊ុនយើងខ្វះវិជ្ជាជីវៈ និងធ្វើឱ្យខ្ញុំត្រូវពន្យារពេលបទបង្ហាញ (Impact)។ តើមានរឿងអ្វីកើតឡើងចំពោះប្អូនព្រឹកមិញដែរទេ?"។ '
            'បុគ្គលិកមានអារម្មណ៍ថាគ្មានការវាយប្រហារផ្ទាល់ខ្លួន ក៏បានទទួលស្គាល់កំហុសដោយស្មោះត្រង់ និងសន្យាមិនឱ្យកើតមានទៀតឡើយ។»',
        practicalExample: '✅ រូបមន្ត SBI Word-for-Word៖\n'
            '• Situation (ពេលណា នៅឯណា)៖ "កាលពីថ្ងៃពុធ ក្នុងការប្រជុំគម្រោង..."\n'
            '• Behavior (ទង្វើជាក់លាក់)៖ "ប្អូនបានកាត់សម្តីសហការី ៣ ដង..."\n'
            '• Impact (ផលប៉ះពាល់)៖ "វាធ្វើឱ្យគាត់មានអារម្មណ៍មិនស្រួលក្នុងការបញ្ចេញមតិ..."\n'
            '• Next Step៖ "តើយើងអាចសហការគ្នាយ៉ាងណាដើម្បីកែលម្អចំណុចនេះ?"',
        practicalExercise: 'សរសេរសេចក្តីព្រាង Feedback តាមទម្រង់ SBI សម្រាប់សមាជិកក្រុមម្នាក់ដែលតែងតែយឺតយ៉ាវក្នុងការផ្ញើរបាយការណ៍។',
        quizQuestions: [
          QuestionModel(
            id: 'q-lead-2',
            promptKh: 'សមាជិកក្រុមម្នាក់មិនបានផ្ញើទិន្នន័យឱ្យទាន់ពេលសម្រាប់របាយការណ៍គម្រោង។ តើសេចក្តីថ្លែងការណ៍ណាដែលត្រូវតាមទម្រង់ SBI ត្រឹមត្រូវបំផុត?',
            promptEn: 'A team member missed a data deadline. Which statement follows the SBI framework accurately?',
            optionsKh: [
              'A. "ប្អូនឯងខ្ជិលណាស់ មិនដែលយកចិត្តទុកដាក់លើការងារក្រុមសោះ!"',
              'B. "កាលពីល្ងាចម្សិលមិញ (S) ប្អូនមិនបានផ្ញើទិន្នន័យលក់តាមការសន្យាម៉ោង ៤ ទេ (B) ដែលធ្វើឱ្យខ្ញុំត្រូវនៅធ្វើការដល់ម៉ោង ៨ យប់ដើម្បីបង្ហើយរបាយការណ៍ (I)"។',
              'C. "កុំឱ្យរឿងហ្នឹងកើតឡើងទៀត បើមិនអញ្ចឹងប្រាក់ខែនឹងត្រូវកាត់!"',
            ],
            optionsEn: [
              'A. "You are so lazy and never care about the team!"',
              'B. "Yesterday afternoon (S), you did not send the sales data by 4 PM (B), causing me to stay until 8 PM to finish (I)."',
              'C. "Do not let it happen again or salary will be cut!"',
            ],
            correctOptionIndex: 1,
            explanationKh: 'ការពន្យល់៖ ជម្រើស B បញ្ជាក់ច្បាស់នូវកាលបរិច្ឆេទ ទង្វើជាក់លាក់ និងផលប៉ះពាល់ពិតប្រាកដ ដោយគ្មានការវាយប្រហារអត្តចរិត។',
            explanationEn: 'Explanation: Option B sticks strictly to observable facts and measurable impact.',
          ),
        ],
        reflection: 'តើការរិះគន់បែបណាដែលធ្លាប់ធ្វើឱ្យអ្នកឈឺចាប់ និងបាក់ទឹកចិត្តកាលពីអតីតកាល? តើទម្រង់ SBI អាចជួយការពាររឿងនោះយ៉ាងដូចម្តេច?',
        workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ផ្តល់ Feedback វិជ្ជមានមួយតាមទម្រង់ SBI ទៅកាន់សមាជិកក្រុមដែលបានបំពេញការងារបានល្អ។',
      ),
      LessonModel(
        id: 'lesson-lead-3',
        courseId: 'course-leader-delegation',
        moduleId: 'mod-1',
        titleKh: '៣. របៀបដឹកនាំការប្រជុំ Stand-up ១៥ នាទីឱ្យមានប្រសិទ្ធភាព (High-Impact 15-min Standup Meetings)',
        titleEn: 'Leading High-Impact 15-Minute Standup Meetings',
        type: LessonType.text,
        orderIndex: 3,
        learningObjectives: '• បង្កើតរបៀបវារៈប្រជុំច្បាស់លាស់ និងកំណត់អ្នកកត់ត្រា Action Items។\n'
            '• អនុវត្តទម្រង់ Stand-up ១៥ នាទីដោយផ្តោតលើសំណួរគន្លឹះ ៣។\n'
            '• កាត់ផ្តាច់ការជជែកវែកញែកស៊ីជម្រៅដែលធ្វើឱ្យខាតពេលវេលារបស់អ្នកដទៃ។',
        shortExplanation: 'ការប្រជុំដែលគ្មានរបៀបវារៈ គឺជាការខ្ជះខ្ជាយថវិកា និងពេលវេលារបស់ក្រុមហ៊ុន។ ប្រសិនបើអាចដោះស្រាយតាមអ៊ីមែល ឬ Telegram បាន កុំបើកការប្រជុំ។',
        workplaceStory: '«ក្រុមការងារអភិវឌ្ឍន៍កម្មវិធីធ្លាប់ចំណាយពេលប្រជុំ ២ ម៉ោងរៀងរាល់ព្រឹកច័ន្ទដោយគ្មានលទ្ធផល ព្រោះសមាជិកចាប់ផ្តើមជជែកវែកញែករឿងរ៉ាវផ្ទាល់ខ្លួន និងជម្លោះបច្ចេកទេស។ '
            'ប្រធានក្រុមថ្មីបានកែប្រែមកជា "Stand-up Meeting ១៥ នាទី" ដោយតម្រូវឱ្យសមាជិកទាំងអស់ឈរជុំគ្នា ហើយម្នាក់ៗឆ្លើយតែ ៣ សំណួរ៖\n'
            '១. តើបានធ្វើអ្វីខ្លះម្សិលមិញ?\n'
            '២. តើថ្ងៃនេះនឹងធ្វើអ្វី?\n'
            '៣. តើកំពុងជួបបញ្ហារាំងស្ទះ (Blocker) អ្វីខ្លះ?\n'
            'ប្រសិនបើមានបញ្ហាស្មុគស្មាញ គាត់ឱ្យជួបដោះស្រាយក្រៅម៉ោងតែពីរនាក់ប៉ុណ្ណោះ។ លទ្ធផល៖ ផលិតភាពការងារកើនឡើង ៣៥% ហើយក្រុមការងារសប្បាយចិត្ត។»',
        practicalExample: '✅ ក្បួនមាស Stand-up ១៥ នាទី៖\n'
            '• មិនឱ្យលើសពី ២ នាទីក្នុងម្នាក់។\n'
            '• ប្រសិនបើការជជែកលើសពី ៣ នាទីលើប្រធានបទមួយ សូមនិយាយថា៖ "ចូរយើងកត់ត្រារឿងនេះជាចំណុចដាច់ដោយឡែក ហើយជួបគ្នា ១០ នាទីក្រោយការប្រជុំ"។',
        practicalExercise: 'រៀបចំរបៀបវារៈប្រជុំរយៈពេល ១៥ នាទីសម្រាប់ក្រុមរបស់អ្នក ហើយអនុវត្តការកំណត់ម៉ោងជាក់ស្តែង។',
        quizQuestions: [
          QuestionModel(
            id: 'q-lead-3',
            promptKh: 'ក្នុងពេលប្រជុំ Stand-up ១៥ នាទី មានសមាជិក ២ នាក់ចាប់ផ្តើមជជែកវែកញែកស៊ីជម្រៅលើបញ្ហាបច្ចេកទេសតែពីរនាក់អស់ពេល ១០ នាទី។ តើអ្នកដឹកនាំគួរធ្វើបែបណា?',
            promptEn: 'During a 15-min standup, two members dive deep into a technical debate for 10 minutes. What should the leader do?',
            optionsKh: [
              'A. បណ្តោយឱ្យពួកគេជជែករហូតដល់ចប់ ទោះបីជាលើសម៉ោងក៏ដោយ។',
              'B. កាត់សម្តីដោយគួរសម ស្នើសុំឱ្យពួកគេទុកការជជែកនោះក្រៅម៉ោងប្រជុំ (Offline) ហើយបន្តទៅកាន់សមាជិកបន្ទាប់។',
              'C. ខឹងច្រឡោត និងដេញពួកគេចេញពីបន្ទប់ប្រជុំ។',
            ],
            optionsEn: [
              'A. Let them argue until finished regardless of overtime.',
              'B. Politely intervene, park the topic offline for the two of them, and move to the next member.',
              'C. Get angry and expel them from the room.',
            ],
            correctOptionIndex: 1,
            explanationKh: 'ការពន្យល់៖ ជម្រើស B ការពារពេលវេលារបស់សមាជិកដទៃទៀត (Meeting hygiene) និងរក្សាប្រសិទ្ធភាពនៃការប្រជុំ។',
            explanationEn: 'Explanation: Parking detailed topics offline respects the entire team time.',
          ),
        ],
        reflection: 'តើការប្រជុំនៅក្នុងកន្លែងធ្វើការរបស់អ្នកបច្ចុប្បន្ន មានប្រសិទ្ធភាពកម្រិតណា? តើមានការប្រជុំណាខ្លះដែលអាចកាត់បន្ថយ ឬជំនួសដោយសារខ្លីបាន?',
        workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ កំណត់ម៉ោងបញ្ចប់ការប្រជុំបន្ទាប់ឱ្យបានច្បាស់លាស់ និងបញ្ជាក់ Action Items មុនពេលរំសាយ។',
      ),
      LessonModel(
        id: 'lesson-lead-4',
        courseId: 'course-leader-delegation',
        moduleId: 'mod-1',
        titleKh: '៤. ការលើកទឹកចិត្ត និងការការពារក្រុមពីការបាក់ទឹកចិត្ត (Team Motivation & Preventing Burnout)',
        titleEn: 'Team Motivation & Preventing Workplace Burnout',
        type: LessonType.text,
        orderIndex: 4,
        learningObjectives: '• កត់សម្គាល់សញ្ញាដំបូងនៃការហត់នឿយផ្លូវចិត្ត (Burnout) និងការដកខ្លួនរបស់សមាជិកក្រុម។\n'
            '• អនុវត្តគោលការណ៍សរសើរជាសាធារណៈ និងកែលម្អជាឯកជន (Praise in Public, Criticize in Private)។\n'
            '• បង្កើតវប្បធម៌ការងារយុត្តិធម៌ និងការទទួលស្គាល់ស្នាដៃជាក់ស្តែង។',
        shortExplanation: 'បុគ្គលិកដែលមានសមត្ថភាពមិនមែនចាកចេញពីក្រុមហ៊ុនដោយសារប្រាក់ខែតែមួយមុខនោះទេ ភាគច្រើនគឺចាកចេញពីមេដឹកនាំដែលមិនចេះយល់ចិត្ត និងការងារដែលគ្មានការទទួលស្គាល់។',
        workplaceStory: '«ក្រោយបញ្ចប់គម្រោងធំដែលត្រូវធ្វើការថែមម៉ោងរយៈពេល ២ ខែ សមាជិកក្រុមទាំងអស់ហត់នឿយ និងចាប់ផ្តើមឈឺ។ ប្រធានក្រុមមិនត្រឹមតែផ្ញើអ៊ីមែលអរគុណនោះទេ គាត់បានរៀបចំអាហារថ្ងៃត្រង់ជុំគ្នា ថ្លែងការកោតសរសើរសមាជិកម្នាក់ៗតាមចំណុចខ្លាំងជាក់លាក់ និងបានស្នើសុំថ្នាក់លើផ្តល់ពេលសម្រាកកន្លះថ្ងៃដល់ក្រុម។ '
            'សមាជិកទាំងអស់មានអារម្មណ៍កក់ក្តៅ និងមានកម្លាំងចិត្តឡើងវិញ។ ផ្ទុយទៅវិញ ក្រុមមួយទៀតដែលមេដឹកនាំបន្តដាក់សម្ពាធការងារថ្មីភ្លាមៗ បានបាត់បង់បុគ្គលិកឆ្នើម ៣ នាក់ក្នុងខែបន្ទាប់។»',
        practicalExample: '✅ សកម្មភាពលើកទឹកចិត្តជាក់ស្តែង៖\n'
            '• សរសើរចំឈ្មោះ និងចំសកម្មភាព៖ "អរគុណកញ្ញាធារី ដែលបានជួយសម្រួលឯកសារនេះយ៉ាងស្អាត..."\n'
            '• សួរនាំសុខទុក្ខដោយស្មោះត្រង់ក្នុងកិច្ចសន្ទនា 1-on-1 ដោយមិននិយាយពីរឿងការងារតែមួយមុខ។',
        practicalExercise: 'កំណត់បញ្ជីឈ្មោះសមាជិកក្រុមដែលកំពុងមានបន្ទុកការងារធ្ងន់ធ្ងរ ហើយរកវិធីជួយសម្រាលការងាររបស់ពួកគេ។',
        quizQuestions: [
          QuestionModel(
            id: 'q-lead-4',
            promptKh: 'សមាជិកឆ្នើមម្នាក់ក្នុងក្រុមស្រាប់តែចាប់ផ្តើមដកថយ ឆ្លើយសារយឺតយ៉ាវ និងមានទឹកមុខហត់នឿយ។ តើសកម្មភាពដំបូងដែលមេដឹកនាំគួរធ្វើគឺជាអ្វី?',
            promptEn: 'A top performer suddenly withdraws, responds slowly, and looks exhausted. What should the leader do first?',
            optionsKh: [
              'A. គំរាមកំហែងកាត់ប្រាក់ខែភ្លាមៗដោយសារធ្លាក់ចុះផលិតភាព។',
              'B. រៀបចំការជួបសន្ទនា 1-on-1 ដោយស្ងប់ស្ងាត់ សួរនាំសុខទុក្ខដោយការយល់ចិត្ត និងពិនិត្យសម្រាលបន្ទុកការងារ។',
              'C. ធ្វើមិនដឹងមិនឮព្រោះគិតថាជារឿងផ្ទាល់ខ្លួនរបស់គាត់។',
            ],
            optionsEn: [
              'A. Threaten salary deductions immediately.',
              'B. Hold a supportive 1-on-1, check in with empathy, and explore ways to rebalance workload.',
              'C. Ignore it thinking it is personal business.',
            ],
            correctOptionIndex: 1,
            explanationKh: 'ការពន្យល់៖ ជម្រើស B ជួយស្រោចស្រង់បុគ្គលិកឆ្នើមទាន់ពេលវេលា មុនពេលឈានដល់ការបាក់ទឹកចិត្តធ្ងន់ធ្ងរ ឬការលាលែងពីការងារ។',
            explanationEn: 'Explanation: Proactive, empathetic check-in prevents irreversible burnout and resignation.',
          ),
        ],
        reflection: 'តើអ្នកដឹងទេថាសមាជិកក្រុមរបស់អ្នកម្នាក់ៗមានកម្លាំងចិត្តធ្វើការដោយសារអ្វី (ប្រាក់ខែ ការរៀនសូត្រ ឬការទទួលស្គាល់)?',
        workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ផ្ញើសារថ្លែងអំណរគុណជាក់លាក់មួយទៅកាន់សមាជិកក្រុមម្នាក់ដែលបានខិតខំប្រឹងប្រែង។',
      ),
      LessonModel(
        id: 'lesson-lead-5',
        courseId: 'course-leader-delegation',
        moduleId: 'mod-1',
        titleKh: '៥. ក្បួនរៀបចំកិច្ចប្រជុំប្រចាំសប្តាហ៍ឱ្យមានប្រសិទ្ធភាពត្រឹម ៣០ នាទី (High-Impact Weekly Standup)',
        titleEn: 'Conducting High-Impact 30-Minute Weekly Standup Meetings',
        type: LessonType.text,
        orderIndex: 5,
        learningObjectives: '• លុបបំបាត់កិច្ចប្រជុំអូសបន្លាយដែលខ្ជះខ្ជាយពេលវេលា និងគ្មានលទ្ធផលជាក់លាក់។\n'
            '• អនុវត្តរបៀបវារៈ ៣ ដំណាក់កាល៖ Review KPIs (១០ នាទី), Solve Bottlenecks (១៥ នាទី), Next Actions (៥ នាទី)។\n'
            '• រក្សាការតម្រង់ទិសដៅ និងថាមពលវិជ្ជមានរបស់សមាជិកក្រុមរៀងរាល់ដើមសប្តាហ៍។',
        shortExplanation: 'កិច្ចប្រជុំល្អមិនមែនជាការអង្គុយរាយការណ៍វែងអន្លាយនោះទេ ប៉ុន្តែជាវេទិកាសម្រេចចិត្ត ដោះស្រាយឧបសគ្គកកស្ទះ និងបែងចែកសកម្មភាពបន្តឱ្យបានច្បាស់លាស់។',
        workplaceStory: '«ក្រុមការងារផ្នែកលក់មួយធ្លាប់ជួបប្រជុំរៀងរាល់ព្រឹកថ្ងៃចន្ទរយៈពេល ២ ម៉ោងកន្លះ។ ម្នាក់ៗអង្គុយងោក និងមានអារម្មណ៍ធុញថប់។ សុជាតិ (Team Leader ថ្មី) បានផ្លាស់ប្តូរទម្រង់មកជា Standup Meeting ៣០ នាទី៖ '
            'តម្រូវឱ្យសមាជិកផ្ញើតួលេខចូល Telegram Group ជាមុន ពេលប្រជុំផ្តោតតែលើការដោះស្រាយអតិថិជនណាដែលកំពុងជាប់គាំង។ លទ្ធផល៖ សមាជិកក្រុមសន្សំបាន ២ ម៉ោងសម្រាប់ចេញទៅជួបអតិថិជន ហើយការលក់កើនឡើង ៣៥% ក្នុងខែដំបូង។»',
        practicalExample: '✅ របៀបបើកកិច្ចប្រជុំ ៣០ នាទី៖\n'
            '«សួស្តីក្រុមការងារទាំងអស់គ្នា! យើងមានពេល ៣០ នាទីថ្ងៃនេះ។ យើងនឹងមិនចំណាយពេលរៀបរាប់អ្វីដែលបានសរសេរក្នុងរបាយការណ៍រួចហើយនោះទេ។ យើងផ្តោតតែលើសំណួរ ២ ប៉ុណ្ណោះ៖ ១. តើមានអ្វីកកស្ទះដែលត្រូវការការសម្រេចចិត្តបន្ទាន់? ២. តើអ្នកណាទទួលបន្ទុកជំហានបន្ទាប់?»',
        practicalExercise: 'បង្កើតសេចក្តីព្រាងរបៀបវារៈប្រជុំ ៣០ នាទី (Agenda) សម្រាប់កិច្ចប្រជុំបន្ទាប់របស់ក្រុមអ្នក។',
        quizQuestions: [
          QuestionModel(
            id: 'q-lead-5',
            promptKh: 'តើអ្វីជាក្បួនសំខាន់បំផុតដើម្បីការពារកុំឱ្យកិច្ចប្រជុំក្រុមអូសបន្លាយពេលយូរឥតប្រយោជន៍?',
            promptEn: 'What is the most critical rule to prevent team meetings from dragging on pointlessly?',
            optionsKh: [
              'A. មិនបាច់កំណត់ពេលវេលាទេ ចាំជជែកគ្នារហូតដល់អស់រឿងនិយាយ។',
              'B. កំណត់របៀបវារៈ និងម៉ោងច្បាស់លាស់ តម្រូវឱ្យអានទិន្នន័យជាមុន និងផ្តោតតែលើការដោះស្រាយឧបសគ្គ និងការសម្រេចចិត្ត។',
              'C. ហាមឃាត់មិនឱ្យសមាជិកក្រុមនិយាយអ្វីទាំងអស់ ក្រៅពីស្តាប់មេដឹកនាំនិយាយតែម្នាក់ឯង។',
            ],
            optionsEn: [
              'A. No time limits, chat until everyone runs out of things to say.',
              'B. Strict agenda and timebox, require pre-reading data, and focus purely on bottlenecks and decisions.',
              'C. Prohibit members from speaking except the leader.',
            ],
            correctOptionIndex: 1,
            explanationKh: 'ការពន្យល់៖ ជម្រើស B គោរពពេលវេលារបស់សមាជិក និងជំរុញឱ្យការប្រជុំក្លាយជាកន្លែងដោះស្រាយបញ្ហាពិតប្រាកដ។',
            explanationEn: 'Explanation: Pre-reading data and timeboxing decisions turns meetings into productive engines.',
          ),
        ],
        reflection: 'តើកិច្ចប្រជុំក្រុមរបស់អ្នកកន្លងមកបានចំណាយពេលលើការអានរបាយការណ៍ច្រើនជាងការដោះស្រាយបញ្ហាដែរឬទេ?',
        workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ កំណត់ម៉ោងប្រជុំបន្ទាប់របស់អ្នកឱ្យនៅត្រឹម ៣០ នាទី ហើយប្រកាសរបៀបវារៈជាមុន។',
      ),
      LessonModel(
        id: 'lesson-lead-6',
        courseId: 'course-leader-delegation',
        moduleId: 'mod-1',
        titleKh: '៦. ការជួយស្រោចស្រង់សមាជិកក្រុមដែលអសកម្ម ឬមានសមត្ថភាពធ្លាក់ចុះ (Underperformer Turnaround)',
        titleEn: 'Coaching and Turning Around Underperforming Team Members',
        type: LessonType.text,
        orderIndex: 6,
        learningObjectives: '• យល់ដឹងពីមូលហេតុពិតប្រាកដដែលបុគ្គលិកធ្លាក់ចុះផលិតភាព (បញ្ហាជំនាញ, បញ្ហាទឹកចិត្ត ឬបញ្ហាផ្ទាល់ខ្លួន)។\n'
            '• អនុវត្តផែនការកែលម្អសមត្ថភាពរយៈពេល ៣០ ថ្ងៃ (30-Day Performance Improvement Plan - PIP) ប្រកបដោយការគាំទ្រ។\n'
            '• រក្សាតុល្យភាពរវាងការយល់ចិត្ត (Empathy) និងទំនួលខុសត្រូវលើលទ្ធផល (Accountability)។',
        shortExplanation: 'ការបណ្តេញបុគ្គលិកចេញភ្លាមៗគឺជារឿងងាយស្រួល ប៉ុន្តែការបង្វឹក និងជួយស្រោចស្រង់បុគ្គលិកឱ្យក្លាយជាមនុស្សពូកែឡើងវិញ គឺជាសញ្ញាសម្គាល់នៃមេដឹកនាំឆ្នើម។',
        workplaceStory: '«ធារ៉ា ជាអ្នករចនា Graphic Designer ដែលធ្លាប់ធ្វើការបានល្អ ស្រាប់តែប្រគល់ការងារយឺតយ៉ាវជាញឹកញាប់ និងមានទឹកមុខស្រពាប់ស្រពោន។ ប្រធានក្រុមមិនបានស្រែកបន្ទោស ឬដាក់ទណ្ឌកម្មឡើយ។ '
            'គាត់បានអញ្ជើញធារ៉ាពិភាក្សា 1-on-1 ដោយស្មោះត្រង់។ គាត់បានដឹងថា ធារ៉ាកំពុងជួបបញ្ហាសុខភាពម្តាយនៅស្រុក ហើយអារម្មណ៍មិនមូល។ ប្រធានក្រុមបានជួយសម្រួលឱ្យធារ៉ាធ្វើការពីផ្ទះ ២ ថ្ងៃក្នុងមួយសប្តាហ៍ និងរៀបចំបញ្ជីការងារច្បាស់លាស់។ មួយខែក្រោយមក ធារ៉ាបានវិលត្រឡប់មករកទម្រង់លេងល្អបំផុតវិញ និងថ្លែងអំណរគុណដល់ប្រធានដែលបានជឿជាក់លើគាត់។»',
        practicalExample: '✅ របៀបចាប់ផ្តើមការសន្ទនាបង្វឹកកែលម្អ៖\n'
            '«ប្អូនធារ៉ា! បងកត់សម្គាល់ឃើញថាសប្តាហ៍នេះការងាររបស់ប្អូនមានការយឺតយ៉ាវជាងមុន។ បងដឹងច្បាស់ពីសមត្ថភាពពូកែរបស់ប្អូនពីមុនមក។ តើមានបញ្ហាប្រឈមអ្វីដែលកំពុងរារាំងប្អូន ហើយតើបងអាចជួយសម្របសម្រួលបែបណាខ្លះ?»',
        practicalExercise: 'សរសេរសេចក្តីព្រាងផែនការ PIP ៣០ ថ្ងៃសាមញ្ញមួយ (៣ គោលដៅជាក់ស្តែង និងកាលបរិច្ឆេទត្រួតពិនិត្យប្រចាំសប្តាហ៍)។',
        quizQuestions: [
          QuestionModel(
            id: 'q-lead-6',
            promptKh: 'នៅពេលសមាជិកក្រុមម្នាក់ចាប់ផ្តើមធ្លាក់ចុះលទ្ធផលការងារ តើជំហានដំបូងបំផុតដែល Team Leader គួរធ្វើគឺជាអ្វី?',
            promptEn: 'When a team member starts underperforming, what is the very first step a Team Leader should take?',
            optionsKh: [
              'A. កាត់ប្រាក់ខែ និងបង្ហោះសារបន្ទោសក្នុងគ្រុប Telegram ឱ្យខ្មាសគេ។',
              'B. ជួបសន្ទនាផ្ទាល់ខ្លួន 1-on-1 ដោយស្វែងយល់ពីឫសគល់បញ្ហា (ជំនាញ ឬទឹកចិត្ត) និងរួមគ្នាបង្កើតផែនការកែលម្អ។',
              'C. ដកហូតការងារទាំងអស់ ហើយបណ្តេញចេញភ្លាមៗ។',
            ],
            optionsEn: [
              'A. Cut salary and publicly shame them in Telegram group.',
              'B. Hold a private 1-on-1 to discover the root cause (skill vs motivation) and co-create an improvement plan.',
              'C. Strip duties and fire immediately.',
            ],
            correctOptionIndex: 1,
            explanationKh: 'ការពន្យល់៖ ជម្រើស B ផ្តល់ឱកាសយុត្តិធម៌ និងស្វែងយល់ពីឫសគល់ មុននឹងឈានទៅដល់វិធានការរដ្ឋបាល។',
            explanationEn: 'Explanation: Understanding the root cause privately preserves dignity and often turns performance around.',
          ),
        ],
        reflection: 'តើអ្នកធ្លាប់ជួយសហការីម្នាក់ឱ្យផ្លាស់ប្តូរពីភាពអសកម្ម មកជាមនុស្សសកម្មវិញដែរឬទេ? តើអ្នកមានអារម្មណ៍បែបណា?',
        workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ កំណត់សមាជិកក្រុមម្នាក់ដែលកំពុងត្រូវការការជួយគាំទ្រ ហើយកក់ម៉ោងជួបសន្ទនាជាមួយគាត់។',
      ),
      ...ExtraLessonsPart1.leaderLessons,
    ],

    // =========================================================================
    // 4. MANAGER COURSE (course-manager-conflict)
    // =========================================================================
    'course-manager-conflict': [
      LessonModel(
        id: 'lesson-man-1',
        courseId: 'course-manager-conflict',
        moduleId: 'mod-1',
        titleKh: '១. ក្របខ័ណ្ឌសម្រុះសម្រួលជម្លោះរវាងសមាជិកក្រុម (Mediation & Conflict Resolution Framework)',
        titleEn: 'Workplace Mediation & Conflict Resolution Framework',
        type: LessonType.text,
        orderIndex: 1,
        learningObjectives: '• យល់ដឹងពីក្របខ័ណ្ឌសម្រុះសម្រួល ៤ ជំហាន៖ Separate, Listen, Bring Together, Agree។\n'
            '• ជៀសវាងការកាន់ជើងភាគីណាមួយ និងរក្សាជំហរជាភាគីកណ្តាលប្រកបដោយយុត្តិធម៌។\n'
            '• កសាងកិច្ចព្រមព្រៀងសហការជាលាយលក្ខណ៍អក្សរ (Working Agreement)។',
        shortExplanation: 'ជម្លោះនៅកន្លែងធ្វើការមិនមែនសុទ្ធតែជារឿងអាក្រក់នោះទេ បើសិនជាចេះដោះស្រាយ វាអាចជាឱកាសបង្កើតការផ្លាស់ប្តូរ និងការយល់ចិត្តគ្នាកាន់តែស៊ីជម្រៅ។',
        workplaceStory: '«គីមសួរ (ប្រធានផ្នែកលក់) និង វីរៈ (ប្រធានផ្នែកប្រតិបត្តិការ) បានខ្វែងគំនិតគ្នាយ៉ាងខ្លាំងរឿងនីតិវិធីដឹកជញ្ជូនឱ្យអតិថិជន VIP រហូតដល់មិននិយាយរកគ្នា ២ សប្តាហ៍។ ការងាររាំងស្ទះទាំងស្រុង។ '
            'អ្នកគ្រប់គ្រងទូទៅមិនបានស្រែកបន្ទោសពួកគេក្នុងការប្រជុំធំទេ គាត់បានកោះហៅជួបដាច់ដោយឡែកពីគ្នាម្នាក់ម្តងដើម្បីស្តាប់ទុក្ខកង្វល់ និងអារម្មណ៍របស់ពួកគេ។ បន្ទាប់មក គាត់បាននាំពួកគេទាំងពីរមកអង្គុយតុជុំគ្នា ហើយសួរថា៖ "តើយើងទាំងអស់គ្នាចង់ឱ្យអតិថិជនសប្បាយចិត្ត និងក្រុមហ៊ុនរីកចម្រើនដូចគ្នាទេ?"។ '
            'នៅពេលឃើញគោលដៅរួម ពួកគេទាំងពីរបានយល់ព្រមបត់បែននីតិវិធីម្នាក់បន្តិច ហើយការងារបានដើររលូនឡើងវិញ។»',
        practicalExample: '✅ ៤ ជំហានសម្រុះសម្រួលជម្លោះ៖\n'
            '១. SEPARATE៖ ជួបសន្ទនាដាច់ដោយឡែកជាមួយភាគីនីមួយៗដើម្បីឱ្យពួកគេបញ្ចេញអារម្មណ៍។\n'
            '២. LISTEN៖ ស្វែងរក "តម្រូវការស្នូល (Underlying Needs)" មិនមែនគ្រាន់តែពាក្យតវ៉ា។\n'
            '៣. BRING TOGETHER៖ រៀបចំជំនួបមុខទល់មុខក្នុងបន្ទប់ស្ងប់ស្ងាត់។\n'
            '៤. AGREE ON BEHAVIOR៖ បង្កើតកិច្ចព្រមព្រៀងជាក់លាក់លើទង្វើទៅថ្ងៃអនាគត។',
        practicalExercise: 'កំណត់បញ្ហាខ្វែងគំនិតមួយក្នុងស្ថាប័នរបស់អ្នក ហើយសរសេរចំណុចកណ្តាលនៃផលប្រយោជន៍រួមរវាងភាគីទាំងសងខាង។',
        quizQuestions: [
          QuestionModel(
            id: 'q-man-1',
            promptKh: 'សមាជិកគន្លឹះពីរនាក់មានជម្លោះខ្លាំងរឿងបែងចែកការងារ និងមិនព្រមនិយាយរកគ្នា។ តើជំហានដំបូងរបស់អ្នកគ្រប់គ្រងគួរធ្វើអ្វី?',
            promptEn: 'Two key members have a major conflict over workload and refuse to speak. What should the manager do first?',
            optionsKh: [
              'A. កោះហៅប្រជុំបន្ទាន់ចំពោះមុខក្រុមទាំងមូល ហើយបង្ខំឱ្យពួកគេសុំទោសគ្នាភ្លាមៗ។',
              'B. ជួបសន្ទនាដោយឡែកពីគ្នាម្នាក់ម្តង (1-on-1) ដោយស្ងប់ស្ងាត់ ដើម្បីស្តាប់ទស្សនៈ និងអារម្មណ៍របស់ពួកគេ។',
              'C. បណ្តេញភាគីណាដែលនិយាយតិចជាងគេចេញពីក្រុមហ៊ុន។',
            ],
            optionsEn: [
              'A. Call an all-hands meeting and force them to apologize publicly.',
              'B. Meet with each person individually in a calm setting to listen to their perspective and underlying concerns.',
              'C. Fire the quieter party immediately.',
            ],
            correctOptionIndex: 1,
            explanationKh: 'ការពន្យល់៖ ជម្រើស B បង្កើតបរិយាកាសសុវត្ថិភាពដើម្បីស្វែងយល់ពីឫសគល់នៃជម្លោះ ដោយមិនធ្វើឱ្យភាគីណាមួយបាក់មុខ។',
            explanationEn: 'Explanation: Individual discovery creates safety and prevents public embarrassment.',
          ),
        ],
        reflection: 'តើទំនោរធម្មជាតិរបស់អ្នកចំពោះជម្លោះគឺជាការគេចវេះ ឬការប្រឈមមុខ? តើការគេចវេសពីជម្លោះអាចបង្កផលវិបាកអ្វីខ្លះដល់ក្រុម?',
        workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ កត់ត្រាសញ្ញាដំបូងនៃជម្លោះក្នុងក្រុមដែលមិនទាន់ផ្ទុះឡើង ហើយរៀបចំការសន្ទនាស្ងប់ស្ងាត់មុនពេលវារាលដាល។',
      ),
      LessonModel(
        id: 'lesson-man-2',
        courseId: 'course-manager-conflict',
        moduleId: 'mod-1',
        titleKh: '២. ការរុករកនយោបាយកន្លែងធ្វើការដោយរក្សាសីលធម៌ (Navigating Workplace Politics Ethically)',
        titleEn: 'Navigating Workplace Politics with Integrity',
        type: LessonType.text,
        orderIndex: 2,
        learningObjectives: '• យល់ដឹងពីភាពខុសគ្នារវាងនយោបាយបំផ្លាញ (Toxic Politics) និងឥទ្ធិពលវិជ្ជមាន (Positive Influence)។\n'
            '• កសាងតម្លាភាព និងកំណត់ហេតុការងារជាលាយលក្ខណ៍អក្សរដើម្បីការពារក្រុម។\n'
            '• បង្កើតសម្ព័ន្ធភាពវិជ្ជាជីវៈផ្អែកលើការជួយគ្នាទៅវិញទៅមក។',
        shortExplanation: 'នយោបាយកន្លែងធ្វើការកើតឡើងនៅគ្រប់ទីកន្លែងដែលមានមនុស្សធ្វើការជាមួយគ្នា។ អ្នកមិនចាំបាច់ក្លាយជាមនុស្សទុច្ចរិតនោះទេ ប៉ុន្តែអ្នកត្រូវឆ្លាតវៃគ្រប់គ្រាន់ដើម្បីការពារក្រុម និងជំរុញគម្រោងឱ្យជោគជ័យ។',
        workplaceStory: '«លីដា ជាអ្នកគ្រប់គ្រងគម្រោងថ្មី។ នាងបានសង្កេតឃើញថាមានអ្នកគ្រប់គ្រងជាន់ខ្ពស់ម្នាក់តែងតែនិយាយដើម និងព្យាយាមរារាំងថវិកាគម្រោងរបស់នាង។ '
            'ជំនួសឱ្យការតបតដោយការនិយាយដើមវិញ លីដាបានធ្វើរឿង ៣ យ៉ាង៖ ទីមួយ នាងកត់ត្រារាល់ការសម្រេចចិត្តក្នុងអ៊ីមែលផ្លូវការ (Minutes of Meeting)។ ទីពីរ នាងអញ្ជើញអ្នកគ្រប់គ្រងនោះចូលរួមពិនិត្យគម្រោងជាមុនដើម្បីកុំឱ្យគាត់មានអារម្មណ៍ថាបាត់បង់អំណាច។ ទីបី នាងបង្ហាញទិន្នន័យជាក់ស្តែងពីផលចំណេញដែលក្រុមហ៊ុននឹងទទួលបាន។ ទីបំផុត អ្នកគ្រប់គ្រងនោះបានប្រែក្លាយពីអ្នករារាំងមកជាអ្នកគាំទ្រគម្រោងរបស់នាងវិញ។»',
        practicalExample: '✅ យុទ្ធសាស្ត្រការពារក្រុមប្រកបដោយសីលធម៌៖\n'
            '• Paper Trail៖ រាល់កិច្ចសន្យា ឬការសម្រេចចិត្តសំខាន់ ត្រូវមានអ៊ីមែលសង្ខេបបញ្ជាក់ជានិច្ច។\n'
            '• Stakeholder Mapping៖ ស្គាល់ច្បាស់ថាអ្នកណាជាអ្នកគាំទ្រ អ្នកណានៅកណ្តាល និងអ្នកណាជាអ្នកជំទាស់ ដើម្បីរៀបចំវិធីសាស្ត្រសន្ទនាឱ្យសមស្រប។',
        practicalExercise: 'កំណត់បញ្ជីឈ្មោះបុគ្គលពាក់ព័ន្ធសំខាន់ៗ (Stakeholders) ចំពោះគម្រោងរបស់អ្នក និងកំណត់យុទ្ធសាស្ត្រកសាងទំនុកចិត្តជាមួយពួកគេ។',
        quizQuestions: [
          QuestionModel(
            id: 'q-man-2',
            promptKh: 'មានអ្នកគ្រប់គ្រងម្នាក់ព្យាយាមយកស្នាដៃនៃគម្រោងដែលក្រុមរបស់អ្នកបានខិតខំធ្វើទៅរាយការណ៍ថាជាស្នាដៃរបស់គាត់ផ្ទាល់។ តើអ្នកគួរដោះស្រាយបែបណាប្រកបដោយវិជ្ជាជីវៈ?',
            promptEn: 'Another manager tries to claim sole credit for a project your team built. How do you handle this professionally?',
            optionsKh: [
              'A. ទៅឈ្លោះប្រកែកគ្នា និងជេរប្រមាថគាត់នៅកណ្តាលបន្ទប់ធ្វើការ។',
              'B. ផ្ញើអ៊ីមែលសង្ខេបលទ្ធផលគម្រោងជាផ្លូវការទៅកាន់ថ្នាក់ដឹកនាំជាន់ខ្ពស់ ដោយភ្ជាប់របាយការណ៍លម្អិត និងថ្លែងអំណរគុណដល់សមាជិកក្រុមម្នាក់ៗតាមតួនាទីជាក់ស្តែង។',
              'C. ស្ងៀមស្ងាត់ហើយយំតែម្នាក់ឯងព្រោះគិតថាមិនអាចតស៊ូជាមួយគេបាន។',
            ],
            optionsEn: [
              'A. Start a screaming match in the hallway.',
              'B. Send a transparent, data-backed completion report to executive leadership, explicitly recognizing each team member contribution.',
              'C. Stay passive and silently accept it.',
            ],
            correctOptionIndex: 1,
            explanationKh: 'ការពន្យល់៖ ជម្រើស B ប្រើប្រាស់តម្លាភាព និងទិន្នន័យជាក់ស្តែង (Facts over Drama) ដើម្បីការពារសិទ្ធិ និងកិត្តិយសរបស់ក្រុមការងារប្រកបដោយសីលធម៌ខ្ពស់។',
            explanationEn: 'Explanation: Transparent, documented reporting publicly cements team contributions ethically.',
          ),
        ],
        reflection: 'តើអ្នកអាចរក្សាភាពស្មោះត្រង់ និងសីលធម៌វិជ្ជាជីវៈបានកម្រិតណា នៅពេលស្ថិតក្នុងបរិយាកាសការងារដែលមានការប្រកួតប្រជែងស្មុគស្មាញ?',
        workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ផ្ញើអ៊ីមែលសង្ខេបលទ្ធផលការងារមួយ ដោយទទួលស្គាល់ការចូលរួមចំណែករបស់សមាជិកក្រុមទាំងអស់ជាផ្លូវការ។',
      ),
      LessonModel(
        id: 'lesson-man-3',
        courseId: 'course-manager-conflict',
        moduleId: 'mod-1',
        titleKh: '៣. ការចរចាប្រាក់ខែ និងកញ្ចប់អត្ថប្រយោជន៍ផ្អែកលើសមិទ្ធផល (Merit-Based Compensation Negotiation)',
        titleEn: 'Merit-Based Compensation Negotiation',
        type: LessonType.text,
        orderIndex: 3,
        learningObjectives: '• រៀបចំសំណើសុំឡើងប្រាក់ខែផ្អែកលើទិន្នន័យសេដ្ឋកិច្ច (Business ROI) មិនមែនផ្អែកលើតម្រូវការផ្ទាល់ខ្លួន។\n'
            '• យល់ដឹងពីទិន្នន័យទីផ្សារការងារ (Market Benchmarking) នៅកម្ពុជា។\n'
            '• ចេះចរចាអត្ថប្រយោជន៍មិនមែនសាច់ប្រាក់ (Non-monetary perks) នៅពេលថវិកាក្រុមហ៊ុនមានកម្រិត។',
        shortExplanation: 'ការចរចាប្រាក់ខែដែលជោគជ័យមិនមែនជាការសុំក្តីមេត្តានោះទេ ប៉ុន្តែជាការបង្ហាញពីតម្លៃបន្ថែមដែលអ្នក ឬក្រុមរបស់អ្នកបានបង្កើតឡើងសម្រាប់ក្រុមហ៊ុន។',
        workplaceStory: '«ពិសិដ្ឋ ជាអ្នកគ្រប់គ្រងចង់ស្នើសុំដំឡើងប្រាក់ខែឱ្យបុគ្គលិកឆ្នើមម្នាក់ដែលកំពុងមានការផ្តល់ជូនពីក្រុមហ៊ុនផ្សេង។ ពិសិដ្ឋមិនបានទៅប្រាប់នាយកប្រតិបត្តិថា "បុគ្គលិកនេះត្រូវការលុយមើលម្តាយឈឺ" នោះទេ (ព្រោះនោះជាបញ្ហាផ្ទាល់ខ្លួន)។ '
            'ផ្ទុយទៅវិញ ពិសិដ្ឋបានរៀបចំឯកសារមួយទំព័របង្ហាញថា៖ ក្នុងរយៈពេល ៩ ខែ បុគ្គលិកនេះបានជួយសន្សំថ្លៃចំណាយទីផ្សារបាន \$18,000 និងនាំមកនូវអតិថិជនថ្មីចំនួន ៤៥ នាក់។ ប្រសិនបើគាត់ចាកចេញ ការជ្រើសរើស និងបណ្តុះបណ្តាលមនុស្សថ្មីនឹងត្រូវចំណាយយ៉ាងតិច \$6,000 និងខាតពេល ៣ ខែ។ '
            'នាយកប្រតិបត្តិបានយល់ព្រមដំឡើងប្រាក់ខែ ២៥% ភ្លាមៗដោយគ្មានការស្ទាក់ស្ទើរ។»',
        practicalExample: '✅ រូបមន្តសំណើសុំឡើងប្រាក់ខែផ្អែកលើសមិទ្ធផល៖\n'
            '១. តម្លៃដែលបានបង្កើត (Value Created)៖ "ក្នុងឆ្នាំកន្លងមក ខ្ញុំបានសម្រេច..."\n'
            '២. ទិន្នន័យទីផ្សារ (Market Benchmark)៖ "យោងតាមទីផ្សារបច្ចុប្បន្នសម្រាប់តួនាទីនេះ..."\n'
            '៣. សំណើជាក់លាក់ (Specific Ask)៖ "ខ្ញុំសូមគោរពស្នើសុំការកែសម្រួលប្រាក់បំណាច់..."\n'
            '៤. ផែនការអនាគត (Future Commitment)៖ "ដើម្បីបន្តជួយក្រុមហ៊ុនសម្រេចគោលដៅ..."',
        practicalExercise: 'គណនាតម្លៃសេដ្ឋកិច្ចជាក់ស្តែង (ROI) ដែលអ្នកបានជួយក្រុមហ៊ុនសន្សំប្រាក់ ឬរកចំណូលក្នុងរយៈពេល ៦ ខែចុងក្រោយ។',
        quizQuestions: [
          QuestionModel(
            id: 'q-man-3',
            promptKh: 'នៅពេលថ្នាក់លើបដិសេធសំណើសុំដំឡើងប្រាក់ខែភ្លាមៗដោយសារថវិកាក្រុមហ៊ុនតឹងតែង តើអ្នកគ្រប់គ្រងគួរចរចាជម្រើសអ្វីបន្ត?',
            promptEn: 'When upper management denies salary increases due to tight budgets, what should you negotiate next?',
            optionsKh: [
              'A. លួចយកសម្ភារការិយាល័យទៅលក់ដើម្បីប៉ះប៉ូវ។',
              'B. ចរចាកញ្ចប់អត្ថប្រយោជន៍ផ្សេងទៀត (ដូចជា ការបត់បែនម៉ោងធ្វើការ, វគ្គបណ្តុះបណ្តាលជំនាញ, ឬកិច្ចព្រមព្រៀងពិនិត្យប្រាក់ខែឡើងវិញក្នុងរយៈពេល ៦ ខែក្រោយ)។',
              'C. ឈប់ធ្វើការងារទាំងអស់ហើយមកអង្គុយលេងទូរស័ព្ទ។',
            ],
            optionsEn: [
              'A. Steal office supplies to compensate.',
              'B. Negotiate non-monetary perks (flexible hours, funded certifications, or a written 6-month review milestone).',
              'C. Stop working completely and waste time.',
            ],
            correctOptionIndex: 1,
            explanationKh: 'ការពន្យល់៖ ជម្រើស B រក្សាទ្វារចរចា និងបង្កើតឱកាសរីកចម្រើនរយៈពេលវែង ទោះបីជាថវិកាបច្ចុប្បន្នមានកម្រិតក៏ដោយ។',
            explanationEn: 'Explanation: Alternative perks and written milestones keep career growth moving forward.',
          ),
        ],
        reflection: 'តើអ្នកបានកត់ត្រាទិន្នន័យសមិទ្ធផលការងាររបស់អ្នកជាប្រចាំដែរឬទេ? តើអ្នកអាចវាស់វែងតម្លៃការងាររបស់អ្នកជាតួលេខដោយរបៀបណា?',
        workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ កត់ត្រាតួលេខស្នាដៃធំៗ ៣ របស់អ្នកដែលបានជួយក្រុមហ៊ុនសន្សំពេលវេលា ឬបង្កើនប្រាក់ចំណេញ។',
      ),
      LessonModel(
        id: 'lesson-man-4',
        courseId: 'course-manager-conflict',
        moduleId: 'mod-1',
        titleKh: '៤. ការសន្ទនាស្មុគស្មាញស្តីពីការកែលម្អការងារ (Difficult Conversations & Ethical PIPs)',
        titleEn: 'Difficult Conversations & Performance Improvement Plans',
        type: LessonType.text,
        orderIndex: 4,
        learningObjectives: '• ដឹកនាំការសន្ទនាត្រង់ទៅត្រង់មកស្តីពីការអនុវត្តការងារខ្សោយ (Underperformance) ប្រកបដោយការគោរព។\n'
            '• បង្កើតផែនការកែលម្អការងាររយៈពេល ៣០ ថ្ងៃ (30-Day PIP) ដែលមានគោលដៅជាក់លាក់ និងអាចវាស់វែងបាន។\n'
            '• ស្គាល់ពីនីតិវិធីច្បាប់ការងារ និងក្រមសីលធម៌ក្នុងការគ្រប់គ្រងធនធានមនុស្ស។',
        shortExplanation: 'ការគេចវេសមិនព្រមនិយាយពីចំណុចខ្វះខាតរបស់បុគ្គលិក គឺជាអំពើអយុត្តិធម៌ចំពោះបុគ្គលិកនោះ និងចំពោះសមាជិកក្រុមដទៃទៀតដែលខំប្រឹងប្រែង។ ការសន្ទនាស្មោះត្រង់ជួយសង្គ្រោះអាជីពការងារ។',
        workplaceStory: '«សុផាត ត្រូវជួបសន្ទនាជាមួយបុគ្គលិកចាស់វស្សាម្នាក់ដែលយឺតយ៉ាវការងារជាប្រចាំ និងតែងតែធ្វើឱ្យប៉ះពាល់ដល់ស្មារតីក្រុម។ ពីមុន សុផាតតែងតែគេចវេសព្រោះខ្លាចប៉ះពាល់មនោសញ្ចេតនា។ ប៉ុន្តែសមាជិកដទៃទៀតចាប់ផ្តើមត្អូញត្អែរ។ '
            'សុផាតបានកោះហៅគាត់ជួបឯកជន ហើយនិយាយដោយម៉ឺងម៉ាត់តែគួរសម៖ "បងជាមនុស្សសំខាន់ក្នុងក្រុមយើង ប៉ុន្តែក្នុងរយៈពេល ២ ខែចុងក្រោយនេះ លទ្ធផលការងាររបស់បងធ្លាក់ចុះ ៤០% ធៀបនឹងស្តង់ដារ។ ខ្ញុំចង់ជួយបងឱ្យទទួលបានជោគជ័យឡើងវិញ។ នេះជាផែនការកែលម្អ ៣០ ថ្ងៃ។ តើបងត្រូវការជំនួយអ្វីខ្លះពីខ្ញុំ?"។ '
            'បុគ្គលិកនោះភ្ញាក់រលឹក និងបានកែលម្អការងារឡើងវិញបានយ៉ាងល្អប្រសើរ។»',
        practicalExample: '✅ រចនាសម្ព័ន្ធផែនការកែលម្អ ៣០ ថ្ងៃ (PIP)៖\n'
            '១. គម្លាតការងារបច្ចុប្បន្ន (Current Gap)៖ "កំហុសទិន្នន័យកើតឡើង ៥ ដងក្នុងមួយខែ..."\n'
            '២. ស្តង់ដាររំពឹងទុក (Expected Standard)៖ "កំហុសមិនឱ្យលើសពី ១ ដង..."\n'
            '៣. ធនធានគាំទ្រ (Support Provided)៖ "ការបណ្តុះបណ្តាលបន្ថែម និងការ Check-in រៀងរាល់ថ្ងៃសុក្រ..."\n'
            '៤. កាលបរិច្ឆេទវាយតម្លៃចុងក្រោយ (Evaluation Date)។',
        practicalExercise: 'សរសេរសេចក្តីព្រាងចំណុចចាប់ផ្តើមនៃការសន្ទនាលំបាកមួយចំពោះបុគ្គលិកដែលធ្វើការមិនទាន់តាមការរំពឹងទុក។',
        quizQuestions: [
          QuestionModel(
            id: 'q-man-4',
            promptKh: 'បុគ្គលិកម្នាក់មិនបានបំពេញតាមការរំពឹងទុកជាបន្តបន្ទាប់។ តើវិធីសាស្ត្រដឹកនាំការសន្ទនាដ៏ត្រឹមត្រូវបំផុតគឺជាអ្វី?',
            promptEn: 'A staff member consistently underperforms. What is the most ethical conversation approach?',
            optionsKh: [
              'A. ស្រែកគំរាមបណ្តេញចេញភ្លាមៗក្នុងការប្រជុំធំដើម្បីធ្វើជាគំរូដល់អ្នកដទៃ។',
              'B. ជួបសន្ទនាឯកជន បង្ហាញទិន្នន័យជាក់លាក់ កំណត់ការរំពឹងទុកច្បាស់លាស់ និងបង្កើតផែនការគាំទ្រកែលម្អរយៈពេលជាក់លាក់។',
              'C. មិននិយាយអ្វីទាំងអស់ ហើយលួចដកការងារគាត់ចេញស្ងាត់ៗ។',
            ],
            optionsEn: [
              'A. Scream termination threats publicly to intimidate others.',
              'B. Hold a private meeting, present factual data, clarify expectations, and establish a supported improvement timeline.',
              'C. Say nothing and secretly reassign all their duties.',
            ],
            correctOptionIndex: 1,
            explanationKh: 'ការពន្យល់៖ ជម្រើស B ផ្តល់ឱកាសយុត្តិធម៌ដល់បុគ្គលិកក្នុងការកែប្រែខ្លួន ដោយរក្សាភាពថ្លៃថ្នូរ និងគោរពសិទ្ធិការងារ។',
            explanationEn: 'Explanation: Objective, private feedback with structured support is the gold standard of ethical leadership.',
          ),
        ],
        reflection: 'តើការគេចវេសពីការសន្ទនាលំបាក ធ្លាប់ធ្វើឱ្យបញ្ហាក្នុងក្រុមរបស់អ្នកកាន់តែរីកធំឡើងដែរឬទេ?',
        workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ កំណត់បញ្ហាស្មុគស្មាញមួយដែលអ្នកបានពន្យារពេលយូរមកហើយ ហើយកំណត់កាលវិភាគជជែកដោះស្រាយក្នុងសប្តាហ៍នេះ។',
      ),
      LessonModel(
        id: 'lesson-mgr-5',
        courseId: 'course-manager-conflict',
        moduleId: 'mod-1',
        titleKh: '៥. ការចរចាថវិកា និងការបែងចែកធនធានរវាងនាយកដ្ឋាន (Cross-Department Budget Negotiation)',
        titleEn: 'Cross-Department Budgeting & Resource Allocation',
        type: LessonType.text,
        orderIndex: 5,
        learningObjectives: '• យល់ដឹងពីវិធីចរចាដណ្តើមធនធាន ឬថវិកា (Budget) ដោយមិនបង្កើតជម្លោះជាមួយប្រធានផ្នែកដទៃ។\n'
            '• បង្ហាញការវិភាគ ROI (Return on Investment) ជាក់ស្តែងជូនថ្នាក់ដឹកនាំជាន់ខ្ពស់។\n'
            '• កសាងសម្ព័ន្ធភាពអន្តរផ្នែក (Cross-functional Alliances) ដើម្បីផលប្រយោជន៍រួមរបស់ស្ថាប័ន។',
        shortExplanation: 'ការចរចាថវិកាមិនមែនជាល្បែងដណ្តើមចំណិតនំខេក (Zero-sum Game) នោះទេ។ អ្នកគ្រប់គ្រងឆ្នើមបង្ហាញឱ្យឃើញថា ធនធានដែលវិនិយោគលើផ្នែករបស់ខ្លួននឹងជួយឱ្យនាយកដ្ឋានផ្សេងទៀតសម្រេច KPI បានលឿនជាងមុន។',
        workplaceStory: '«ក្នុងកិច្ចប្រជុំបែងចែកថវិកាប្រចាំឆ្នាំ ផ្នែក Marketing និងផ្នែក Sales តែងតែឈ្លោះគ្នាដណ្តើមថវិកាផ្សាយពាណិជ្ជកម្ម។ វណ្ណី (Marketing Manager) មិនបានចូលទៅទាមទារដោយអារម្មណ៍ឡើយ។ '
            'នាងបានធ្វើបទបង្ហាញបង្ហាញថា ប្រសិនបើផ្តល់ថវិកា \$10,000 លើយុទ្ធនាការឌីជីថល ក្រុម Sales នឹងទទួលបាន Lead អតិថិជនសក្តានុពល ២,០០០ នាក់បន្ថែម ដែលអាចបម្លែងជាការលក់បាន \$50,000។ ប្រធានផ្នែក Sales មិនត្រឹមតែមិនជំទាស់ទេ ថែមទាំងគាំទ្រសំណើរបស់វណ្ណីយ៉ាងពេញទំហឹង។»',
        practicalExample: '✅ របៀបស្នើសុំថវិកាដោយផ្អែកលើ ROI៖\n'
            '«ការវិនិយោគ \$5,000 លើឧបករណ៍ស្វ័យប្រវត្តនេះ នឹងកាត់បន្ថយពេលវេលាដំណើរការទិន្នន័យរបស់ក្រុមយើង ៥០% ដែលជួយឱ្យយើងឆ្លើយតបអតិថិជនបានលឿនជាងមុន ២ ដង និងបង្កើនចំណូលសរុបស្ថាប័នយ៉ាងហោចណាស់ \$20,000 ក្នុងមួយឆ្នាំ។»',
        practicalExercise: 'សរសេរសំណើសុំថវិកា ឬធនធានមួយទំព័រសម្រាប់គម្រោងថ្មី ដោយបញ្ជាក់ពីផលចំណេញ (ROI) ច្បាស់លាស់។',
        quizQuestions: [
          QuestionModel(
            id: 'q-mgr-5',
            promptKh: 'តើវិធីសាស្ត្រចរចាសុំថវិកាបន្ថែមណាដែលមានប្រសិទ្ធភាពបំផុតនៅចំពោះមុខគណៈនាយក?',
            promptEn: 'Which budget negotiation approach is most effective with executive leadership?',
            optionsKh: [
              'A. ត្អូញត្អែរថាផ្នែកខ្លួនខ្វះខាតលុយខ្លាំង ហើយបន្ទោសផ្នែកផ្សេងថាបានច្រើនពេក។',
              'B. បង្ហាញទិន្នន័យ ROI ជាក់ស្តែងថា តើថវិកានេះនឹងជួយក្រុមហ៊ុនបង្កើតចំណូល ឬសន្សំការខាតបង់បានប៉ុន្មាន។',
              'C. គំរាមថាបើមិនឱ្យថវិកា ក្រុមខ្លួននឹងមិនទទួលខុសត្រូវលើលទ្ធផលការងារឡើយ។',
            ],
            optionsEn: [
              'A. Complain about lack of money and blame other departments.',
              'B. Present concrete ROI data showing how the investment drives revenue or cuts costs.',
              'C. Threaten to disown performance outcomes.',
            ],
            correctOptionIndex: 1,
            explanationKh: 'ការពន្យល់៖ ជម្រើស B និយាយជាភាសាធុរកិច្ច (Business language of ROI) ដែលគណៈនាយកយកចិត្តទុកដាក់បំផុត។',
            explanationEn: 'Explanation: Executives speak the language of ROI and measurable business impact.',
          ),
        ],
        reflection: 'តើសំណើសុំថវិការបស់អ្នកកន្លងមក ធ្លាប់បានផ្តោតលើផលប្រយោជន៍រួមរបស់ក្រុមហ៊ុន ឬគ្រាន់តែជាតម្រូវការខាងក្នុងផ្នែក?',
        workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ គណនា ROI លើឧបករណ៍ ឬដំណើរការការងារមួយដែលផ្នែករបស់អ្នកកំពុងចង់ស្នើសុំ។',
      ),
      LessonModel(
        id: 'lesson-mgr-6',
        courseId: 'course-manager-conflict',
        moduleId: 'mod-1',
        titleKh: '៦. ការដឹកនាំស្ថាប័នឆ្លងកាត់ការផ្លាស់ប្តូរ និងវិបត្តិ (Change Management Framework)',
        titleEn: 'Leading Organizations Through Change & Crisis',
        type: LessonType.text,
        orderIndex: 6,
        learningObjectives: '• យល់ដឹងពីចិត្តសាស្ត្រនៃការប្រឆាំងនឹងការផ្លាស់ប្តូររបស់មនុស្ស (Resistance to Change)។\n'
            '• អនុវត្តគំរូ ៨ ជំហានរបស់ Kotter ក្នុងការដឹកនាំការផ្លាស់ប្តូរ (Kotter\'s 8-Step Change Model)។\n'
            '• ទំនាក់ទំនងប្រកបដោយតម្លាភាពដើម្បីកាត់បន្ថយការភ័យខ្លាច និងពាក្យចចាមអារ៉ាមក្នុងស្ថាប័ន។',
        shortExplanation: 'ការផ្លាស់ប្តូរប្រព័ន្ធ ឬរចនាសម្ព័ន្ធស្ថាប័នបរាជ័យ មិនមែនដោយសារបច្ចេកវិទ្យាខ្សោយនោះទេ ប៉ុន្តែដោយសារអ្នកដឹកនាំមិនបានរៀបចំផ្នត់គំនិត និងចិត្តសាស្ត្ររបស់មនុស្សឱ្យត្រៀមខ្លួនជាមុន។',
        workplaceStory: '«ក្រុមហ៊ុនមួយបានប្តូរពីការកត់ត្រាលើក្រដាស មកប្រើប្រាស់ប្រព័ន្ធ ERP ថ្មី។ បុគ្គលិកចាស់ៗជាច្រើនបានរអ៊ូរទាំ និងលួចកត់ក្រដាសដដែល។ ប្រធានផ្នែកថ្មីមិនបានដាក់ពិន័យឡើយ។ '
            'គាត់បានរៀបចំវគ្គចែករំលែកសួរសុខទុក្ខ បង្កើតកម្មវិធីបង្វឹកផ្ទាល់ដៃ (Mentorship) និងបង្ហាញថាប្រព័ន្ធថ្មីនេះជួយឱ្យពួកគេបានចេញទៅផ្ទះទាន់ម៉ោង ៥ ល្ងាចដោយមិនបាច់ធ្វើការថែមម៉ោង។ ត្រឹមតែ ២ ខែ បុគ្គលិកទាំងអស់បានប្រើប្រាស់ប្រព័ន្ធ ERP យ៉ាងស្ទាត់ជំនាញ។»',
        practicalExample: '✅ របៀបប្រាស្រ័យទាក់ទងពេលមានការផ្លាស់ប្តូរធំ៖\n'
            '«ការផ្លាស់ប្តូរនេះអាចធ្វើឱ្យយើងមានអារម្មណ៍មិនទម្លាប់ក្នុងសប្តាហ៍ដំបូង។ ប៉ុន្តែគោលដៅចម្បងគឺជួយកាត់បន្ថយបន្ទុកការងារស្មុគស្មាញរបស់ក្រុមយើង និងជួយឱ្យយើងមានឱកាសរីកចម្រើនក្នុងអាជីព។ យើងនឹងនៅក្បែរបងប្អូនដើម្បីគាំទ្រគ្រប់ជំហាន។»',
        practicalExercise: 'កំណត់ការផ្លាស់ប្តូរមួយដែលក្រុមហ៊ុនរបស់អ្នកកំពុងអនុវត្ត ហើយសរសេរសារពន្យល់ ៣ ចំណុចដើម្បីបន្ធូរបន្ថយការព្រួយបារម្ភរបស់ក្រុម។',
        quizQuestions: [
          QuestionModel(
            id: 'q-mgr-6',
            promptKh: 'នៅពេលក្រុមហ៊ុនប្រកាសផ្លាស់ប្តូរប្រព័ន្ធការងារថ្មី ហើយបុគ្គលិកចាប់ផ្តើមរអ៊ូរទាំ តើអ្នកគ្រប់គ្រងគួរឆ្លើយតបបែបណា?',
            promptEn: 'When the company rolls out a new system and staff complain, how should the manager respond?',
            optionsKh: [
              'A. ស្រែកគំរាមថាអ្នកណាមិនធ្វើតាមនឹងត្រូវដកចេញ។',
              'B. ស្តាប់ក្តីកង្វល់ដោយការយល់ចិត្ត បញ្ជាក់ឡើងវិញពីគុណតម្លៃ និងផ្តល់ការបណ្តុះបណ្តាលគាំទ្រជាប់លាប់។',
              'C. បោះបង់ការផ្លាស់ប្តូរចោល ហើយត្រឡប់ទៅរកទម្លាប់ចាស់វិញ។',
            ],
            optionsEn: [
              'A. Threaten to fire anyone who resists.',
              'B. Listen to concerns with empathy, reaffirm benefits, and provide continuous training support.',
              'C. Abandon change and revert to old habits.',
            ],
            correctOptionIndex: 1,
            explanationKh: 'ការពន្យល់៖ ជម្រើស B ជួយកាត់បន្ថយភាពភ័យខ្លាច និងបង្កើតទំនុកចិត្តក្នុងការសម្របខ្លួនទៅនឹងស្តង់ដារថ្មី។',
            explanationEn: 'Explanation: Empathetic listening combined with proactive training overcomes natural resistance to change.',
          ),
        ],
        reflection: 'តើអ្នកផ្ទាល់ជាមនុស្សដែលបើកចិត្តចំពោះការផ្លាស់ប្តូរថ្មីៗ ឬតែងតែមានការភ័យខ្លាចចំពោះអ្វីដែលមិនធ្លាប់ស្គាល់?',
        workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ស្វែងយល់ និងសាកល្បងប្រើប្រាស់ឧបករណ៍បច្ចេកវិទ្យាថ្មីមួយ (ឧ. AI ឬ Productivity Tool) ក្នុងការងាររបស់អ្នក។',
      ),
      ...ExtraLessonsPart2.managerLessons,
    ],

    // =========================================================================
    // 5. FOUNDER & SME COURSE (course-founder-sme)
    // =========================================================================
    'course-founder-sme': [
      LessonModel(
        id: 'lesson-found-1',
        courseId: 'course-founder-sme',
        moduleId: 'mod-1',
        titleKh: '១. យុទ្ធសាស្ត្រជ្រើសរើសបុគ្គលិកសម្រាប់ SME (Attitude-First Hiring for SME Culture)',
        titleEn: 'Hiring for Attitude & Cultural Fit in SMEs',
        type: LessonType.text,
        orderIndex: 1,
        learningObjectives: '• យល់ដឹងពីគ្រោះថ្នាក់នៃការជ្រើសរើសមនុស្សខុសក្នុងក្រុមតូច (Toxic Apple effect)។\n'
            '• របៀបសម្ភាសន៍ដើម្បីស្វែងរកមនុស្សដែលមានស្មារតីម្ចាស់ការ (Ownership Mindset)។\n'
            '• កំណត់គុណតម្លៃស្នូល (Core Values) ដែលមិនអាចចរចាបាន (Non-negotiables)។',
        shortExplanation: 'សម្រាប់ SME បុគ្គលិកម្នាក់មិនមែនគ្រាន់តែជាកម្លាំងពលកម្មទេ គាត់គឺជា 10% ទៅ 20% នៃវប្បធម៌ក្រុមហ៊ុនទាំងមូល។ ចូរជ្រើសរើសមនុស្សដែលមានអត្តចរិតល្អ ស្មោះត្រង់ រួចបណ្តុះបណ្តាលជំនាញតាមក្រោយ។',
        workplaceStory: '«ស្ថាបនិកហាងកាហ្វេ និងនំប៉័ង SME មួយនៅសៀមរាប បានជ្រើសរើស Barista ពូកែមានបទពិសោធន៍ ៥ ឆ្នាំ ប៉ុន្តែគាត់មានចរិតឆ្មើងឆ្មៃ មិនស្តាប់យោបល់ និងបង្កជម្លោះរាល់ថ្ងៃ។ ក្នុងរយៈពេល ២ ខែ បុគ្គលិកចាស់ៗដែលស្មោះត្រង់បានលាលែងអស់ ៣ នាក់ ហើយអតិថិជនចាប់ផ្តើមរត់ចោល។ '
            'ក្រោយមក ម្ចាស់អាជីវកម្មបានប្តូរយុទ្ធសាស្ត្រមកជ្រើសរើសយុវជនថ្មីដែលមានស្នាមញញឹម ស្រលាញ់សេវាកម្ម រួចបញ្ជូនទៅរៀនឆុងកាហ្វេបន្ថែម។ អាជីវកម្មបានវិលត្រឡប់មករីករាយ និងមានអតិថិជនពេញៗហាងវិញ។»',
        practicalExample: '✅ សំណួរសម្ភាសន៍ស្វែងរក Ownership Mindset៖\n'
            '• "សូមរៀបរាប់ពីកំហុសធំបំផុតដែលអ្នកធ្លាប់បានធ្វើនៅកន្លែងការងារចាស់? តើអ្នកបានដោះស្រាយវាដោយរបៀបណា?"\n'
            '• "ប្រសិនបើអ្នកឃើញឥដ្ឋការ៉ូក្នុងហាងបាក់បែក ឬសំរាមធ្លាក់លើដី ដែលមិនមែនជាតួនាទីអ្នក តើអ្នកនឹងធ្វើដូចម្តេច?"',
        practicalExercise: 'បង្កើតបញ្ជីគុណតម្លៃស្នូល ៣ យ៉ាង (Core Values) ដែលបុគ្គលិកគ្រប់រូបក្នុងអាជីវកម្មរបស់អ្នកត្រូវតែមានជាដាច់ខាត។',
        quizQuestions: [
          QuestionModel(
            id: 'q-found-1',
            promptKh: 'នៅពេលសម្ភាសន៍ជ្រើសរើសបុគ្គលិកដំបូងសម្រាប់អាជីវកម្ម SME តើកត្តាណាដែលស្ថាបនិកគួរផ្តល់អាទិភាពខ្ពស់បំផុត?',
            promptEn: 'When hiring early team members for an SME, what factor should the founder prioritize most?',
            optionsKh: [
              'A. សញ្ញាបត្រខ្ពស់ៗពីបរទេស ទោះបីជាគាត់មានអត្តចរិតឆ្មើងឆ្មៃ និងមិនចង់ចុះធ្វើការជាក់ស្តែងក៏ដោយ។',
              'B. អត្តចរិតល្អ ភាពស្មោះត្រង់ ឆន្ទៈរៀនសូត្រ និងស្មារតីម្ចាស់ការដែលស្របនឹងវប្បធម៌ក្រុម។',
              'C. អ្នកដែលទាមទារប្រាក់ខែថោកបំផុតទោះបីជាគ្មានការទទួលខុសត្រូវក៏ដោយ។',
            ],
            optionsEn: [
              'A. Elite foreign degrees even if arrogant and unwilling to get hands dirty.',
              'B. Strong work ethic, integrity, eagerness to learn, and ownership mindset aligned with culture.',
              'C. The cheapest salary candidate regardless of reliability.',
            ],
            correctOptionIndex: 1,
            explanationKh: 'ការពន្យល់៖ ជម្រើស B ធានាថាក្រុមការងារអាចសហការគ្នាបានរលូន និងមានភាពស្មោះត្រង់ក្នុងដំណាក់កាលកសាងអាជីវកម្ម។ ជំនាញបច្ចេកទេសអាចបង្រៀនបាន តែអត្តចរិតពិបាកកែប្រែណាស់។',
            explanationEn: 'Explanation: Skills can be trained rapidly, but character and attitude are difficult to alter.',
          ),
        ],
        reflection: 'តើអ្នកធ្លាប់ជ្រើសរើសបុគ្គលិកដោយសារតែ CV ស្អាត ប៉ុន្តែចរិតមិនត្រូវគ្នាដែរឬទេ? តើបទពិសោធន៍នោះបង្រៀនអ្វីខ្លះដល់អ្នក?',
        workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ កំណត់ច្បាស់នូវចំណុចដែលអ្នកមិនអាចទទួលយកបាន (Non-negotiables) ក្នុងការជ្រើសរើសបុគ្គលិកបន្ទាប់។',
      ),
      LessonModel(
        id: 'lesson-found-2',
        courseId: 'course-founder-sme',
        moduleId: 'mod-1',
        titleKh: '២. ការគ្រប់គ្រងលំហូរសាច់ប្រាក់ និងវិន័យហិរញ្ញវត្ថុ SME (Cash Flow Survival & Financial Runway)',
        titleEn: 'Cash Flow Survival & Financial Literacy for Founders',
        type: LessonType.text,
        orderIndex: 2,
        learningObjectives: '• បែងចែកដាច់រវាង "ប្រាក់ចំណេញលើក្រដាស (Accounting Profit)" និង "សាច់ប្រាក់ជាក់ស្តែងក្នុងដៃ (Cash in Bank)"។\n'
            '• គណនារយៈពេលសាច់ប្រាក់បម្រុង (Runway) ឱ្យបានយ៉ាងតិច ៣ ទៅ ៦ ខែសម្រាប់ចំណាយថេរ។\n'
            '• អនុវត្តគោលការណ៍ទារបំណុល និងការតម្រូវឱ្យកក់ប្រាក់មុន។',
        shortExplanation: 'អាជីវកម្មមិនមែនដួលរលំដោយសារគ្មានប្រាក់ចំណេញនោះទេ ភាគច្រើនដួលរលំដោយសារដាច់សាច់ប្រាក់បង្វិល (Cash Crunch)។ សាច់ប្រាក់គឺជាអុកស៊ីសែននៃអាជីវកម្ម។',
        workplaceStory: '«ក្រុមហ៊ុនលក់សម្ភារបច្ចេកវិទ្យាមួយមានការកុម្ម៉ង់ទិញរាប់ម៉ឺនដុល្លារក្នុងមួយខែ។ ម្ចាស់អាជីវកម្មសប្បាយចិត្តដោយគិតថាខ្លួនកំពុងចំណេញធំ។ ប៉ុន្តែគាត់អនុញ្ញាតឱ្យអតិថិជនជំពាក់ ៦០ ថ្ងៃ ខណៈដែលគាត់ត្រូវបើកប្រាក់ខែបុគ្គលិក និងបង់ថ្លៃជួលរាល់ខែ។ '
            'នៅខែទី ៣ អតិថិជនធំ ២ នាក់ពន្យារពេលសងលុយ ធ្វើឱ្យក្រុមហ៊ុនគ្មានលុយបើកប្រាក់ខែឱ្យកូនចៅ។ ស្ថាបនិកត្រូវបង្ខំចិត្តខ្ចីការប្រាក់ក្រៅប្រព័ន្ធយ៉ាងវេទនា។ ក្រោយមក គាត់បានកែប្រែគោលការណ៍តម្រូវឱ្យកក់ ៥០% មុនជានិច្ច ទើបស្រោចស្រង់ស្ថានភាពហិរញ្ញវត្ថុបានរឹងមាំឡើងវិញ។»',
        practicalExample: '✅ ក្បួនមាសគ្រប់គ្រងលំហូរសាច់ប្រាក់៖\n'
            '• Runway = [សាច់ប្រាក់សុទ្ធក្នុងធនាគារ] ÷ [ចំណាយថេរប្រចាំខែ (Fixed Costs)]\n'
            '• ប្រសិនបើ Runway តិចជាង ៣ ខែ ត្រូវកាត់បន្ថយចំណាយមិនចាំបាច់ភ្លាមៗ និងបង្កើនល្បឿនទារបំណុលចាស់ៗ។',
        practicalExercise: 'គណនាចំណាយថេរប្រចាំខែ (Fixed Costs) របស់អាជីវកម្មរបស់អ្នក និងចំនួនខែនៃ Runway ដែលអ្នកមានបច្ចុប្បន្ន។',
        quizQuestions: [
          QuestionModel(
            id: 'q-found-2',
            promptKh: 'អាជីវកម្មរបស់អ្នកមានរបាយការណ៍គណនេយ្យបង្ហាញថាចំណេញ \$5,000 ក្នុងខែនេះ ប៉ុន្តែគណនីធនាគារសល់លុយមិនគ្រប់បើកប្រាក់ខែបុគ្គលិក។ តើបញ្ហាពិតប្រាកដមកពីអ្វី?',
            promptEn: 'Your accounting statement shows \$5,000 profit, but your bank account lacks cash for payroll. What is the root cause?',
            optionsKh: [
              'A. ធនាគារលួចកាត់លុយដោយមិនដឹងខ្លួន។',
              'B. វិបត្តិលំហូរសាច់ប្រាក់ (Cash Flow crunch) ដោយសារប្រាក់ចំណេញជាប់គាំងលើបំណុលដែលអតិថិជនមិនទាន់សង ឬទំនិញគរក្នុងស្តុកច្រើនពេក។',
              'C. បុគ្គលិកគណនេយ្យធ្វើលេខខុសទាំងស្រុង។',
            ],
            optionsEn: [
              'A. Bank silently stole the money.',
              'B. Cash flow crunch caused by uncollected receivables or capital tied up in slow inventory.',
              'C. Accounting staff fabricated everything.',
            ],
            correctOptionIndex: 1,
            explanationKh: 'ការពន្យល់៖ ជម្រើស B ពន្យល់ពីគម្លាតរវាងប្រាក់ចំណេញលើក្រដាស (Accrual Profit) និងសាច់ប្រាក់ជាក់ស្តែង (Real Cash)។ ការគ្រប់គ្រងបំណុល និងស្តុកមានសារៈសំខាន់ស្មើនឹងការលក់។',
            explanationEn: 'Explanation: Accrual profit does not equal cash in bank when receivables and stock lock liquidity.',
          ),
        ],
        reflection: 'តើអ្នកធ្លាប់ជួបវិបត្តិគេជំពាក់លុយមិនសងរហូតដល់គ្មានលុយបង្វិលដែរឬទេ? តើអ្នកមានប្រព័ន្ធតាមដានលំហូរសាច់ប្រាក់ប្រចាំសប្តាហ៍ហើយឬនៅ?',
        workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ពិនិត្យមើលបញ្ជីបំណុលដែលអតិថិជនជំពាក់ហួសកាលកំណត់ ហើយទូរស័ព្ទតាមដានភ្លាមៗនៅថ្ងៃនេះ។',
      ),
      LessonModel(
        id: 'lesson-found-3',
        courseId: 'course-founder-sme',
        moduleId: 'mod-1',
        titleKh: '៣. របៀបចាកចេញពីតួនាទីជា "អ្នកធ្វើការ" ទៅជា "អ្នកដឹកនាំ" (Working ON vs IN Business & SOPs)',
        titleEn: 'Transitioning from Doer to Strategic Leader with SOPs',
        type: LessonType.text,
        orderIndex: 3,
        learningObjectives: '• យល់ដឹងពីសៀវភៅប្រតិបត្តិការស្តង់ដារ (SOPs) ដើម្បីកុំឱ្យអាជីវកម្មពឹងផ្អែកតែលើរូបអ្នកម្នាក់ឯង។\n'
            '• កសាងប្រព័ន្ធប្រតិបត្តិការដែលដំណើរការដោយស្វ័យប្រវត្ត (Self-sustaining systems)។\n'
            '• បែងចែកពេលវេលាសម្រាប់យុទ្ធសាស្ត្រពង្រីកទីផ្សារ ជំនួសឱ្យការដោះស្រាយបញ្ហាតូចតាចរាល់ថ្ងៃ។',
        shortExplanation: 'ប្រសិនបើអាជីវកម្មរបស់អ្នកមិនអាចដំណើរការបាននៅពេលអ្នកឈឺ ឬចេញទៅក្រៅ ២ សប្តាហ៍ មានន័យថាអ្នកមិនមែនជាម្ចាស់អាជីវកម្មទេ អ្នកគ្រាន់តែទិញការងារមួយមកឱ្យខ្លួនឯងធ្វើប៉ុណ្ណោះ។',
        workplaceStory: '«ម្ចាស់អាជីវកម្មលក់រាយម្នាក់ត្រូវរត់ទិញទំនិញខ្លួនឯង ឆ្លើយតប Chat អតិថិជនខ្លួនឯង និងធ្វើគណនេយ្យខ្លួនឯងរហូតដល់គ្មានពេលសម្រាកជាមួយគ្រួសារ និងគ្មានពេលគិតរឿងពង្រីកសាខាថ្មី។ '
            'ក្រោយមក គាត់បានចំណាយពេល ២ សប្តាហ៍ថតវីដេអូខ្លីៗ និងសរសេរ SOP មួយទំព័រសម្រាប់រាល់កិច្ចការដដែលៗ រួចបណ្តុះបណ្តាលបុគ្គលិកឱ្យធ្វើតាម។ ឥឡូវនេះ ហាងរបស់គាត់ដំណើរការយ៉ាងរលូនទោះបីជាគាត់មិននៅ ហើយគាត់មានពេលគ្រប់គ្រាន់ដើម្បីបើកសាខាទី ២ និងទី ៣ ដោយជោគជ័យ។»',
        practicalExample: '✅ ជំហានកសាង SOP ៣ ជំហាន៖\n'
            '១. Record៖ ថតសកម្មភាពអេក្រង់ ឬថតវីដេអូពេលអ្នកកំពុងធ្វើការងារនោះ។\n'
            '២. Document Checklist៖ សរសេរជាជំហាន ១, ២, ៣ យ៉ាងសាមញ្ញបំផុត។\n'
            '៣. Delegate & Review៖ ឱ្យបុគ្គលិកអនុវត្តតាម ហើយកែសម្រួលចំណុចដែលមិនទាន់ច្បាស់។',
        practicalExercise: 'ជ្រើសរើសការងារដដែលៗមួយដែលអ្នកចំណាយពេលលើសពី ២ ម៉ោងក្នុងមួយសប្តាហ៍ ហើយបង្កើតឯកសារ SOP សង្ខេបមួយសម្រាប់កូនចៅ។',
        quizQuestions: [
          QuestionModel(
            id: 'q-found-3',
            promptKh: 'ម្ចាស់អាជីវកម្មម្នាក់ត្រូវបុគ្គលិកទូរស័ព្ទមកសួរនាំ និងសុំការសម្រេចចិត្តរាល់រឿងតូចតាចរៀងរាល់ ១០ នាទីម្តង។ តើដំណោះស្រាយយូរអង្វែងគឺជាអ្វី?',
            promptEn: 'A founder gets interrupted every 10 minutes for minor decisions. What is the long-term solution?',
            optionsKh: [
              'A. បិទទូរស័ព្ទចោល ហើយស្តីបន្ទោសបុគ្គលិកថាមិនចេះគិត។',
              'B. បង្កើត SOPs ច្បាស់លាស់ និងកំណត់កម្រិតសិទ្ធិសម្រេចចិត្ត (Authority Matrix) ឱ្យបុគ្គលិកអាចដោះស្រាយរឿងក្រោម \$50 ដោយខ្លួនឯង។',
              'C. ជួលមនុស្សបន្ថែមមកចាំទទួលទូរស័ព្ទជំនួស។',
            ],
            optionsEn: [
              'A. Turn off phone and scold employees for not thinking.',
              'B. Build clear SOPs and establish an authority matrix empowering staff to resolve matters under \$50 autonomously.',
              'C. Hire more people just to answer questions.',
            ],
            correctOptionIndex: 1,
            explanationKh: 'ការពន្យល់៖ ជម្រើស B ផ្តល់សិទ្ធិអំណាច និងក្របខ័ណ្ឌច្បាស់លាស់ដល់ក្រុមការងារ ដែលជួយរំដោះពេលវេលាម្ចាស់អាជីវកម្មមកផ្តោតលើយុទ្ធសាស្ត្រធំៗ។',
            explanationEn: 'Explanation: Clear SOPs and decision authority boundaries free founders from daily firefighting.',
          ),
        ],
        reflection: 'តើមានអ្វីកើតឡើងចំពោះអាជីវកម្មរបស់អ្នក ប្រសិនបើអ្នកមិនអាចចូលមើលការខុសត្រូវរយៈពេល ១ ខែពេញ?',
        workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ កត់ត្រារាល់សកម្មភាពដែលអ្នកបានធ្វើថ្ងៃនេះ រួចគូសចំណាំការងារណាដែលអាចផ្ទេរឱ្យអ្នកដទៃធ្វើតាមរយៈ SOP។',
      ),
      LessonModel(
        id: 'lesson-found-4',
        courseId: 'course-founder-sme',
        moduleId: 'mod-1',
        titleKh: '៤. ការកសាងទំនុកចិត្ត និងការរក្សាបុគ្គលិកឆ្នើម (Talent Retention & Profit Sharing in SME)',
        titleEn: 'Retaining Top Performers in Growing SMEs',
        type: LessonType.text,
        orderIndex: 4,
        learningObjectives: '• បង្កើតផែនការរីកចម្រើនក្នុងអាជីព (Growth Pathway) ទោះបីជាក្រុមហ៊ុនខ្នាតតូចក៏ដោយ។\n'
            '• យល់ដឹងពីរចនាសម្ព័ន្ធលើកទឹកចិត្តតាមរយៈការបែងចែកប្រាក់ចំណេញ (Profit Sharing & Performance Bonus)។\n'
            '• កសាងទំនាក់ទំនងស្និទ្ធស្នាល និងការគោរពតម្លៃដែលក្រុមហ៊ុនធំៗមិនអាចផ្តល់ជូនបាន។',
        shortExplanation: 'ក្រុមហ៊ុន SME មិនអាចប្រកួតប្រជែងប្រាក់ខែជាមួយសាជីវកម្មពហុជាតិបានទេ ប៉ុន្តែ SME អាចផ្តល់នូវភាពស្និទ្ធស្នាល ឱកាសរៀនសូត្រលឿន ភាពបត់បែន និងចំណែកនៃភាពជោគជ័យពិតប្រាកដ។',
        workplaceStory: '«ស្ថាបនិកក្រុមហ៊ុនបច្ចេកវិទ្យាខ្នាតតូចមួយ បានជួបបញ្ហាបុគ្គលិកពូកែចង់លាលែងទៅធ្វើការនៅធនាគារធំ។ ស្ថាបនិកបានជួបសន្ទនាដោយស្មោះត្រង់ ហើយបានផ្តល់នូវកញ្ចប់លើកទឹកចិត្តថ្មី៖ គាត់ផ្តល់ឱកាសឱ្យបុគ្គលិកនោះធ្វើជាដៃគូគម្រោង (Project Partner) និងទទួលបានចំណែកភាគរយពីប្រាក់ចំណេញសុទ្ធនៃផលិតផលថ្មី ១៥%។ '
            'បុគ្គលិកនោះបានបដិសេធសំណើធនាគារ ព្រោះគាត់មើលឃើញថានៅទីនេះគាត់ជាសហគ្រិន និងមានអនាគតរីកចម្រើនគ្មានដែនកំណត់។ ពីរឆ្នាំក្រោយមក ផលិតផលនោះទទួលបានជោគជ័យខ្លាំង ហើយពួកគេទាំងពីរក្លាយជាដៃគូអាជីវកម្មដ៏រឹងមាំ។»',
        practicalExample: '✅ យុទ្ធសាស្ត្ររក្សាមនុស្សឆ្នើម ៣ ចំណុចសម្រាប់ SME៖\n'
            '១. Autonomy៖ ផ្តល់សិទ្ធិសម្រេចចិត្តលើគម្រោងដែលពួកគេស្រលាញ់។\n'
            '២. Mastery៖ ឧបត្ថម្ភការរៀនសូត្រ និងវគ្គបណ្តុះបណ្តាលវិជ្ជាជីវៈកម្រិតខ្ពស់។\n'
            '៣. Purpose & Stake៖ ចែករំលែកផលចំណេញជាក់ស្តែងនៅពេលក្រុមហ៊ុនសម្រេចគោលដៅ។',
        practicalExercise: 'រៀបចំរចនាសម្ព័ន្ធកញ្ចប់លើកទឹកចិត្តផ្អែកលើលទ្ធផលការងារ (Performance Incentive) សម្រាប់បុគ្គលិកគន្លឹះរបស់អ្នក។',
        quizQuestions: [
          QuestionModel(
            id: 'q-found-4',
            promptKh: 'បុគ្គលិកឆ្នើមម្នាក់ក្នុង SME របស់អ្នកកំពុងពិចារណាទៅធ្វើការនៅក្រុមហ៊ុនធំមួយ។ តើយុទ្ធសាស្ត្រចរចារក្សាគាត់ដែលសមស្របបំផុតសម្រាប់ SME គឺជាអ្វី?',
            promptEn: 'A top performer is considering leaving for a corporate job. What is the most effective SME retention strategy?',
            optionsKh: [
              'A. គំរាមកំហែង និងនិយាយបង្ខូចកេរ្តិ៍ឈ្មោះក្រុមហ៊ុនធំនោះឱ្យគាត់ខ្លាច។',
              'B. សន្ទនា 1-on-1 ដោយស្មោះត្រង់ ផ្តល់ឱកាសដឹកនាំគម្រោងសំខាន់ បង្កើតផ្លូវឡើងតំណែងច្បាស់លាស់ និងផ្តល់កញ្ចប់ចែករំលែកប្រាក់ចំណេញ (Profit Sharing)។',
              'C. មិនខ្វល់ខ្វាយព្រោះគិតថាមនុស្សងាយស្រួលរកជំនួសណាស់។',
            ],
            optionsEn: [
              'A. Threaten them and badmouth the large corporation.',
              'B. Hold a sincere 1-on-1, offer key project leadership, clear growth pathways, and profit-sharing incentives.',
              'C. Do nothing, assuming people are easily replaced.',
            ],
            correctOptionIndex: 1,
            explanationKh: 'ការពន្យល់៖ ជម្រើស B ផ្តល់នូវអ្វីដែលសាជីវកម្មធំៗពិបាកផ្តល់ជូន គឺល្បឿននៃការរីកចម្រើន អារម្មណ៍ជាម្ចាស់ការ និងចំណែកនៃភាពជោគជ័យផ្ទាល់។',
            explanationEn: 'Explanation: Autonomy, rapid progression, and direct profit-sharing outshine rigid corporate bureaucracy.',
          ),
        ],
        reflection: 'តើហេតុអ្វីបានជាមនុស្សពូកែគួរនៅបន្តធ្វើការជាមួយអាជីវកម្មរបស់អ្នក ជំនួសឱ្យការទៅធ្វើការនៅក្រុមហ៊ុនធំៗ? តើអ្នកបានផ្តល់អ្វីខ្លះដល់អនាគតរបស់ពួកគេ?',
        workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ជួបសន្ទនា 1-on-1 ជាមួយបុគ្គលិកឆ្នើមម្នាក់របស់អ្នក ហើយថ្លែងអំណរគុណចំពោះការខិតខំ និងសួរនាំពីក្តីសុបិនអាជីពរបស់គាត់។',
      ),
      LessonModel(
        id: 'lesson-fnd-5',
        courseId: 'course-founder-sme',
        moduleId: 'mod-1',
        titleKh: '៥. ការរៀបចំប្រព័ន្ធ SOP និងស្វ័យប្រវត្តិកម្មអាជីវកម្ម (Business Systemization & SOP)',
        titleEn: 'Business Systemization & Standard Operating Procedures',
        type: LessonType.text,
        orderIndex: 5,
        learningObjectives: '• យល់ដឹងពីរបៀបកសាងប្រព័ន្ធការងារដែលដំណើរការដោយរលូន ទោះបីជាគ្មានវត្តមានស្ថាបនិកក៏ដោយ។\n'
            '• បង្កើតឯកសារ SOP (Standard Operating Procedure) សាមញ្ញ ១ ទំព័រសម្រាប់ដំណើរការអាជីវកម្មស្នូល។\n'
            '• ប្រើប្រាស់បច្ចេកវិទ្យា និង Cloud Tools ដើម្បីកាត់បន្ថយកិច្ចការដដែលៗដោយដៃ។',
        shortExplanation: 'ប្រសិនបើអាជីវកម្មរបស់អ្នកមិនអាចដំណើរការបាននៅពេលអ្នកឈប់សម្រាក នោះអ្នកមិនទាន់ជាម្ចាស់អាជីវកម្មពិតប្រាកដនៅឡើយទេ អ្នកគ្រាន់តែជាអ្នកធ្វើការឱ្យខ្លួនឯងប៉ុណ្ណោះ។ ប្រព័ន្ធ SOP ជួយដោះលែងស្ថាបនិកពីប្រតិបត្តិការប្រចាំថ្ងៃ។',
        workplaceStory: '«ប៊ុនណារិទ្ធ បានបើកហាងកាហ្វេ និងសេវាកម្ម Catering រហូតដល់ ៣ សាខា។ គាត់រវល់តាំងពីម៉ោង ៦ ព្រឹកដល់ម៉ោង ១០ យប់៖ រត់ទិញគ្រឿងទេស ដោះស្រាយអតិថិជនរអ៊ូរទាំ និងគិតលុយដោយខ្លួនឯង។ គាត់អស់កម្លាំងដល់ថ្នាក់ធ្លាក់ខ្លួនឈឺ។ '
            'ពេលសម្រាកនៅមន្ទីរពេទ្យ គាត់បានដឹងច្បាស់ថាអាជីវកម្មខ្វះប្រព័ន្ធ។ គាត់ចាប់ផ្តើមសរសេរ SOP សម្រាប់រាល់ការងារ៖ របៀបឆុងកាហ្វេតាមក្បួនខ្នាតស្តង់ដារ បញ្ជីត្រួតពិនិត្យអនាម័យពេលព្រឹក និងទម្រង់ឆ្លើយតបអតិថិជន។ គាត់បានបណ្តុះបណ្តាលមេការសាខាឱ្យអនុវត្តតាម SOP។ ប្រាំមួយខែក្រោយមក គាត់អាចឈប់សម្រាក ១ សប្តាហ៍បានយ៉ាងស្ងប់ចិត្ត ហើយចំណូលហាងថែមទាំងកើនឡើង ២០%។»',
        practicalExample: '✅ រូបមន្តសរសេរ SOP សាមញ្ញ ៤ ជំហាន៖\n'
            '១. គោលបំណង (Purpose)៖ ហេតុអ្វីត្រូវធ្វើការងារនេះ?\n'
            '២. អ្នកទទួលខុសត្រូវ (Who)៖ តួនាទីណាដែលត្រូវអនុវត្ត?\n'
            ' obstacles (Checklist)៖ បញ្ជីជំហាន ១, ២, ៣ យ៉ាងសាមញ្ញដែលកូនក្មេងក៏អាចធ្វើតាមបាន។\n'
            '៤. ស្តង់ដារសម្រេច (Quality Standard)៖ លទ្ធផលល្អឥតខ្ចោះមើលទៅបែបណា?',
        practicalExercise: 'សរសេរ SOP ១ ទំព័រសម្រាប់កិច្ចការប្រតិបត្តិការដ៏សំខាន់មួយក្នុងអាជីវកម្មរបស់អ្នក។',
        quizQuestions: [
          QuestionModel(
            id: 'q-fnd-5',
            promptKh: 'តើអ្វីជាអត្ថប្រយោជន៍ធំបំផុតនៃការរៀបចំប្រព័ន្ធ SOP សម្រាប់អាជីវកម្ម SME?',
            promptEn: 'What is the greatest benefit of standard operating procedures (SOPs) for an SME?',
            optionsKh: [
              'A. ធ្វើឱ្យឯកសារក្រាស់ដើម្បីបង្អួតភ្ញៀវ។',
              'B. ធានាគុណភាពផលិតផល និងសេវាកម្មមានស្តង់ដារថេរ ជួយឱ្យអាជីវកម្មពង្រីកសាខាបាន និងដោះលែងស្ថាបនិកពីការងារប្រតិបត្តិការលម្អិត។',
              'C. ដាក់កំហិតមិនឱ្យបុគ្គលិកមានគំនិតច្នៃប្រឌិតអ្វីទាំងអស់។',
            ],
            optionsEn: [
              'A. Create thick binders to impress visitors.',
              'B. Guarantee consistent quality, enable scalability across branches, and free the founder from micromanagement.',
              'C. Suppress employee creativity.',
            ],
            correctOptionIndex: 1,
            explanationKh: 'ការពន្យល់៖ ជម្រើស B បង្ហាញពីគោលបំណងស្នូលនៃប្រព័ន្ធស្ថាប័នដែលអនុញ្ញាតឱ្យក្រុមហ៊ុនរីកចម្រើនប្រកបដោយចីរភាព។',
            explanationEn: 'Explanation: SOPs ensure scalable consistency and liberate the founder to focus on strategic growth.',
          ),
        ],
        reflection: 'ប្រសិនបើអ្នកត្រូវឈប់សម្រាកបន្ទាន់រយៈពេល ២ សប្តាហ៍ តើអាជីវកម្មរបស់អ្នកអាចបន្តដំណើរការបានរលូនដែរឬទេ?',
        workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ជ្រើសរើសដំណើរការការងារមួយដែលកំពុងកើតមានកំហុសញឹកញាប់ ហើយសរសេរ SOP មួយទំព័រដើម្បីណែនាំក្រុម។',
      ),
      LessonModel(
        id: 'lesson-fnd-6',
        courseId: 'course-founder-sme',
        moduleId: 'mod-1',
        titleKh: '៦. យុទ្ធសាស្ត្រគ្រប់គ្រងលំហូរសាច់ប្រាក់ និងការត្រៀមបម្រុងពេលវិបត្តិ (Cash Flow & Runway)',
        titleEn: 'Cash Flow Management & 6-Month Emergency Runway for SMEs',
        type: LessonType.text,
        orderIndex: 6,
        learningObjectives: '• បែងចែកឱ្យច្បាស់រវាង «ប្រាក់ចំណេញលើក្រដាស (Accounting Profit)» និង «សាច់ប្រាក់សុទ្ធក្នុងដៃ (Real Cash Flow)»។\n'
            '• កសាងមូលនិធិបម្រុងសង្គ្រោះបន្ទាន់យ៉ាងតិច ៦ ខែ (6-Month Operating Runway)។\n'
            '• អនុវត្តក្បួនគ្រប់គ្រងបំណុលអតិថិជន (Accounts Receivable) ដើម្បីកុំឱ្យកកស្ទះសាច់ប្រាក់។',
        shortExplanation: 'អាជីវកម្មជាច្រើនក្ស័យធនមិនមែនដោយសារមិនមានការលក់នោះទេ ប៉ុន្តែដោយសារដាច់លំហូរសាច់ប្រាក់ (Run out of cash)។ សាច់ប្រាក់គឺជាឈាមរត់របស់សហគ្រាស។',
        workplaceStory: '«ក្រុមហ៊ុនផ្គត់ផ្គង់សំណង់មួយទទួលបានកិច្ចសន្យាធំតម្លៃ \$100,000។ ម្ចាស់សប្បាយចិត្តយ៉ាងខ្លាំង ហើយបានកុម្ម៉ង់ឥវ៉ាន់ និងជួលបុគ្គលិកបន្ថែមភ្លាមៗ។ ប៉ុន្តែអតិថិជនសុំពន្យារពេលទូទាត់ ៩០ ថ្ងៃ។ '
            'ដល់ដំណាច់ខែ ក្រុមហ៊ុនគ្មានលុយសុទ្ធបើកប្រាក់ខែ និងបង់ថ្លៃឈ្នួលអាគារឡើយ ដែលនាំឱ្យជាប់គាំងស្ទើរតែដួលរលំ។ ក្រោយពេលឆ្លងផុតវិបត្តិនេះ ស្ថាបនិកបានបង្កើតច្បាប់ដែក៖ តែងតែរក្សាសាច់ប្រាក់បម្រុងសម្រាប់ចំណាយប្រតិបត្តិការ (OPEX) យ៉ាងហោចណាស់ ៦ ខែ និងតម្រូវឱ្យអតិថិជនកក់ប្រាក់យ៉ាងតិច ៣០% មុនពេលចាប់ផ្តើម។»',
        practicalExample: '✅ ក្បួនមាសគ្រប់គ្រងលំហូរសាច់ប្រាក់ SME៖\n'
            '១. ដក ៥% ទៅ ១០% នៃចំណូលសរុបរាល់សប្តាហ៍ ចូលក្នុងគណនីបម្រុងសង្គ្រោះបន្ទាន់ (Emergency Runway Account)។\n'
            '២. តាមដានថ្ងៃផុតកំណត់ទូទាត់បំណុលអតិថិជនរៀងរាល់ថ្ងៃសុក្រ។\n'
            '៣. កុំទិញទ្រព្យសកម្មថ្លៃៗ (CapEx) ដោយប្រើសាច់ប្រាក់សុទ្ធប្រតិបត្តិការឡើយ។',
        practicalExercise: 'គណនាចំណាយប្រតិបត្តិការប្រចាំខែ (Monthly Burn Rate) របស់អាជីវកម្មអ្នក ហើយពិនិត្យមើលថាតើសាច់ប្រាក់បម្រុងបច្ចុប្បន្នអាចទ្រទ្រង់បានប៉ុន្មានខែ។',
        quizQuestions: [
          QuestionModel(
            id: 'q-fnd-6',
            promptKh: 'ហេតុអ្វីបានជាអាជីវកម្មមួយដែលមានប្រាក់ចំណេញលើបញ្ជីគណនេយ្យ នៅតែអាចប្រឈមនឹងការក្ស័យធន?',
            promptEn: 'Why can a business with accounting profits on paper still face bankruptcy?',
            optionsKh: [
              'A. ដោយសារម្ចាស់ក្រុមហ៊ុនមិនបានផ្សាយពាណិជ្ជកម្មលើ Facebook។',
              'B. ដោយសារសាច់ប្រាក់សុទ្ធកកស្ទះក្នុងស្តុកទំនិញ ឬបំណុលអតិថិជនមិនទាន់ប្រមូលបាន ធ្វើឱ្យគ្មានលុយសុទ្ធបើកប្រាក់ខែ និងបង់ចំណាយប្រតិបត្តិការ (Insolvency)។',
              'C. ដោយសារគ្មានបុគ្គលិកផ្នែក IT។',
            ],
            optionsEn: [
              'A. Because the founder did not advertise on Facebook.',
              'B. Because real cash is trapped in unpaid customer receivables or slow inventory, leading to an inability to pay daily operational obligations.',
              'C. Because they lack IT staff.',
            ],
            correctOptionIndex: 1,
            explanationKh: 'ការពន្យល់៖ ជម្រើស B ពន្យល់ពីភាពខុសគ្នារវាង Accrual Profit និង Liquidity/Cash Flow ដែលជាមូលហេតុចម្បងនៃបរាជ័យធុរកិច្ច។',
            explanationEn: 'Explanation: Profit is an accounting opinion, cash is an empirical fact. Lack of liquidity causes insolvency.',
          ),
        ],
        reflection: 'តើសហគ្រាសរបស់អ្នកមានសាច់ប្រាក់បម្រុងគ្រប់គ្រាន់សម្រាប់ទប់ទល់នឹងវិបត្តិដែលគ្មានចំណូលរយៈពេល ៦ ខែដែរឬទេ?',
        workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ពិនិត្យមើលគណនីធនាគាររបស់ស្ថាប័ន ហើយបើកគណនីដាច់ដោយឡែកមួយសម្រាប់មូលនិធិបម្រុងសង្គ្រោះបន្ទាន់។',
      ),
      ...ExtraLessonsPart3.founderLessons,
    ],

    // =========================================================================
    // 6. SENIOR SPECIALIST COURSE (course-senior-mentorship)
    // =========================================================================
    'course-senior-mentorship': [
      LessonModel(
        id: 'lesson-snr-1',
        courseId: 'course-senior-mentorship',
        moduleId: 'mod-1',
        titleKh: '១. ការក្លាយជាអ្នកជំនាញឯកទេស (Subject Matter Expert) និងការដោះស្រាយបញ្ហាស្មុគស្មាញ',
        titleEn: 'Becoming a Subject Matter Expert & Complex Problem Solving',
        type: LessonType.text,
        orderIndex: 1,
        learningObjectives: '• កសាងជម្រៅជំនាញឯកទេស (Deep Domain Expertise) ដែលពិបាករកមនុស្សជំនួសបាន។\n'
            '• ម្ចាស់ការលើការដោះស្រាយឧបសគ្គបច្ចេកទេសស្មុគស្មាញដោយមិនបាច់រង់ចាំការណែនាំពីថ្នាក់លើ។\n'
            '• បង្កើតឯកសារ Best Practices និង Architecture សម្រាប់ស្ថាប័ន។',
        shortExplanation: 'ភាពជា Senior មិនមែនគ្រាន់តែជាចំនួនឆ្នាំធ្វើការនោះទេ ប៉ុន្តែជាសមត្ថភាពដោះស្រាយបញ្ហាស្មុគស្មាញដោយស្ងប់ស្ងាត់ និងបង្កើតស្តង់ដារការងារខ្ពស់សម្រាប់ស្ថាប័នទាំងមូល។',
        workplaceStory: '«ពិសិដ្ឋ ជាវិស្វករកម្មវិធីជាន់ខ្ពស់។ នៅពេលប្រព័ន្ធទូទាត់ប្រាក់របស់ក្រុមហ៊ុនគាំងនៅថ្ងៃបើកប្រាក់ខែ មនុស្សគ្រប់គ្នាកំពុងស្លន់ស្លោ។ ពិសិដ្ឋបានពិនិត្យមើល System Log ដោយស្ងប់ចិត្ត រកឃើញបញ្ហាកកស្ទះទិន្នន័យ (Database Deadlock) និងដោះស្រាយបញ្ហាបានត្រឹមតែ ១៥ នាទី។ ក្រោយមក គាត់បានសរសេរឯកសារស្ថាបត្យកម្មថ្មី និងរៀបចំយន្តការបម្រុង (Failover) ដើម្បីកុំឱ្យបញ្ហានេះកើតឡើងម្តងទៀត។ ថ្នាក់ដឹកនាំបានកោតសរសើរគាត់ជាសសរទ្រូងដ៏សំខាន់របស់ក្រុមហ៊ុន។»',
        practicalExample: '✅ របៀបបង្ហាញភាពជា Senior ក្នុងការងារ៖\n'
            '«នៅពេលមានបញ្ហាកើតឡើង ខ្ញុំមិនគ្រាន់តែរាយការណ៍ថាមានបញ្ហានោះទេ។ ខ្ញុំមកជួបប្រធានជាមួយជម្រើសដំណោះស្រាយ ២ យ៉ាង ព្រមទាំងការវិភាគពីគុណសម្បត្តិ និងគុណវិបត្តិនៃជម្រើសនីមួយៗ។»',
        practicalExercise: 'ចងក្រងឯកសារ Best Practice ១ ទំព័រសម្រាប់ជំនាញឯកទេសរបស់អ្នក ដើម្បីទុកជាមេរៀនដល់សមាជិកដទៃ។',
        quizQuestions: [
          QuestionModel(
            id: 'q-snr-1',
            promptKh: 'តើអ្វីជាភាពខុសគ្នាសំខាន់បំផុតរវាងបុគ្គលិក Junior និងបុគ្គលិក Senior នៅពេលជួបបញ្ហាស្មុគស្មាញ?',
            promptEn: 'What is the key difference between a Junior and Senior when encountering a complex problem?',
            optionsKh: [
              'A. Senior ធ្វើការច្រើនម៉ោងជាង Junior។',
              'B. Senior មានភាពម្ចាស់ការ ស្វែងរកឫសគល់បញ្ហា និងផ្តល់ជម្រើសដំណោះស្រាយជាស្រេច ខណៈដែល Junior គ្រាន់តែរត់មករាយការណ៍បញ្ហា។',
              'C. Senior មិនដែលជួបកំហុសការងារទាល់តែសោះ។',
            ],
            optionsEn: [
              'A. Seniors work longer hours.',
              'B. Seniors take autonomous ownership, analyze root causes, and propose vetted solutions instead of just escalating problems.',
              'C. Seniors never make mistakes.',
            ],
            correctOptionIndex: 1,
            explanationKh: 'ការពន្យល់៖ ជម្រើស B បង្ហាញពីភាពចាស់ទុំវិជ្ជាជីវៈ (Professional Ownership) របស់ Senior។',
            explanationEn: 'Explanation: Autonomous problem solving and vetted solutions define senior-level capability.',
          ),
        ],
        reflection: 'តើអ្នកកំពុងធ្វើជាមនុស្សដែលគ្រាន់តែយកបញ្ហាទៅប្រគល់ឱ្យមេ ឬជាមនុស្សដែលយកដំណោះស្រាយទៅជូនមេ?',
        workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ រាល់ពេលលើកឡើងពីបញ្ហាក្នុងថ្ងៃនេះ សូមភ្ជាប់មកជាមួយនូវដំណោះស្រាយយ៉ាងហោចណាស់ ១ ជម្រើស។',
      ),
      LessonModel(
        id: 'lesson-snr-2',
        courseId: 'course-senior-mentorship',
        moduleId: 'mod-1',
        titleKh: '២. សិល្បៈនៃការធ្វើជា Mentor បង្វឹកសមាជិកជំនាន់ក្រោយ (The Art of Mentoring Juniors)',
        titleEn: 'The Art of Mentoring & Upskilling Junior Talent',
        type: LessonType.text,
        orderIndex: 2,
        learningObjectives: '• យល់ដឹងថាការបណ្តុះបណ្តាលអ្នកដទៃ គឺជាគន្លឹះដំឡើងខ្លួនឯងឱ្យឡើងទៅកាន់តំណែង Lead ឬ Manager។\n'
            '• អនុវត្តវិធីសាស្ត្រណែនាំ "Show, Do, Review" ដោយមិនដណ្តើមការងារគេមកធ្វើខ្លួនឯង។\n'
            '• កសាងទំនុកចិត្ត និងផ្តល់កន្លែងសុវត្ថិភាពផ្លូវចិត្តសម្រាប់សមាជិកថ្មីក្នុងការរៀនសូត្រ។',
        shortExplanation: 'Senior ពិតប្រាកដមិនមែនជាមនុស្សដែលចេះការងារតែម្នាក់ឯងហើយលាក់ចំណេះនោះទេ ប៉ុន្តែជាអ្នកដែលបង្កើតមនុស្សពូកែៗជាច្រើននៅជុំវិញខ្លួន (Force Multiplier)។',
        workplaceStory: '«សុខា ជា Senior Developer ដែលមានចំណេះដឹងទូលំទូលាយ។ ពីមុន ពេលកូនចៅធ្វើការខុស គាត់តែងតែដណ្តើមយកមកធ្វើខ្លួនឯងព្រោះគិតថាលឿនជាង។ លទ្ធផលគឺគាត់រវល់ដកដង្ហើមមិនដល់ ហើយកូនចៅមិនចេះរីកចម្រើន។ ក្រោយមក គាត់បានផ្លាស់ប្តូរមកអនុវត្តក្បួន Mentor៖ គាត់ពន្យល់គោលការណ៍ ទុកឱ្យកូនចៅអនុវត្ត ហើយជួយកែសម្រួលនៅជំហានចុងក្រោយ។ ត្រឹមតែ ៦ ខែ ក្រុមរបស់គាត់រឹងមាំខ្លាំង ហើយសុខាត្រូវបានតែងតាំងជា Lead Architect។»',
        practicalExample: '✅ រូបមន្តបង្វឹក ៣ ជំហាន៖\n'
            '១. ខ្ញុំធ្វើឱ្យមើល (I do, you watch)។\n'
            '២. យើងធ្វើជាមួយគ្នា (We do together)។\n'
            '៣. ឯងធ្វើ ហើយខ្ញុំចាំជួយមើល (You do, I coach)។',
        practicalExercise: 'ជ្រើសរើសសមាជិក Junior ម្នាក់ ហើយបង្រៀនគាត់នូវបច្ចេកទេសការងារមួយដែលអ្នកចេះច្បាស់ក្នុងសប្តាហ៍នេះ។',
        quizQuestions: [
          QuestionModel(
            id: 'q-snr-2',
            promptKh: 'ហេតុអ្វីបានជា Senior មិនគួរដណ្តើមការងារពី Junior មកធ្វើខ្លួនឯង នៅពេលឃើញពួកគេធ្វើការយឺត?',
            promptEn: 'Why should a Senior avoid taking over tasks from a Junior when they work slowly?',
            optionsKh: [
              'A. ព្រោះធ្វើបែបនេះនឹងធ្វើឱ្យ Senior ខ្ជិល។',
              'B. ព្រោះការដណ្តើមធ្វើធ្វើឱ្យ Junior បាត់បង់ឱកាសរៀនសូត្រ បង្កើតការពឹងផ្អែក និងធ្វើឱ្យ Senior ផ្ទុកការងារហួសកម្លាំង។',
              'C. ព្រោះក្រុមហ៊ុនហាមឃាត់មិនឱ្យ Senior ធ្វើការងារតូចតាច។',
            ],
            optionsEn: [
              'A. Because it makes the Senior lazy.',
              'B. It robs the Junior of learning, creates unhealthy dependency, and overburdens the Senior.',
              'C. Because company rules forbid it.',
            ],
            correctOptionIndex: 1,
            explanationKh: 'ការពន្យល់៖ ជម្រើស B បង្ហាញពីគោលការណ៍កសាងសមត្ថភាពក្រុមប្រកបដោយនិរន្តរភាព។',
            explanationEn: 'Explanation: Coaching requires patience; taking over work creates bottlenecks and stunts junior growth.',
          ),
        ],
        reflection: 'តើអ្នកមានអារម្មណ៍ពេញចិត្តកម្រិតណា នៅពេលឃើញសមាជិកដែលអ្នកធ្លាប់បង្វឹក ទទួលបានជោគជ័យ និងឡើងតំណែង?',
        workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ចំណាយពេល ២០ នាទីជួយពន្យល់កិច្ចការស្មុគស្មាញមួយដល់សហការី Junior ម្នាក់។',
      ),
      ...ExtraLessonsPart1.seniorLessons,
    ],

    // =========================================================================
    // 7. SUPERVISOR COURSE (course-supervisor-ops)
    // =========================================================================
    'course-supervisor-ops': [
      LessonModel(
        id: 'lesson-sup-1',
        courseId: 'course-supervisor-ops',
        moduleId: 'mod-1',
        titleKh: '១. ការគ្រប់គ្រង និងត្រួតពិនិត្យស្តង់ដារគុណភាព QA/QC (Operational Quality Control)',
        titleEn: 'Operational Supervision & QA/QC Quality Control',
        type: LessonType.text,
        orderIndex: 1,
        learningObjectives: '• បង្កើតបញ្ជីត្រួតពិនិត្យគុណភាព (Quality Checklist) សម្រាប់ប្រតិបត្តិការប្រចាំថ្ងៃ។\n'
            '• កាត់បន្ថយអត្រាកំហុស និងការខាតបង់ផលិតផល/សេវាកម្ម (Defect Reduction)។\n'
            '• ត្រួតពិនិត្យការអនុវត្តតាម SOP ដោយម៉ត់ចត់ និងយុត្តិធម៌។',
        shortExplanation: 'Supervisor គឺជាអ្នកចាំយាមទ្វារនៃគុណភាពស្ថាប័ន (Guardian of Quality)។ បើ Supervisor ធ្វេសប្រហែស កំហុសនឹងធ្លាយដល់ដៃអតិថិជន ដែលធ្វើឱ្យខូចកេរ្តិ៍ឈ្មោះក្រុមហ៊ុន។',
        workplaceStory: '«មុនីនាថ ជា Supervisor ផ្នែកបម្រើអតិថិជននៅសណ្ឋាគារមួយ។ នាងបានបង្កើតទម្លាប់ដើរត្រួតពិនិត្យបន្ទប់តាមបញ្ជី Check-in មុនពេលភ្ញៀវចូលស្នាក់នៅ ១ ម៉ោងជារៀងរាល់ថ្ងៃ។ នៅពេលបុគ្គលិករៀបចំខ្វះកន្សែង ឬភ្លេចដាក់ទឹក នាងចង្អុលបង្ហាញភ្លាមៗដោយចិត្តល្អ តែម៉ត់ចត់។ សណ្ឋាគាររបស់នាងទទួលបានពិន្ទុ Review ៩.៨/១០ នៅលើ Booking.com ហើយនាងទទួលបានពានរង្វាន់អ្នកគ្រប់គ្រងឆ្នើមប្រចាំឆ្នាំ។»',
        practicalExample: '✅ របៀបត្រួតពិនិត្យគុណភាពដោយមិនធ្វើឱ្យបុគ្គលិកមានអារម្មណ៍តានតឹង៖\n'
            '«ការត្រួតពិនិត្យនេះមិនមែនដើម្បីចាប់កំហុសដាក់ពិន័យបងប្អូននោះទេ ប៉ុន្តែដើម្បីធានាថាភ្ញៀវទទួលបានបទពិសោធន៍ល្អឥតខ្ចោះបំផុត ដែលនឹងជួយការពារកេរ្តិ៍ឈ្មោះ និងការងាររបស់ពួកយើងទាំងអស់គ្នា។»',
        practicalExercise: 'បង្កើត Quality Checklist ៥ ចំណុចសម្រាប់សេវាកម្ម ឬផលិតផលដែលផ្នែករបស់អ្នកផលិត។',
        quizQuestions: [
          QuestionModel(
            id: 'q-sup-1',
            promptKh: 'តើវិធីសាស្ត្រត្រួតពិនិត្យគុណភាព (QA/QC) ណាដែលល្អបំផុតសម្រាប់ Supervisor?',
            promptEn: 'What is the best quality control method for an operational supervisor?',
            optionsKh: [
              'A. អង្គុយក្នុងបន្ទប់ម៉ាស៊ីនត្រជាក់ ហើយចាំភ្ញៀវត្អូញត្អែរទើបចេញទៅស្តីបន្ទោសកូនចៅ។',
              'B. ដើរត្រួតពិនិត្យផ្ទាល់ជាក់ស្តែង (Gemba Walk) តាម Checklist ច្បាស់លាស់ និងកែតម្រូវទាន់ពេលវេលា។',
              'C. ជឿជាក់ ១០០% លើការស្មានដោយមិនបាច់ត្រួតពិនិត្យឡើយ។',
            ],
            optionsEn: [
              'A. Sit in AC room and only yell at staff after customers complain.',
              'B. Conduct on-site inspections (Gemba Walk) with clear checklists and coach real-time corrections.',
              'C. Rely 100% on guesswork without verification.',
            ],
            correctOptionIndex: 1,
            explanationKh: 'ការពន្យល់៖ ជម្រើស B ជាការអនុវត្តបែប Gemba Walk ដែលជួយទប់ស្កាត់កំហុសមុនពេលធ្លាយដល់ដៃអតិថិជន។',
            explanationEn: 'Explanation: On-site verification with objective checklists prevents errors before customer delivery.',
          ),
        ],
        reflection: 'តើផ្នែករបស់អ្នកមានបញ្ជីត្រួតពិនិត្យគុណភាពជាលាយលក្ខណ៍អក្សរច្បាស់លាស់ហើយឬនៅ?',
        workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ធ្វើការត្រួតពិនិត្យផ្ទាល់ដៃលើកិច្ចការមួយមុនពេលប្រគល់ជូនអតិថិជន ឬថ្នាក់លើ។',
      ),
      LessonModel(
        id: 'lesson-sup-2',
        courseId: 'course-supervisor-ops',
        moduleId: 'mod-1',
        titleKh: '២. ការគ្រប់គ្រងផលិតភាពប្រចាំថ្ងៃ និងការរៀបចំកាលវិភាគការងារ (Daily Capacity & Shift Planning)',
        titleEn: 'Capacity Management & Shift Scheduling',
        type: LessonType.text,
        orderIndex: 2,
        learningObjectives: '• រៀបចំកាលវិភាគវេនការងារ (Shift Roster) ឱ្យមានតុល្យភាព និងយុត្តិធម៌។\n'
            '• តាមដានទិន្នផលការងារប្រចាំថ្ងៃ និងដោះស្រាយកង្វះកម្លាំងពលកម្មទាន់ពេល។\n'
            '• កាត់បន្ថយការចំណាយលើការថែមម៉ោង (Overtime) ដែលមិនចាំបាច់។',
        shortExplanation: 'ការរៀបចំកាលវិភាគការងារល្អ ជួយឱ្យក្រុមហ៊ុនសន្សំសំចៃថ្លៃដើម និងជួយឱ្យបុគ្គលិកមានតុល្យភាពជីវិត និងការងារ ដែលកាត់បន្ថយអត្រាលាលែងពីការងារ។',
        workplaceStory: '«នៅរោងចក្រវេចខ្ចប់មួយ ជារៀងរាល់ចុងខែ បុគ្គលិកតែងតែត្អូញត្អែររឿងធ្វើការថែមម៉ោងហួសកម្លាំង ខណៈដែលដើមខែគ្មានការងារធ្វើ។ សម្បត្តិ (Supervisor ថ្មី) បានសិក្សាពីលំហូរការងារ និងរៀបចំប្រព័ន្ធរង្វិលជុំវេនការងារថ្មី (Staggered Shifts)។ លទ្ធផល៖ ការងារត្រូវបានចែកចាយស្មើដៃ ផលិតភាពកើនឡើង ១៥% និងកាត់បន្ថយការចំណាយ Overtime អស់ \$3,000 ក្នុងមួយខែ។»',
        practicalExample: '✅ របៀបដោះស្រាយសំណើសុំច្បាប់ឈប់សម្រាកប្រជែងគ្នា៖\n'
            '«ដើម្បីរក្សាយុត្តិធម៌ យើងអនុវត្តតាមគោលការណ៍ First-come, First-served ប៉ុន្តែធានាថាក្នុងថ្ងៃបុណ្យធំៗ បុគ្គលិកគ្រប់គ្នានឹងបានឆ្លាស់វេនគ្នាទៅជួបជុំគ្រួសារស្មើៗគ្នា។»',
        practicalExercise: 'គូរតារាងបែងចែកបន្ទុកការងារសប្តាហ៍ក្រោយសម្រាប់សមាជិកក្នុងក្រុមរបស់អ្នក។',
        quizQuestions: [
          QuestionModel(
            id: 'q-sup-2',
            promptKh: 'តើគោលដៅចម្បងនៃការរៀបចំកាលវិភាគការងារ (Work Schedule) គឺជាអ្វី?',
            promptEn: 'What is the primary goal of work scheduling and shift planning?',
            optionsKh: [
              'A. ដាក់បន្ទុកការងារធ្ងន់លើមនុស្សស្លូតៗ ហើយបន្ធូរបន្ថយឱ្យមនុស្សដែលជិតស្និទ្ធនឹងខ្លួន។',
              'B. ធានាតុល្យភាពរវាងផលិតភាពអាជីវកម្ម ភាពយុត្តិធម៌ និងសុខុមាលភាពរបស់បុគ្គលិក។',
              'C. បង្ខំឱ្យបុគ្គលិកធ្វើការថែមម៉ោងរាល់យប់។',
            ],
            optionsEn: [
              'A. Overload quiet workers and favor friends.',
              'B. Balance business productivity, operational fairness, and employee well-being.',
              'C. Force daily overtime.',
            ],
            correctOptionIndex: 1,
            explanationKh: 'ការពន្យល់៖ ជម្រើស B ធានាទាំងប្រសិទ្ធភាពធុរកិច្ច និងការរក្សាមនុស្សយូរអង្វែង។',
            explanationEn: 'Explanation: Fair scheduling balances company output with team sustainability.',
          ),
        ],
        reflection: 'តើការបែងចែកវេនការងារក្នុងក្រុមរបស់អ្នកមានភាពយុត្តិធម៌ និងតម្លាភាពគ្រប់គ្រាន់ហើយឬនៅ?',
        workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ពិនិត្យមើលកាលវិភាគការងារសប្តាហ៍នេះ ដើម្បីធានាថាមិនមានសមាជិកណាម្នាក់កំពុងផ្ទុកការងារលើសកម្លាំង។',
      ),
      ...ExtraLessonsPart2.supervisorLessons,
    ],

    // =========================================================================
    // 8. HEAD OF DEPARTMENT COURSE (course-hod-strategy)
    // =========================================================================
    'course-hod-strategy': [
      LessonModel(
        id: 'lesson-hod-1',
        courseId: 'course-hod-strategy',
        moduleId: 'mod-1',
        titleKh: '១. ការគ្រប់គ្រងថវិកាប្រចាំឆ្នាំ និងគណនេយ្យភាព P&L (Departmental Budgeting & P&L Mastery)',
        titleEn: 'Departmental Annual Budgeting & P&L Accountability',
        type: LessonType.text,
        orderIndex: 1,
        learningObjectives: '• យល់ដឹងពីរបៀបអាន និងគ្រប់គ្រងរបាយការណ៍ចំណេញ-ខាត (P&L Statement) នៃនាយកដ្ឋាន។\n'
            '• រៀបចំថវិកាចំណាយប្រតិបត្តិការ (OPEX) និងថវិកាវិនិយោគ (CAPEX) ប្រចាំឆ្នាំ។\n'
            '• គ្រប់គ្រងការចំណាយឱ្យស្ថិតក្នុងដែនកំណត់ និងបង្កើនប្រសិទ្ធភាពចំណូល។',
        shortExplanation: 'ប្រធានផ្នែកមិនមែនគ្រាន់តែជាអ្នកដឹកនាំមនុស្សនោះទេ ប៉ុន្តែជាអ្នកគ្រប់គ្រងក្រុមហ៊ុនតូចមួយនៅក្នុងក្រុមហ៊ុនធំ ដែលទទួលខុសត្រូវលើប្រាក់ចំណូល និងចំណាយពិតប្រាកដ។',
        workplaceStory: '«គង់ សម្បត្តិ ត្រូវបានតែងតាំងជាប្រធានផ្នែកលក់ និងទីផ្សារ។ ពីមុន គាត់ផ្តោតតែលើការចំណាយលុយផ្សាយពាណិជ្ជកម្ម។ ក្រោយពេលបានរៀនពីការគ្រប់គ្រង P&L គាត់ចាប់ផ្តើមពិនិត្យមើលតម្លៃដើមនៃការទាក់ទាញអតិថិជន (CAC) ធៀបនឹងតម្លៃជីវិតរបស់អតិថិជន (LTV)។ គាត់បានកាត់បន្ថយយុទ្ធនាការដែលខាតបង់ និងបង្កើនការវិនិយោគលើបណ្តាញដែលផ្តល់ផលចំណេញខ្ពស់។ ក្នុងរយៈពេល ១ ឆ្នាំ នាយកដ្ឋានរបស់គាត់បានបង្កើនប្រាក់ចំណេញសុទ្ធ ៤០% ជូនក្រុមហ៊ុន។»',
        practicalExample: '✅ របៀបបង្ហាញរបាយការណ៍ P&L ជូនអគ្គនាយក៖\n'
            '«ក្នុងត្រីមាសនេះ នាយកដ្ឋានយើងបានគ្រប់គ្រង OPEX ឱ្យទាបជាងផែនការ ៨% ខណៈដែលចំណូលកើនឡើង ១៥% ដែលបង្កើតប្រាក់ចំណេញប្រតិបត្តិការបន្ថែម \$35,000។»',
        practicalExercise: 'គូសវាសតារាងសង្ខេបចំណាយ OPEX ធំៗទាំង ៣ នៃផ្នែករបស់អ្នក និងរកមើលចំណុចដែលកាត់បន្ថយការខាតបង់បាន។',
        quizQuestions: [
          QuestionModel(
            id: 'q-hod-1',
            promptKh: 'ហេតុអ្វីបានជាប្រធានផ្នែក (Head of Department) ត្រូវយល់ដឹងពីរបាយការណ៍ P&L ឱ្យបានច្បាស់លាស់?',
            promptEn: 'Why must a Head of Department understand the P&L statement thoroughly?',
            optionsKh: [
              'A. ដើម្បីដណ្តើមការងាររបស់ផ្នែកគណនេយ្យ។',
              'B. ដើម្បីអាចសម្រេចចិត្តជាយុទ្ធសាស្ត្រលើការវិនិយោគ និងដឹងថានាយកដ្ឋានរបស់ខ្លួនកំពុងបង្កើតប្រាក់ចំណេញ ឬកំពុងខាតបង់។',
              'C. មិនចាំបាច់យល់ដឹងទេ ព្រោះជាតួនាទីរបស់ CEO ម្នាក់ឯង។',
            ],
            optionsEn: [
              'A. To steal accounting duties.',
              'B. To make strategic investment decisions and know whether their department is generating profit or leaking cash.',
              'C. Not necessary as it belongs solely to the CEO.',
            ],
            correctOptionIndex: 1,
            explanationKh: 'ការពន្យល់៖ ជម្រើស B បង្ហាញពីគណនេយ្យភាពហិរញ្ញវត្ថុដែលថ្នាក់ដឹកនាំជាន់ខ្ពស់ត្រូវតែមាន។',
            explanationEn: 'Explanation: P&L mastery equips department heads to make commercially sound decisions.',
          ),
        ],
        reflection: 'តើនាយកដ្ឋានរបស់អ្នកកំពុងជា Cost Center (ចំណាយលុយ) ឬជា Profit Driver (បង្កើតចំណេញ) ដល់ក្រុមហ៊ុន?',
        workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ស្នើសុំមើលរបាយការណ៍ចំណាយជាក់ស្តែងនៃផ្នែករបស់អ្នកក្នុងខែមុន ដើម្បីស្វែងយល់ពីតួលេខ។',
      ),
      LessonModel(
        id: 'lesson-hod-2',
        courseId: 'course-hod-strategy',
        moduleId: 'mod-1',
        titleKh: '២. ការដឹកនាំកិច្ចសហការអន្តរនាយកដ្ឋាន (Cross-Functional Alignment & Synergy)',
        titleEn: 'Cross-Functional Alignment & Breaking Down Departmental Silos',
        type: LessonType.text,
        orderIndex: 2,
        learningObjectives: '• បំបែករបាំងការពារខ្លួនរវាងនាយកដ្ឋាន (Breaking Silos) ដើម្បីសម្រេចគោលដៅរួម។\n'
            '• កំណត់គោលដៅ OKRs រួមគ្នាជាមួយប្រធានផ្នែកផ្សេងៗ។\n'
            '• ដោះស្រាយបញ្ហារុញដាក់គ្នានៅពេលគម្រោងឆ្លងកាត់នាយកដ្ឋានជាច្រើន។',
        shortExplanation: 'ភាពបរាជ័យធំបំផុតរបស់ក្រុមហ៊ុនធំៗ គឺការដែលនាយកដ្ឋាននីមួយៗគិតតែពីផលប្រយោជន៍ខ្លួនឯង (Silo Mentality)។ Head of Department ឆ្នើមកសាងស្ពានមិត្តភាព និងកិច្ចសហការដើម្បីផលប្រយោជន៍រួម។',
        workplaceStory: '«ផ្នែក IT និងផ្នែក Marketing ធ្លាប់ឈ្លោះគ្នាជាញឹកញាប់រឿងការកែប្រែគេហទំព័រ។ Marketing ចោទថា IT ធ្វើការយឺត រីឯ IT ចោទថា Marketing ផ្លាស់ប្តូរតម្រូវការញឹកញាប់ពេក។ ប្រធានផ្នែកទាំងពីរបានព្រមព្រៀងគ្នារៀបចំការប្រជុំរួមប្រចាំពីរសប្តាហ៍ម្តង (Bi-weekly Sync) និងកំណត់គោលដៅ OKR រួមគ្នា។ ពួកគេបានប្តូរពីការបន្ទោសគ្នា មកជាការសហការជិតស្និទ្ធ ដែលជួយឱ្យគម្រោង App ថ្មីចេញលក់បានមុនកាលកំណត់ ១ ខែ។»',
        practicalExample: '✅ របៀបនិយាយបំបែក Silo៖\n'
            '«អតិថិជនមិនខ្វល់ថាកំហុសជាកំហុសរបស់ផ្នែក IT ឬផ្នែក Operations នោះទេ។ អតិថិជនមើលឃើញតែឈ្មោះក្រុមហ៊ុនយើងទាំងមូល។ ដូច្នេះ តើយើងអាចអង្គុយដោះស្រាយជាមួយគ្នាយ៉ាងដូចម្តេច?»',
        practicalExercise: 'កំណត់នាយកដ្ឋានមួយដែលផ្នែករបស់អ្នកកំពុងមានបញ្ហារអាក់រអួលជាមួយ ហើយរៀបចំការជជែកពិភាក្សាស្និទ្ធស្នាលមួយ។',
        quizQuestions: [
          QuestionModel(
            id: 'q-hod-2',
            promptKh: 'តើអ្វីជាវិធីសាស្ត្រល្អបំផុតដើម្បីលុបបំបាត់បញ្ហានាយកដ្ឋានគិតតែពីផលប្រយោជន៍ខ្លួនឯង (Silos)?',
            promptEn: 'What is the most effective approach to break down departmental silos?',
            optionsKh: [
              'A. ដាក់ទណ្ឌកម្មលើគ្រប់នាយកដ្ឋានទាំងអស់។',
              'B. បង្កើតគោលដៅរួម (Shared OKRs/KPIs) និងបង្កើតវេទិកាទំនាក់ទំនងទៀងទាត់រវាងប្រធានផ្នែក។',
              'C. ហាមមិនឱ្យបុគ្គលិកឆ្លងផ្នែកនិយាយរកគ្នា។',
            ],
            optionsEn: [
              'A. Punish all departments.',
              'B. Establish shared goals (Shared OKRs) and regular cross-department communication forums.',
              'C. Forbid inter-department talk.',
            ],
            correctOptionIndex: 1,
            explanationKh: 'ការពន្យល់៖ ជម្រើស B ជំរុញឱ្យនាយកដ្ឋានទាំងអស់មានផលប្រយោជន៍ស្របគ្នា។',
            explanationEn: 'Explanation: Shared OKRs align incentives and naturally dissolve counter-productive silos.',
          ),
        ],
        reflection: 'តើផ្នែករបស់អ្នកធ្លាប់ធ្វើឱ្យប៉ះពាល់ដល់ការងាររបស់នាយកដ្ឋានផ្សេងទៀតដោយសារខ្វះការប្រាស្រ័យទាក់ទងដែរឬទេ?',
        workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ផ្ញើសារសួរសុខទុក្ខ និងថ្លែងអំណរគុណដល់ប្រធានផ្នែកម្នាក់ទៀតដែលបានជួយគាំទ្រផ្នែករបស់អ្នក។',
      ),
      ...ExtraLessonsPart2.hodLessons,
    ],

    // =========================================================================
    // 9. DIRECTOR COURSE (course-director-governance)
    // =========================================================================
    'course-director-governance': [
      LessonModel(
        id: 'lesson-dir-1',
        courseId: 'course-director-governance',
        moduleId: 'mod-1',
        titleKh: '១. អភិបាលកិច្ចស្ថាប័ន និងការគ្រប់គ្រងហានិភ័យ (Enterprise Governance & Risk Management)',
        titleEn: 'Corporate Governance, Compliance & Enterprise Risk Management',
        type: LessonType.text,
        orderIndex: 1,
        learningObjectives: '• យល់ដឹងពីសសរស្តម្ភនៃអភិបាលកិច្ចល្អ (Transparency, Accountability, Fairness)។\n'
            '• កសាងម៉ាទ្រីសគ្រប់គ្រងហានិភ័យស្ថាប័ន (Enterprise Risk Matrix)៖ ហានិភ័យច្បាប់ ហិរញ្ញវត្ថុ និងប្រតិបត្តិការ។\n'
            '• ធានាការអនុលោមតាមច្បាប់ការងារ និងពន្ធដារនៃព្រះរាជាណាចក្រកម្ពុជា។',
        shortExplanation: 'តួនាទី Director មិនមែនគ្រាន់តែជំរុញការលូតលាស់នោះទេ ប៉ុន្តែជាការការពារកុំឱ្យក្រុមហ៊ុនដួលរលំដោយសារហានិភ័យផ្លូវច្បាប់ ពន្ធដារ ឬការគ្រប់គ្រងមិនត្រឹមត្រូវ។',
        workplaceStory: '«លោកជំទាវ ជា សុភាព ជានាយកប្រតិបត្តិការងារ។ មុនពេលក្រុមហ៊ុនចុះហត្ថលេខាលើកិច្ចសន្យាវិនិយោគ \$2,000,000 នាងបានដឹកនាំក្រុមការងារធ្វើសវនកម្មផ្ទៃក្នុង (Due Diligence) យ៉ាងម៉ត់ចត់។ នាងបានរកឃើញកំហុសបច្ចេកទេសផ្លូវច្បាប់មួយដែលដៃគូអាជីវកម្មបានលាក់បាំង ដែលអាចធ្វើឱ្យក្រុមហ៊ុនខាតបង់ទឹកប្រាក់យ៉ាងច្រើន។ ការទប់ស្កាត់ទាន់ពេលនេះបានជួយសង្គ្រោះក្រុមហ៊ុនពីហានិភ័យដ៏ធំធេង។»',
        practicalExample: '✅ គោលការណ៍វាយតម្លៃហានិភ័យមុនពេលសម្រេចចិត្ត៖\n'
            '«តើអ្វីជាហានិភ័យអាក្រក់បំផុត (Worst-case scenario) ប្រសិនបើគម្រោងនេះបរាជ័យ? ហើយតើយើងមានផែនការការពារ និងទប់ទល់កម្រិតណា?»',
        practicalExercise: 'សរសេរបញ្ជីហានិភ័យកំពូលទាំង ៣ ដែលស្ថាប័នរបស់អ្នកអាចប្រឈមមុខក្នុងឆ្នាំនេះ និងវិធានការការពារ។',
        quizQuestions: [
          QuestionModel(
            id: 'q-dir-1',
            promptKh: 'តើអ្វីជាទំនួលខុសត្រូវចម្បងរបស់ Director ក្នុងការគ្រប់គ្រងអភិបាលកិច្ចស្ថាប័ន?',
            promptEn: 'What is the primary responsibility of a Director in corporate governance?',
            optionsKh: [
              'A. ផ្តោតតែលើការរកចំណូលដោយមិនខ្វល់ពីច្បាប់ទម្លាប់។',
              'B. កសាងប្រព័ន្ធតម្លាភាព គណនេយ្យភាព គ្រប់គ្រងហានិភ័យ និងធានានិរន្តរភាពអាជីវកម្មស្របច្បាប់។',
              'C. ទុកកិច្ចការគ្រប់គ្រងហានិភ័យឱ្យបុគ្គលិកថ្នាក់ក្រោមដោះស្រាយតាមការគួរ។',
            ],
            optionsEn: [
              'A. Focus purely on revenue ignoring laws.',
              'B. Build transparent systems, risk management frameworks, and ensure legal and financial sustainability.',
              'C. Leave risk management to junior staff.',
            ],
            correctOptionIndex: 1,
            explanationKh: 'ការពន្យល់៖ ជម្រើស B បង្ហាញពីកាតព្វកិច្ច Fiduciary Duty របស់ Director។',
            explanationEn: 'Explanation: Directors bear fiduciary responsibility for long-term governance and risk mitigation.',
          ),
        ],
        reflection: 'តើក្រុមហ៊ុនរបស់អ្នកមានប្រព័ន្ធការពារហានិភ័យ និងការអនុលោមតាមច្បាប់រឹងមាំកម្រិតណា?',
        workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ពិនិត្យឡើងវិញនូវគោលការណ៍អនុលោមភាពផ្លូវច្បាប់ ឬសុវត្ថិភាពទិន្នន័យក្នុងស្ថាប័ន។',
      ),
      LessonModel(
        id: 'lesson-dir-2',
        courseId: 'course-director-governance',
        moduleId: 'mod-1',
        titleKh: '២. យុទ្ធសាស្ត្រពង្រីកសាខា និងទីផ្សារធុរកិច្ច (Strategic Expansion & Market Penetration)',
        titleEn: 'Scaling Operations, Franchising & Regional Market Expansion',
        type: LessonType.text,
        orderIndex: 2,
        learningObjectives: '• យល់ដឹងពីសញ្ញាបង្ហាញថាអាជីវកម្មបានត្រៀមខ្លួនរួចរាល់ក្នុងការពង្រីកសាខា (Readiness for Scale)។\n'
            '• ជ្រើសរើសគំរូពង្រីក៖ បើកសាខាផ្ទាល់ (Direct Branch) ឬលក់សិទ្ធិផ្តាច់មុខ (Franchise)។\n'
            '• គ្រប់គ្រងខ្សែច្រវាក់ផ្គត់ផ្គង់ និងស្តង់ដារគុណភាពនៅគ្រប់សាខាទាំងអស់។',
        shortExplanation: 'ការពង្រីកអាជីវកម្មលឿនពេកដោយគ្មានប្រព័ន្ធគ្រប់គ្រងរឹងមាំ គឺជាមូលហេតុចម្បងដែលនាំឱ្យក្រុមហ៊ុនធំៗដួលរលំ (Premature Scaling)។ Director ធានាថាក្រុមហ៊ុនពង្រីកដោយឈរលើមូលដ្ឋានគ្រឹះរឹងមាំ។',
        workplaceStory: '«ក្រុមហ៊ុនលក់រាយមួយបានរីកចម្រើនខ្លាំងនៅភ្នំពេញ។ ក្រុមប្រឹក្សាភិបាលចង់បើក ៥ សាខាបន្ថែមភ្លាមៗនៅតាមបណ្តាខេត្ត។ Director បានស្នើឱ្យបើកសាកល្បងតែ ១ សាខាសិននៅខេត្តសៀមរាប ដើម្បីធ្វើតេស្តប្រព័ន្ធដឹកជញ្ជូន និងការបណ្តុះបណ្តាលបុគ្គលិកមូលដ្ឋាន។ ការធ្វើតេស្តនេះបានជួយរកឃើញបញ្ហាកកស្ទះខ្សែច្រវាក់ផ្គត់ផ្គង់ និងបានកែសម្រួលមុនពេលបើក ៤ សាខាផ្សេងទៀត។ យុទ្ធសាស្ត្រពង្រីកដោយប្រុងប្រយ័ត្ននេះបានធ្វើឱ្យគ្រប់សាខាទាំងអស់រកប្រាក់ចំណេញបានចាប់ពីខែដំបូង។»',
        practicalExample: '✅ របៀបវាយតម្លៃទីតាំងពង្រីកសាខាថ្មី៖\n'
            '«យើងត្រូវពិនិត្យ ៣ កត្តា៖ ១. ចរាចរណ៍អតិថិជនគោលដៅ ២. ការចំណាយលើថ្លៃជួលធៀបនឹងចំណូលរំពឹងទុក ៣. សមត្ថភាពដឹកជញ្ជូនផ្គត់ផ្គង់ទំនិញទាន់ពេល។»',
        practicalExercise: 'រៀបចំ Checklist វាយតម្លៃលទ្ធភាពពង្រីកសាខាថ្មីសម្រាប់អាជីវកម្មរបស់អ្នក។',
        quizQuestions: [
          QuestionModel(
            id: 'q-dir-2',
            promptKh: 'តើអ្វីជាហានិភ័យធំបំផុតក្នុងការពង្រីកសាខាធុរកិច្ចលឿនពេក (Premature Scaling)?',
            promptEn: 'What is the greatest danger of premature business scaling?',
            optionsKh: [
              'A. ធ្វើឱ្យម៉ាកសញ្ញាល្បីល្បាញពេក។',
              'B. ខ្វះខាតលំហូរសាច់ប្រាក់ បាត់បង់ស្តង់ដារគុណភាព និងខ្វះអ្នកគ្រប់គ្រងមានសមត្ថភាពគ្រប់គ្រងសាខា។',
              'C. មិនមានហានិភ័យអ្វីឡើយ ពង្រីកកាន់តែលឿនកាន់តែល្អ។',
            ],
            optionsEn: [
              'A. Brand becoming too famous.',
              'B. Cash flow collapse, quality dilution, and shortage of capable managers.',
              'C. There is no risk; faster is always better.',
            ],
            correctOptionIndex: 1,
            explanationKh: 'ការពន្យល់៖ ជម្រើស B ពន្យល់ពីមូលហេតុចម្បងនៃការពង្រីកខុសបច្ចេកទេស។',
            explanationEn: 'Explanation: Premature scaling without systems drains cash and ruins brand reputation.',
          ),
        ],
        reflection: 'តើអាជីវកម្មរបស់អ្នកមានប្រព័ន្ធ SOP រឹងមាំល្មមសម្រាប់ពង្រីកទៅសាខាទី ២ ឬទី ៣ ហើយឬនៅ?',
        workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ វាយតម្លៃសមត្ថភាពក្រុមការងារបច្ចុប្បន្ន ថាតើមានមនុស្សដែលអាចផ្ទេរទៅដឹកនាំសាខាថ្មីបានដែរឬទេ។',
      ),
      ...ExtraLessonsPart3.directorLessons,
    ],

    // =========================================================================
    // 10. EXECUTIVE (C-SUITE) COURSE (course-executive-csuite)
    // =========================================================================
    'course-executive-csuite': [
      LessonModel(
        id: 'lesson-csuite-1',
        courseId: 'course-executive-csuite',
        moduleId: 'mod-1',
        titleKh: '១. ទំនាក់ទំនងជាមួយក្រុមប្រឹក្សាភិបាល និងអ្នកវិនិយោគ (Board Alignment & Investor Relations)',
        titleEn: 'Executive Board Alignment & Investor Relations',
        type: LessonType.text,
        orderIndex: 1,
        learningObjectives: '• យល់ដឹងពីរបៀបរៀបចំរបាយការណ៍សង្ខេបកម្រិត Executive Board Deck។\n'
            '• កសាងទំនុកចិត្តជាមួយម្ចាស់ភាគហ៊ុន និងអ្នកវិនិយោគធំៗ (Shareholder Trust)។\n'
            '• គ្រប់គ្រងការរំពឹងទុករបស់ក្រុមប្រឹក្សាភិបាលលើកំណើន និងហានិភ័យ។',
        shortExplanation: 'ថ្នាក់ដឹកនាំ C-Suite (CEO, COO, CFO) ត្រូវតែនិយាយជាភាសាយុទ្ធសាស្ត្រខ្ពស់ (Strategic Altitude) ដោយបង្ហាញពីទស្សនវិស័យ ទិន្នន័យហិរញ្ញវត្ថុ និងផលចំណេញលើដើមទុន (ROIC)។',
        workplaceStory: '«ឯកឧត្តមបណ្ឌិត ហេង វណ្ណា (CEO) បានរៀបចំកិច្ចប្រជុំក្រុមប្រឹក្សាភិបាលប្រចាំឆ្នាំ។ គាត់មិនបានចំណាយពេល ៣ ម៉ោងអានតួលេខលម្អិតនោះទេ ប៉ុន្តែបានរៀបចំ Slide សង្ខេបតែ ៥ សន្លឹក៖ ១. លទ្ធផលហិរញ្ញវត្ថុស្នូល ២. ឧបសគ្គទីផ្សារ ៣. ឱកាសកំណើនថ្មី ៤. ផែនការបែងចែកទុន ៥. សេចក្តីសម្រេចដែលត្រូវការការអនុម័តពីក្រុមប្រឹក្សាភិបាល។ កិច្ចប្រជុំបានបញ្ចប់យ៉ាងរលូនក្នុងរយៈពេល ១ ម៉ោងកន្លះ ហើយក្រុមប្រឹក្សាភិបាលបានអនុម័តកញ្ចប់វិនិយោគថ្មី \$5,000,000 ដោយគ្មានការសង្ស័យ។»',
        practicalExample: '✅ របៀបបង្ហាញ Board Deck ប្រកបដោយភាពចាស់ទុំ៖\n'
            '«យើងសូមរាយការណ៍ដោយស្មោះត្រង់នូវចំណុចដែលយើងសម្រេចបាន និងចំណុចដែលយើងជួបការប្រឈម។ ផ្អែកលើទិន្នន័យទីផ្សារ នេះជាអនុសាសន៍យុទ្ធសាស្ត្រចំនួន ៣ ដែលយើងស្នើឱ្យក្រុមប្រឹក្សាភិបាលពិចារណា។»',
        practicalExercise: 'បង្កើតសេចក្តីព្រាង Board Executive Summary ១ ទំព័រសម្រាប់បង្ហាញដល់ក្រុមប្រឹក្សាភិបាល ឬម្ចាស់ភាគហ៊ុន។',
        quizQuestions: [
          QuestionModel(
            id: 'q-csuite-1',
            promptKh: 'តើអ្វីជាក្បួនសំខាន់បំផុតក្នុងការពង្រឹងទំនាក់ទំនងរវាង C-Suite និងក្រុមប្រឹក្សាភិបាល (Board)?',
            promptEn: 'What is the most critical rule in maintaining strong C-Suite and Board relations?',
            optionsKh: [
              'A. លាក់បាំងព័ត៌មានអវិជ្ជមានទាំងអស់ ហើយរាយការណ៍តែរឿងល្អៗ។',
              'B. តម្លាភាពខ្ពស់ រាយការណ៍ទាន់ពេលវេលាទាំងដំណឹងល្អ និងដំណឹងអាក្រក់ និងផ្តល់ដំណោះស្រាយច្បាស់លាស់។',
              'C. មិនបាច់ជួបប្រជុំជាមួយក្រុមប្រឹក្សាភិបាលឡើយ។',
            ],
            optionsEn: [
              'A. Conceal all bad news and only show positives.',
              'B. Complete transparency, early communication of both good and bad news with vetted solutions.',
              'C. Avoid meeting the board.',
            ],
            correctOptionIndex: 1,
            explanationKh: 'ការពន្យល់៖ ជម្រើស B កសាងទំនុកចិត្តយូរអង្វែង (Board Trust)។ គ្មានអ្វីបំផ្លាញទំនុកចិត្តលឿនជាងការលាក់បាំងដំណឹងអាក្រក់នោះឡើយ។',
            explanationEn: 'Explanation: Transparency and early warning are the bedrock of board and executive trust.',
          ),
        ],
        reflection: 'តើអ្នកប្រាស្រ័យទាក់ទងជាមួយថ្នាក់ដឹកនាំជាន់ខ្ពស់ដោយភាពស្មោះត្រង់ និងតម្លាភាពកម្រិតណា?',
        workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ រៀបចំរបាយការណ៍សង្ខេបបែប Executive Summary ខ្លីមួយច្បាប់សម្រាប់កិច្ចប្រជុំបន្ទាប់។',
      ),
      LessonModel(
        id: 'lesson-csuite-2',
        courseId: 'course-executive-csuite',
        moduleId: 'mod-1',
        titleKh: '២. យុទ្ធសាស្ត្របែងចែកទុន និងការបង្កើនតម្លៃក្រុមហ៊ុន (Capital Allocation & Company Valuation)',
        titleEn: 'Capital Allocation Strategy & Driving Enterprise Valuation',
        type: LessonType.text,
        orderIndex: 2,
        learningObjectives: '• យល់ដឹងពីកាតព្វកិច្ចសំខាន់បំផុតរបស់ CEO គឺការបែងចែកទុន (Capital Allocation)។\n'
            '• ជ្រើសរើសរវាងការបណ្តាក់ទុនឡើងវិញ (Reinvestment), ការទិញភាគហ៊ុនត្រឡប់ (Share Buybacks) ឬការទិញអាជីវកម្មដទៃ (M&A)។\n'
            '• បង្កើនតម្លៃក្រុមហ៊ុន (Enterprise Valuation) សម្រាប់ត្រៀមទាក់ទាញទុន ឬចូលផ្សារហ៊ុន (IPO)។',
        shortExplanation: 'CEO ឆ្នើមមិនត្រូវបានវាស់វែងត្រឹមតែលើទំហំនៃការលក់នោះទេ ប៉ុន្តែវាស់វែងលើសមត្ថភាពបង្វិលដើមទុន ១ ដុល្លារឱ្យបង្កើតផលចំណេញលើសពីអត្រាការប្រាក់ទីផ្សារក្នុងរយៈពេលវែង។',
        workplaceStory: '«ក្នុងអំឡុងពេលដែលក្រុមហ៊ុនទទួលបានប្រាក់ចំណេញច្រើន CFO បានស្នើឱ្យទុកលុយក្នុងធនាគារធម្មតា។ CEO បានវិភាគឃើញថា ក្រុមហ៊ុនមានឱកាសទិញយកក្រុមហ៊ុនបច្ចេកវិទ្យាតូចមួយដែលមានកម្មសិទ្ធិបញ្ញាពិសេស។ គាត់បានសម្រេចចិត្តបែងចែកទុន ២០% មកទិញក្រុមហ៊ុននោះ។ ពីរឆ្នាំក្រោយមក បច្ចេកវិទ្យានោះបានជួយឱ្យក្រុមហ៊ុនកាត់បន្ថយថ្លៃដើមផលិត ៣០% និងបានបង្កើនតម្លៃក្រុមហ៊ុន (Valuation) ពី \$10,000,000 ឡើងដល់ \$35,000,000។ ម្ចាស់ភាគហ៊ុនទាំងអស់ទទួលបានផលចំណេញយ៉ាងច្រើនសន្ធឹកសន្ធាប់។»',
        practicalExample: '✅ ក្បួនមាសនៃការបែងចែកទុន (Warren Buffett Rule)៖\n'
            '«មុននឹងវិនិយោគទុនលើគម្រោងណាមួយ យើងត្រូវប្រាកដថា អត្រាផលចំណេញលើដើមទុនវិនិយោគ (ROIC) ត្រូវតែខ្ពស់ជាងថ្លៃដើមនៃទុន (Cost of Capital) យ៉ាងហោចណាស់ ៥%។»',
        practicalExercise: 'គណនា និងពិនិត្យមើលថាតើទុនបម្រុងរបស់ស្ថាប័នអ្នកកំពុងត្រូវបានវិនិយោគលើអ្វីដែលផ្តល់ផលចំណេញខ្ពស់បំផុតហើយឬនៅ។',
        quizQuestions: [
          QuestionModel(
            id: 'q-csuite-2',
            promptKh: 'តើភារកិច្ចសំខាន់បំផុតរបស់ CEO ក្នុងការបង្កើនតម្លៃក្រុមហ៊ុនយូរអង្វែងគឺជាអ្វី?',
            promptEn: 'What is the most critical duty of a CEO in maximizing long-term company valuation?',
            optionsKh: [
              'A. ចុះទៅត្រួតពិនិត្យការងារតូចតាចរបស់បុគ្គលិកគ្រប់ផ្នែកជារៀងរាល់ថ្ងៃ។',
              'B. ការបែងចែកទុនប្រកបដោយភាពវៃឆ្លាត (Effective Capital Allocation) និងការជ្រើសរើសថ្នាក់ដឹកនាំកំពូលដែលស័ក្តិសម។',
              'C. ចំណាយលុយទាំងអស់លើការជប់លៀង និងរថយន្តទំនើប។',
            ],
            optionsEn: [
              'A. Micromanage daily tasks of all employees.',
              'B. Intelligent capital allocation and recruiting outstanding senior leadership.',
              'C. Spend all money on luxury cars and parties.',
            ],
            correctOptionIndex: 1,
            explanationKh: 'ការពន្យល់៖ ជម្រើស B ជាទំនួលខុសត្រូវស្នូលរបស់ CEO កម្រិតសកលលោក។',
            explanationEn: 'Explanation: Capital allocation and executive talent placement are the twin drivers of enterprise valuation.',
          ),
        ],
        reflection: 'តើការសម្រេចចិត្តវិនិយោគរបស់អ្នកកន្លងមក ត្រូវបានជំរុញដោយអារម្មណ៍ ឬដោយការគណនាផលចំណេញលើដើមទុនច្បាស់លាស់?',
        workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ពិនិត្យមើលផែនការចំណាយវិនិយោគធំៗនៃស្ថាប័នរបស់អ្នក ដើម្បីធានាថាវាបង្កើតតម្លៃរយៈពេលវែង។',
      ),
      ...ExtraLessonsPart3.executiveLessons,
    ],
  };
}
