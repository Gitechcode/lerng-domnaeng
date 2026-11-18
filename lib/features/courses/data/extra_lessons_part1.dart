import '../domain/course_model.dart';

class ExtraLessonsPart1 {
  // =========================================================================
  // 1. INTERN EXTRA LESSONS (Lessons 7 to 10)
  // =========================================================================
  static final List<LessonModel> internLessons = [
    // Lesson 7: Daily Clearing & Daily Elevation (Haier OEC Philosophy)
    LessonModel(
      id: 'lesson-comm-7',
      courseId: 'course-intern-comm',
      moduleId: 'mod-1',
      titleKh: '៧. ក្បួនគ្រប់គ្រងពេលវេលា «ការងារថ្ងៃនេះបញ្ចប់ថ្ងៃនេះ» (Haier OEC: Daily Clearing)',
      titleEn: 'Haier OEC Model: Daily Clearing and Incremental Progress for Interns',
      type: LessonType.text,
      orderIndex: 7,
      learningObjectives: '• យល់ដឹងពីទស្សនវិជ្ជាគ្រប់គ្រងបែបចិន Haier OEC (Overall, Every, Control & Clear) សម្រាប់ការងារប្រចាំថ្ងៃ។\n'
          '• បង្កើតទម្លាប់ «ការងារថ្ងៃនេះ ត្រូវបញ្ចប់ថ្ងៃនេះ និងល្អជាងម្សិលមិញ ១%» (日清日高)។\n'
          '• ចេះរៀបចំបញ្ជីកិច្ចការប្រចាំថ្ងៃ (Daily Checklist) ដើម្បីកុំឱ្យធ្លាក់ជំពាក់ការងារ ឬភ្លេចភ្លាំង។',
      shortExplanation: 'ទស្សនវិជ្ជាគ្រប់គ្រងដ៏ល្បីល្បាញរបស់ក្រុមហ៊ុនយក្ស Haier (ដឹកនាំដោយ Zhang Ruimin) គឺ OEC (日事日毕，日清日高)៖ ការងារថ្ងៃនេះត្រូវតែបោសសម្អាតបញ្ចប់ឱ្យហើយក្នុងថ្ងៃនេះ ហើយរាល់ថ្ងៃត្រូវតែមានការរីកចម្រើនយ៉ាងហោចណាស់ ១%។ សម្រាប់បុគ្គលិកកម្មសិក្សាការងារ (Intern) និងបុគ្គលិកថ្មី ការមិនពន្យារពេល និងការធ្វើបញ្ជីត្រួតពិនិត្យការងារមុនចេញទៅផ្ទះ គឺជាគ្រឹះនៃភាពជឿជាក់ខ្ពស់បំផុត។',
      workplaceStory: '«កញ្ញា មុនីនាថ ចូលធ្វើការជាបុគ្គលិកកម្មសិក្សាផ្នែករដ្ឋបាលនៅក្រុមហ៊ុននាំចូលទំនិញមួយនៅរាជធានីភ្នំពេញ។ ដំបូងឡើយ នាងតែងតែគិតថាការងារដែលធ្វើមិនទាន់ចាំទុកធ្វើស្អែក ព្រោះនាងជាត្រឹម Intern។ ជាលទ្ធផល ឯកសារទូទាត់វិក្កយបត្រថ្លៃដឹកជញ្ជូនត្រូវកកស្ទះ ធ្វើឱ្យឡានកុងតឺន័រមិនអាចបើកចេញពីកំពង់ផែបានទាន់ពេល។ '
          'ក្រោយពីទទួលការណែនាំពីអ្នកគ្រប់គ្រង នាងបានអនុវត្តក្បួន OEC ដោយឆ្លៀតពេល ១៥ នាទីមុនម៉ោង ៥ ល្ងាច ធ្វើបញ្ជីបោសសម្អាតការងារ (Daily Clear): ពិនិត្យថាគ្រប់អ៊ីមែល និងឯកសាររដ្ឋបាលក្នុងថ្ងៃនេះត្រូវបានផ្ញើ ឬបញ្ជូនបន្តរួចរាល់ ១០០%។ ត្រឹមតែ ៣ ខែ នាងត្រូវបានក្រុមហ៊ុនទទួលស្គាល់ថាជាបុគ្គលិកថ្មីដែលមានរបៀបរៀបរយបំផុត និងត្រូវបានតម្លើងជាបុគ្គលិកពេញសិទ្ធិមុនកាលកំណត់។»',
      practicalExample: '✅ គំរូបញ្ជីបោសសម្អាតការងារប្រចាំថ្ងៃ (OEC 15-Minute Daily Clear Checklist)៖\n'
          '១. [Inbox Zero]៖ ពិនិត្យអ៊ីមែល និងសារ Telegram ទាំងអស់ថាតើមានសារណាដែលយើងជំពាក់ការឆ្លើយតបដែរឬទេ?\n'
          '២. [Pending Tasks]៖ ការងារណាដែលមិនទាន់រួច ត្រូវផ្ញើសារប្រាប់ប្រធានក្រុមជាមុនអំពីស្ថានភាព (Status update) មុនម៉ោងចេញទៅផ្ទះ។\n'
          '៣. [Tomorrow Plan]៖ កត់ត្រាកិច្ចការអាទិភាពធំៗ ៣ យ៉ាងសម្រាប់ថ្ងៃស្អែក លើសៀវភៅកំណត់ហេតុ។',
      practicalExercise: 'នៅម៉ោង ៤:៤៥ នាទីល្ងាចថ្ងៃនេះ ចំណាយពេល ១៥ នាទីបិទកិច្ចការដែលនៅសេសសល់ និងសរសេរកិច្ចការអាទិភាពចំនួន ៣ សម្រាប់ព្រឹកថ្ងៃស្អែក។',
      quizQuestions: [
        QuestionModel(
          id: 'q-comm-7',
          promptKh: 'តាមទស្សនវិជ្ជា Haier OEC តើអ្វីជាអត្ថន័យស្នូលនៃពាក្យថា «日清日高» (Daily Clearing, Daily Rising)?',
          promptEn: 'According to Haier OEC philosophy, what is the core meaning of Daily Clearing and Daily Rising?',
          optionsKh: [
            'A. ការងារដែលពិបាកត្រូវរុញឱ្យអ្នកដទៃធ្វើ ហើយការងារស្រួលទុកធ្វើថ្ងៃស្អែក។',
            'B. ការងារថ្ងៃនេះត្រូវតែបញ្ចប់ឱ្យដាច់ស្រេចក្នុងថ្ងៃនេះ ហើយរាល់ថ្ងៃត្រូវកែលម្អឱ្យប្រសើរជាងម្សិលមិញ។',
            'C. ធ្វើការងារតែពេលណាដែលប្រធានមកឈរមើលពីក្រោយខ្នង។',
          ],
          optionsEn: [
            'A. Push difficult tasks to others and leave easy tasks for tomorrow.',
            'B. Complete today tasks today without backlog, improving incrementally every day.',
            'C. Work only when the manager is watching closely.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ ក្បួន Haier OEC បង្រៀនឱ្យយើងបោសសម្អាតកិច្ចការប្រចាំថ្ងៃ មិនទុកឱ្យកកស្ទះ និងអភិវឌ្ឍសមត្ថភាពខ្លួនឯងបន្តិចម្តងៗជារៀងរាល់ថ្ងៃ។',
          explanationEn: 'Explanation: Haier OEC emphasizes closing all daily open loops and driving 1% daily self-improvement.',
        ),
      ],
      reflection: 'តើអ្នកធ្លាប់មានទម្លាប់ទុកការងារដែលពិបាកទៅធ្វើថ្ងៃស្អែករហូតដល់កកស្ទះដែរឬទេ? តើអ្នកអាចផ្លាស់ប្តូរទម្លាប់នេះដោយរបៀបណា?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ អនុវត្តការបោសសម្អាតការងារ ១៥ នាទីមុនចេញទៅផ្ទះ ធានាថាគ្មានសារការងារដែលមិនទាន់បានឆ្លើយតប។',
    ),

    // Lesson 8: Taking Ownership and Accountability (Alibaba "Smell the Flavor")
    LessonModel(
      id: 'lesson-comm-8',
      courseId: 'course-intern-comm',
      moduleId: 'mod-1',
      titleKh: '៨. ភាពជាម្ចាស់ការ និងការយល់ចិត្តក្រុម (Alibaba: Ownership & Empathy)',
      titleEn: 'Workplace Ownership & Building Trust: The Alibaba Cultural Mindset',
      type: LessonType.text,
      orderIndex: 8,
      learningObjectives: '• យល់ដឹងពីផ្នត់គំនិតភាពជាម្ចាស់ការ (Ownership Mindset) មិនមែនគ្រាន់តែជាអ្នកធ្វើការតាមបញ្ជា (Task Taker)។\n'
          '• រៀនសង្កេតបរិយាកាស និងតម្រូវការរបស់ក្រុមដោយមិនចាំបាច់រង់ចាំគេប្រាប់គ្រប់ជំហាន។\n'
          '• បង្កើតទំនុកចិត្តជាមួយរៀមច្បង និងថ្នាក់ដឹកនាំតាមរយៈការជួយជ្រោមជ្រែងកិច្ចការរួម។',
      shortExplanation: 'នៅក្រុមហ៊ុន Alibaba ស្ថាបនិក Jack Ma តែងតែលើកឡើងថា៖ «កុំធ្វើជាមនុស្សដែលរង់ចាំតែបញ្ជា ត្រូវធ្វើជាមនុស្សដែលឃើញបញ្ហាហើយចូលរួមដោះស្រាយ»។ សម្រាប់បុគ្គលិកកម្មសិក្សា ភាពខុសគ្នារវាងអ្នកដែលទទួលបានការតម្លើងតំណែង និងអ្នកដែលត្រូវបានគេបំភ្លេច គឺ «ភាពជាម្ចាស់ការ» (Ownership) — ការគិតមួយជំហានមុនប្រធាន និងការយកចិត្តទុកដាក់លើជោគជ័យរបស់ក្រុមទាំងមូល។',
      workplaceStory: '«ក្នុងអំឡុងពេលរៀបចំពិធីសម្ពោធផលិតផលថ្មីមួយរបស់ក្រុមហ៊ុនអចលនទ្រព្យ លោក ពិសិដ្ឋ ជាបុគ្គលិកកម្មសិក្សាផ្នែកទីផ្សារ។ ពេលភ្លៀងធ្លាក់ភ្លាមៗ ទឹកបានហូរចូលមាត់ទ្វារសាលប្រជុំ។ ខណៈដែលបុគ្គលិកមួយចំនួនឈរមើល និងរង់ចាំអ្នកអនាម័យមកជូត ពិសិដ្ឋបានរត់ទៅយកកន្សែង និងស្បែកជើងជូតមកទប់ទឹកភ្លាមៗ ដើម្បីកុំឱ្យភ្ញៀវកិត្តិយសរអិលដួល។ '
          'ទង្វើដ៏ម្ចាស់ការ និងមិនប្រកាន់ការងារនេះ ត្រូវបានអគ្គនាយកមើលឃើញផ្ទាល់ភ្នែក។ ក្រោយពិធីចប់ អគ្គនាយកបានកោតសរសើរពិសិដ្ឋនៅចំពោះមុខបុគ្គលិកទាំងអស់ ហើយបានផ្តល់កិច្ចសន្យាការងារពេញសិទ្ធិភ្លាមៗជាមួយនឹងប្រាក់ខែខ្ពស់ជាងស្តង់ដារ។»',
      practicalExample: '✅ របៀបបង្ហាញភាពជាម្ចាស់ការក្នុងការងារប្រចាំថ្ងៃ៖\n'
          '• ជំនួសឱ្យការនិយាយថា៖ «ការងារហ្នឹងមិនមែននៅក្នុង Job Description ខ្ញុំទេ!»\n'
          '• ត្រូវនិយាយថា៖ «ការងារនេះខ្ញុំមិនទាន់ធ្លាប់ធ្វើទេ ប៉ុន្តែខ្ញុំរីករាយនឹងរៀនសូត្រ និងជួយសម្រាលបន្ទុកក្រុម។ តើបងត្រូវការឱ្យខ្ញុំជួយត្រង់ណាខ្លះ?»',
      practicalExercise: 'ស្វែងរកកិច្ចការតូចមួយក្នុងក្រុមរបស់អ្នកនៅថ្ងៃនេះ (ដូចជាការជួយរៀបចំឯកសារ ឬជួយបង្រួបបង្រួមទិន្នន័យ) ហើយចូលរួមជួយដោយស្ម័គ្រចិត្ត។',
      quizQuestions: [
        QuestionModel(
          id: 'q-comm-8',
          promptKh: 'នៅពេលអ្នកឃើញកិច្ចការរួមរបស់ក្រុមកំពុងជួបការកកស្ទះ តើឥរិយាបថណាដែលបង្ហាញពីភាពជាម្ចាស់ការ (Ownership)?',
          promptEn: 'When you notice team tasks getting bottlenecked, what behavior demonstrates true ownership?',
          optionsKh: [
            'A. អង្គុយស្ងៀមធ្វើតែការងារផ្ទាល់ខ្លួន ព្រោះខ្លាចហត់បន្ថែមដោយគ្មានប្រាក់បន្ថែម។',
            'B. ចូលរួមសួរនាំ និងស្ម័គ្រចិត្តជួយសម្រាលបន្ទុកក្រុមតាមលទ្ធភាព ដើម្បីឱ្យកិច្ចការរួមសម្រេចបាន។',
            'C. បន្ទោសសមាជិកក្រុមដែលធ្វើការយឺតយ៉ាវនៅលើបណ្តាញសង្គម។',
          ],
          optionsEn: [
            'A. Sit passively and do only personal tasks to avoid extra work.',
            'B. Inquire actively and volunteer to help alleviate bottlenecks for the collective success.',
            'C. Complain about slow teammates on social media.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ ភាពជាម្ចាស់ការ (Ownership) គឺជាការផ្តោតលើលទ្ធផលរួមរបស់ស្ថាប័ន មិនមែនគ្រាន់តែការពារព្រំដែនតូចចង្អៀតរបស់ខ្លួនឯងនោះទេ។',
          explanationEn: 'Explanation: Ownership means prioritizing the collective mission over rigid individual boundaries.',
        ),
      ],
      reflection: 'តើអ្នកធ្លាប់មានអារម្មណ៍ថា «មិនមែនការងារខ្ញុំ ខ្ញុំមិនខ្វល់» ដែរឬទេ? តើផ្នត់គំនិតនោះប៉ះពាល់ដល់ឱកាសរីកចម្រើនរបស់អ្នកយ៉ាងដូចម្តេច?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ជួយសម្រាលការងារសមាជិកម្នាក់ក្នុងក្រុមយ៉ាងហោច ១ កិច្ចការដោយមិនចាំបាច់រង់ចាំការស្នើសុំ។',
    ),

    // Lesson 9: Constructive Note-Taking & Documentation (Toyota & Huawei Style)
    LessonModel(
      id: 'lesson-comm-9',
      courseId: 'course-intern-comm',
      moduleId: 'mod-1',
      titleKh: '៩. សិល្បៈនៃការកត់ត្រាកិច្ចប្រជុំ និងរៀបចំឯកសារការងារ (Meeting Minutes & Documentation)',
      titleEn: 'Professional Meeting Minutes & Workplace Documentation Mastery',
      type: LessonType.text,
      orderIndex: 9,
      learningObjectives: '• ចេះកត់ត្រាកិច្ចប្រជុំ (Meeting Minutes) តាមទម្រង់ Action-Item Matrix (អ្នកណា ធ្វើអ្វី ពេលណា)។\n'
          '• រៀនស្រង់ចំណុចគន្លឹះ និងសេចក្តីសម្រេចចិត្តដោយមិនកត់ត្រាតាមពាក្យសម្តីឥតប្រយោជន៍។\n'
          '• កសាងប្រព័ន្ធរក្សាទុកឯកសារឌីជីថល (Google Drive/OneDrive) ដែលមានរបៀបរៀបរយ និងងាយស្រួលស្វែងរក។',
      shortExplanation: 'នៅក្រុមហ៊ុនបច្ចេកវិទ្យាយក្សដូចជា Huawei ការកត់ត្រាកិច្ចប្រជុំមិនមែនជាការសរសេរតាមគ្រប់ពាក្យសម្តីនោះទេ ប៉ុន្តែជាការកត់ត្រា «សេចក្តីសម្រេចចិត្ត និងកិច្ចសន្យាសកម្មភាព» (Decisions & Action Items)។ បុគ្គលិកដែលចេះកត់ត្រាកិច្ចប្រជុំបានច្បាស់លាស់ គឺជាមនុស្សដែលគ្រប់គ្រងដំណើរការការងារ និងជាមនុស្សដំបូងគេដែលថ្នាក់ដឹកនាំស្វែងរកនៅពេលត្រូវការទិន្នន័យសំខាន់។',
      workplaceStory: '«ក្នុងកិច្ចប្រជុំប្រចាំខែរបស់ក្រុមហ៊ុនចែកចាយគ្រឿងសំណង់មួយ លោក តារា ជា Intern ត្រូវបានចាត់តាំងឱ្យកត់ត្រាកិច្ចប្រជុំ។ ជំនួសឱ្យការសរសេររៀបរាប់វែងអន្លាយ ៤ ទំព័រដែលគ្មានអ្នកណាអាន តារាបានប្រើទម្រង់តារាង ៣ ជួរខ្លី៖ ១. បញ្ហាដែលបានសម្រេច ២. សកម្មភាពបន្ទាប់ (Action Items) ៣. អ្នកទទួលខុសត្រូវ និងថ្ងៃកំណត់ (PIC & Deadline)។ '
          'ក្រោយប្រជុំចប់ត្រឹមតែ ៣០ នាទី គាត់បានផ្ញើសារសង្ខេបនេះចូលក្នុង Group Telegram និងអ៊ីមែល។ ប្រធាននាយកដ្ឋានមានការស្ងើចសរសើរយ៉ាងខ្លាំង ព្រោះសមាជិកទាំងអស់ដឹងច្បាស់ពីអ្វីដែលត្រូវធ្វើដោយមិនបាច់សួរដដែលៗ។»',
      practicalExample: '✅ ទម្រង់កត់ត្រាកិច្ចប្រជុំកម្រិតស្តង់ដារ (Action-Oriented MoM Template)៖\n'
          '• [កាលបរិច្ឆេទ & គោលបំណង]៖ កិច្ចប្រជុំរៀបចំយុទ្ធនាការ Water Festival (ថ្ងៃទី 15/10)\n'
          '• [សេចក្តីសម្រេចសំខាន់]៖ យល់ព្រមជ្រើសរើស Agency A សម្រាប់ផលិតវីដេអូផ្សព្វផ្សាយ\n'
          '• [តារាងសកម្មភាព Action Matrix]៖\n'
          '  - ភារកិច្ច៖ ចុះកិច្ចសន្យាជាមួយ Agency | អ្នកទទួលខុសត្រូវ៖ បង វីរៈ | Deadline: ថ្ងៃសុក្រ ម៉ោង 3 រសៀល\n'
          '  - ភារកិច្ច៖ រៀបចំប្លង់ថត | អ្នកទទួលខុសត្រូវ៖ កញ្ញា លីដា | Deadline: ថ្ងៃចន្ទ ម៉ោង 10 ព្រឹក',
      practicalExercise: 'អនុវត្តការសរសេរបញ្ជីសង្ខេប Action Items ពីកិច្ចប្រជុំ ឬការពិភាក្សាការងារបន្ទាប់របស់អ្នក រួចផ្ញើជូនប្រធានក្រុមពិនិត្យ។',
      quizQuestions: [
        QuestionModel(
          id: 'q-comm-9',
          promptKh: 'តើធាតុផ្សំដែលសំខាន់បំផុតនៅក្នុងកំណត់ហេតុកិច្ចប្រជុំ (Meeting Minutes) ប្រកបដោយវិជ្ជាជីវៈគឺជាអ្វី?',
          promptEn: 'What is the most critical component of professional action-oriented meeting minutes?',
          optionsKh: [
            'A. ការកត់ត្រារាល់ពាក្យកំប្លែង និងការជជែកគ្នាលេងក្នុងកិច្ចប្រជុំឱ្យបានវែងបំផុត។',
            'B. តារាងសកម្មភាពច្បាស់លាស់ (Action Items) ដែលបញ្ជាក់ពី អ្នកទទួលខុសត្រូវ និងកាលបរិច្ឆេទបញ្ចប់ (Who, What, When)។',
            'C. ទុកកំណត់ហេតុចោលលើតុដោយមិនចាំបាច់ផ្ញើជូនអ្នកចូលរួមប្រជុំ។',
          ],
          optionsEn: [
            'A. Transcribing every joke and casual chat as verbatim as possible.',
            'B. Clear action matrix specifying the task, person-in-charge (PIC), and hard deadline.',
            'C. Leaving notes in a notebook without distributing to attendees.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ កំណត់ហេតុប្រជុំដែលមានប្រសិទ្ធភាពត្រូវផ្តោតលើលទ្ធផលសកម្មភាព៖ អ្នកណាត្រូវធ្វើអ្វី និងត្រូវបញ្ចប់ត្រឹមថ្ងៃណា (Who, What, When)។',
          explanationEn: 'Explanation: Action-oriented meeting minutes must specify accountability and delivery dates.',
        ),
      ],
      reflection: 'តើអ្នកធ្លាប់ជួបកិច្ចប្រជុំដែលជជែកគ្នាច្រើនម៉ោង ប៉ុន្តែចប់ទៅគ្មានអ្នកណាដឹងថាត្រូវធ្វើអ្វីបន្តដែរឬទេ? តើអ្នកអាចជួយកែប្រែស្ថានភាពនោះយ៉ាងដូចម្តេច?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ កត់ត្រាកិច្ចប្រជុំបន្ទាប់របស់អ្នកតាមទម្រង់ Action Items Matrix ហើយចែករំលែកដល់ក្រុមក្នុងរយៈពេល ១ ម៉ោងក្រោយប្រជុំចប់។',
    ),

    // Lesson 10: Digital Workplace Hygiene & Data Privacy
    LessonModel(
      id: 'lesson-comm-10',
      courseId: 'course-intern-comm',
      moduleId: 'mod-1',
      titleKh: '១០. សុវត្ថិភាពទិន្នន័យ និងក្រមសីលធម៌ឌីជីថល (Workplace Data Privacy & Security)',
      titleEn: 'Workplace Cybersecurity, Confidentiality & Digital Ethics for Beginners',
      type: LessonType.text,
      orderIndex: 10,
      learningObjectives: '• យល់ដឹងពីសារៈសំខាន់នៃកិច្ចសន្យារក្សាការសម្ងាត់ (NDA) និងការការពារទិន្នន័យអតិថិជន។\n'
          '• ជៀសវាងការបង្ហោះរូបភាពឯកសារការងារ ឬអេក្រង់កុំព្យូទ័រលើបណ្តាញសង្គមផ្ទាល់ខ្លួន (Facebook, TikTok)។\n'
          '• អនុវត្តទម្លាប់ចាក់សោអេក្រង់ (Win+L / Cmd+Ctrl+Q) និងការប្រើប្រាស់ពាក្យសម្ងាត់រឹងមាំ (2FA)។',
      shortExplanation: 'នៅក្នុងយុគសម័យឌីជីថល ទិន្នន័យគឺជាទ្រព្យសម្បត្តិដ៏មានតម្លៃបំផុតរបស់ក្រុមហ៊ុន។ កំហុសឆ្គងបន្តិចបន្តួចដូចជាការថតរូបតុធ្វើការបង្ហោះ Stories លើ Instagram ដោយជាប់ឯកសារបញ្ជីឈ្មោះអតិថិជន ឬលេខទូរស័ព្ទ អាចបណ្តាលឱ្យក្រុមហ៊ុនរងបណ្តឹងផ្លូវច្បាប់ និងធ្វើឱ្យអ្នកត្រូវបណ្តេញចេញភ្លាមៗ។ វិជ្ជាជីវៈចាប់ផ្តើមពីការការពារការសម្ងាត់របស់ស្ថាប័ន។',
      workplaceStory: '«កញ្ញា សុជាតា ជាបុគ្គលិកកម្មសិក្សាផ្នែកធនធានមនុស្ស (HR Intern) នៅក្រុមហ៊ុនបច្ចេកវិទ្យាមួយ។ ដោយក្តីរំភើបដែលបានចូលធ្វើការនៅការិយាល័យស្អាត នាងបានថតរូប Selfie នៅតុធ្វើការរួចបង្ហោះលើ Story ហ្វេសប៊ុក។ ប៉ុន្តែនៅពីក្រោយខ្នងនាង អេក្រង់កុំព្យូទ័រកំពុងបើកបង្ហាញតារាងប្រាក់ខែរបស់បុគ្គលិកទាំងអស់ក្នុងក្រុមហ៊ុន។ '
          'មិត្តភក្តិម្នាក់បានថតអេក្រង់នោះទុក ហើយចែករំលែកបន្ត។ ត្រឹមតែមួយយប់ រឿងរ៉ាវបានបែកធ្លាយពេញក្រុមហ៊ុន បង្កជាជម្លោះផ្ទៃក្នុងធ្ងន់ធ្ងររវាងបុគ្គលិកចាស់ និងថ្មី។ ក្រុមហ៊ុនត្រូវបង្ខំចិត្តបញ្ចប់កិច្ចសន្យាការងាររបស់សុជាតាភ្លាមៗដោយសារការបំពានក្រមសីលធម៌សម្ងាត់ធ្ងន់ធ្ងរ។»',
      practicalExample: '✅ ច្បាប់ដែក ៣ យ៉ាងសម្រាប់សុវត្ថិភាពទិន្នន័យការងារ៖\n'
          '១. [Screen Lock]៖ ក្រោកពីតុធ្វើការកាលណា ត្រូវចុចចាក់សោអេក្រង់កុំព្យូទ័រជានិច្ច (Windows: ចុច Win + L | Mac: ចុច Cmd + Ctrl + Q)។\n'
          '២. [No Social Media Leak]៖ ដាច់ខាតមិនត្រូវថតរូបជាប់ឯកសារ ប្លង់គម្រោង ឬតួលេខហិរញ្ញវត្ថុបង្ហោះលើបណ្តាញសង្គមឡើយ។\n'
          '៣. [Phishing Awareness]៖ មិនត្រូវចុច Link ចម្លែកៗក្នុងអ៊ីមែល ឬទាញយក File គួរឱ្យសង្ស័យចូលក្នុងកុំព្យូទ័រក្រុមហ៊ុនជាដាច់ខាត។',
      practicalExercise: 'ពិនិត្យកុំព្យូទ័រការងាររបស់អ្នកថ្ងៃនេះ៖ បើកដំណើរការ Two-Factor Authentication (2FA) លើគណនីអ៊ីមែលការងារ និងសាកល្បងអនុវត្តទម្លាប់ Lock Screen រាល់ពេលក្រោកពីតុ។',
      quizQuestions: [
        QuestionModel(
          id: 'q-comm-10',
          promptKh: 'តើទង្វើមួយណាដែលចាត់ទុកថាជាការបំពានក្រមសីលធម៌រក្សាការសម្ងាត់របស់ស្ថាប័ន (Confidentiality Breach)?',
          promptEn: 'Which action is considered a serious breach of organizational confidentiality?',
          optionsKh: [
            'A. ចាក់សោអេក្រង់កុំព្យូទ័ររាល់ពេលដើរចេញទៅញ៉ាំកាហ្វេ។',
            'B. ថតរូបឯកសារផ្ទៃក្នុង ឬតារាងព័ត៌មានអតិថិជនបង្ហោះលើបណ្តាញសង្គមផ្ទាល់ខ្លួន។',
            'C. ប្តូរពាក្យសម្ងាត់គណនីការងាររៀងរាល់ ៣ ខែម្តង។',
          ],
          optionsEn: [
            'A. Locking your screen every time you step away for coffee.',
            'B. Taking photos of internal documents or client lists and posting to personal social media.',
            'C. Changing your workplace password every 3 months.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ ការបង្ហោះទិន្នន័យផ្ទៃក្នុងរបស់ក្រុមហ៊ុន ឬព័ត៌មានអតិថិជនលើបណ្តាញសង្គម គឺជាការបំពានច្បាប់រក្សាការសម្ងាត់យ៉ាងធ្ងន់ធ្ងរ (NDA Violation)។',
          explanationEn: 'Explanation: Exposing confidential company documents or client data on social media is a severe NDA breach.',
        ),
      ],
      reflection: 'តើអ្នកធ្លាប់ធ្វេសប្រហែសក្នុងការចាក់សោអេក្រង់កុំព្យូទ័រ ឬទុកឯកសារសំខាន់ចោលលើតុដែរឬទេ? តើអ្នកនឹងកែប្រែទម្លាប់នេះដោយរបៀបណា?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ កំណត់ Hotkey លើកុំព្យូទ័ររបស់អ្នកសម្រាប់ Lock Screen និងអនុវត្តវាឱ្យក្លាយជាទម្លាប់ស្វ័យប្រវត្តិចាប់ពីថ្ងៃនេះតទៅ។',
    ),
  ];

  // =========================================================================
  // 2. JUNIOR EXTRA LESSONS (Lessons 7 to 10)
  // =========================================================================
  static final List<LessonModel> juniorLessons = [
    // Lesson 7: Five Whys & Root Cause Analysis (Toyota Way)
    LessonModel(
      id: 'lesson-eq-7',
      courseId: 'course-eq-critical',
      moduleId: 'mod-1',
      titleKh: '៧. ការវិភាគឫសគល់បញ្ហា «ក្បួនសួរហេតុផល ៥ ដង» (Toyota 5 Whys Root-Cause)',
      titleEn: 'Toyota 5 Whys Root Cause Analysis for Junior Professionals',
      type: LessonType.text,
      orderIndex: 7,
      learningObjectives: '• យល់ដឹងពីក្បួនវិភាគបញ្ហា 5 Whys របស់ក្រុមហ៊ុនរថយន្តតូយ៉ូតា (Toyota Production System)។\n'
          '• ចេះញែកឱ្យដាច់រវាង «រោគសញ្ញាខាងក្រៅ» (Symptom) និង «ឫសគល់ពិតប្រាកដ» (Root Cause) នៃបញ្ហាការងារ។\n'
          '• ស្នើដំណោះស្រាយដែលការពារកុំឱ្យបញ្ហាកើតឡើងដដែលៗជំនួសឱ្យការបិទបាំងជាបណ្តោះអាសន្ន។',
      shortExplanation: 'នៅពេលការងារជួបបញ្ហា មនុស្សភាគច្រើនប្រញាប់ប្រញាល់ដោះស្រាយត្រឹមតែរោគសញ្ញាខាងក្រៅ (ដូចជាការលេបថ្នាំបំបាត់ការឈឺក្បាល ប៉ុន្តែមិនព្យាបាលដុំសាច់)។ វិធីសាស្ត្រ «5 Whys» បង្រៀនឱ្យយើងសួរសំណួរថា «ហេតុអ្វី?» ចំនួន ៥ ដងបន្តបន្ទាប់គ្នា ដើម្បីជ្រែកចូលទៅរកមូលហេតុដើមបំផុតក្នុងប្រព័ន្ធ ឬដំណើរការការងារ។',
      workplaceStory: '«នៅក្រុមហ៊ុនពាណិជ្ជកម្មអេឡិចត្រូនិចមួយ ការដឹកជញ្ជូនទំនិញទៅអតិថិជនត្រូវយឺតយ៉ាវ ៣ ថ្ងៃជាប់គ្នា។ \n'
          'ប្រធានក្រុមសួរ៖ ហេតុអ្វីបានជាដឹកយឺត? (Why 1) -> បុគ្គលិកឆ្លើយ៖ ព្រោះបុគ្គលិកវេចខ្ចប់ធ្វើមិនទាន់។\n'
          'សួរបន្ត៖ ហេតុអ្វីបានជាវេចខ្ចប់មិនទាន់? (Why 2) -> ព្រោះម៉ាស៊ីនព្រីនវិក្កយបត្រខូច។\n'
          'សួរបន្ត៖ ហេតុអ្វីបានជាម៉ាស៊ីនព្រីនខូច? (Why 3) -> ព្រោះប្រើទឹកថ្នាំក្លែងក្លាយមានតម្លៃថោក។\n'
          'សួរបន្ត៖ ហេតុអ្វីបានជាទិញទឹកថ្នាំក្លែងក្លាយ? (Why 4) -> ព្រោះផ្នែកលទ្ធកម្ម (Procurement) ត្រូវកាត់បន្ថយថ្លៃដើម។\n'
          'សួរបន្ត៖ ហេតុអ្វីបានជាផ្នែកលទ្ធកម្មផ្តោតតែលើតម្លៃថោក? (Why 5 - ឫសគល់) -> ព្រោះក្រុមហ៊ុនគ្មានគោលការណ៍ស្តង់ដារគុណភាពអប្បបរមាសម្រាប់សម្ភារការិយាល័យ! \n'
          'នៅពេលបង្កើតគោលការណ៍ស្តង់ដារគុណភាព បញ្ហាដឹកជញ្ជូនយឺតយ៉ាវត្រូវបានដោះស្រាយជាស្ថាពរ។»',
      practicalExample: '✅ របៀបរៀបចំរបាយការណ៍ដោះស្រាយបញ្ហាតាម 5 Whys៖\n'
          '១. [បញ្ហាដែលបានសង្កេតឃើញ]៖ កម្មវិធីទូរស័ព្ទ App Crash នៅម៉ោង ៨ យប់\n'
          '២. [ដំណើរការសួរ 5 Whys]៖ ហេតុអ្វី Server គាំង? -> ហេតុអ្វីទិន្នន័យកើនឡើងភ្លាមៗ? -> ហេតុអ្វីគ្មានប្រព័ន្ធ Auto-scale?...\n'
          '៣. [ដំណោះស្រាយជាប្រព័ន្ធ]៖ ដំឡើងប្រព័ន្ធ Cloud Auto-scaling ដើម្បីទប់ទល់នឹងកំណើនអ្នកប្រើប្រាស់ស្វ័យប្រវត្តិ។',
      practicalExercise: 'ជ្រើសរើសបញ្ហាមួយដែលកើតឡើងជាញឹកញាប់ក្នុងការងាររបស់អ្នក ហើយអនុវត្តការសួរ «ហេតុអ្វី?» ៥ ដងដើម្បីស្វែងរកឫសគល់ពិតប្រាកដ។',
      quizQuestions: [
        QuestionModel(
          id: 'q-eq-7',
          promptKh: 'តើគោលបំណងចម្បងនៃវិធីសាស្ត្រ Toyota 5 Whys ក្នុងការដោះស្រាយបញ្ហាការងារគឺជាអ្វី?',
          promptEn: 'What is the primary purpose of the Toyota 5 Whys methodology in problem solving?',
          optionsKh: [
            'A. រកឱ្យឃើញថាតើបុគ្គលិកណាជាអ្នកខុស ដើម្បីកាត់ប្រាក់ខែ និងស្តីបន្ទោស។',
            'B. ស្វែងរកឫសគល់នៃបញ្ហានៅក្នុងប្រព័ន្ធការងារ ដើម្បីដាក់ចេញដំណោះស្រាយដែលការពារកុំឱ្យកើតឡើងម្តងទៀត។',
            'C. សួរសំណួរដដែលៗដើម្បីធ្វើឱ្យសមាជិកក្រុមមានអារម្មណ៍ភ័យខ្លាច។',
          ],
          optionsEn: [
            'A. Find out who is at fault to cut salary and publicly blame them.',
            'B. Uncover the fundamental root cause in the system to prevent recurrence permanently.',
            'C. Repeatedly ask questions to intimidate junior staff.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ 5 Whys មិនមែនជាការស្វែងរកបុគ្គលខុសដើម្បីស្តីបន្ទោសឡើយ ប៉ុន្តែជាការកែលម្អប្រព័ន្ធការងារដើម្បីការពារកំហុសកុំឱ្យកើតមានឡើងដដែលៗ។',
          explanationEn: 'Explanation: The 5 Whys focuses on systemic flaws, not personal finger-pointing.',
        ),
      ],
      reflection: 'តើកន្លងមកអ្នកធ្លាប់ដោះស្រាយបញ្ហាត្រឹមតែលើផ្ទៃក្រៅ រួចបញ្ហានោះនៅតែត្រឡប់មកវិញដដែលៗដែរឬទេ?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ពេលជួបបញ្ហាការងារ សូមកុំទាន់សន្និដ្ឋានភ្លាមៗ ចូរគូរដ្យាក្រាមសួរ «ហេតុអ្វី?» យ៉ាងហោច ៣ ទៅ ៥ ដងសិន។',
    ),

    // Lesson 8: Upward Management (Communicating with Busy Bosses)
    LessonModel(
      id: 'lesson-eq-8',
      courseId: 'course-eq-critical',
      moduleId: 'mod-1',
      titleKh: '៨. សិល្បៈនៃការគ្រប់គ្រងថ្នាក់លើ (Managing Up: Becoming Your Boss’s Right Hand)',
      titleEn: 'Upward Management: Working Effectively with High-Pressure Managers',
      type: LessonType.text,
      orderIndex: 8,
      learningObjectives: '• យល់ដឹងពីគោលគំនិត Managing Up (ការសម្រួលការងារ និងកសាងទំនុកចិត្តជាមួយថ្នាក់លើ)។\n'
          '• ចេះរាយការណ៍បញ្ហាអមជាមួយ «ជម្រើសដំណោះស្រាយ» យ៉ាងហោចណាស់ ២ ជម្រើស (Solution-Oriented Reporting)។\n'
          '• សម្របតាមស្ទីលទំនាក់ទំនងរបស់ប្រធាន (ចូលចិត្តមើលទិន្នន័យ ឬចូលចិត្តស្តាប់ការសង្ខេប)។',
      shortExplanation: 'ការគ្រប់គ្រងថ្នាក់លើ (Managing Up) មិនមែនជាការបញ្ចើចបញ្ចើរ ឬការផ្គាប់ចិត្តដោយគ្មានវិជ្ជាជីវៈនោះទេ ប៉ុន្តែជាសមត្ថភាពក្នុងការយល់ដឹងពីសម្ពាធ គោលដៅ និងស្ទីលការងាររបស់ថ្នាក់លើ ដើម្បីធ្វើឱ្យកិច្ចការរួមសម្រេចបានលទ្ធផលខ្ពស់បំផុត។ ក្បួនមាស៖ «កុំយកបញ្ហាទទេរទៅឱ្យប្រធានដោះស្រាយ ចូរយកបញ្ហាអមដោយជម្រើសដំណោះស្រាយចំនួន ២ ឬ ៣ ជម្រើស»។',
      workplaceStory: '«ប៊ុនណា ជា Junior Software Developer។ រាល់ពេល Code មានបញ្ហា គាត់តែងតែរត់ទៅបន្ទប់ប្រធានផ្នែក IT ហើយនិយាយថា៖ "បង! Database Error ហើយ ខ្ញុំមិនដឹងធ្វើម៉េចទេ!"។ ប្រធានរបស់គាត់ដែលកំពុងរវល់រៀបចំយុទ្ធសាស្ត្រប្រចាំឆ្នាំ មានអារម្មណ៍ហត់នឿយ និងធុញទ្រាន់យ៉ាងខ្លាំង។ '
          'ផ្ទុយទៅវិញ វណ្ណា ជា Developer ម្នាក់ទៀត នៅពេលជួបបញ្ហាដូចគ្នា គាត់បានស្រាវជ្រាវ និងរៀបចំសារ Telegram យ៉ាងច្បាស់៖ "ជម្រាបសួរបង! Database កំពុងជួបបញ្ហាស្លាក់ Query។ ខ្ញុំបានពិនិត្យឃើញជម្រើស ២៖ ជម្រើសទី ១ បង្កើត Index ថ្មីចំណាយពេល ១៥ នាទីមិនអស់ថវិកា ជម្រើសទី ២ បង្កើនទំហំ RAM Cloud ចំណាយ \$20/ខែ។ ខ្ញុំសូមអនុសាសន៍ឱ្យជ្រើសរើសជម្រើសទី ១ សិន។ តើបងយល់ព្រមទេ?" ប្រធានឆ្លើយតបត្រឹមពាក្យ "យល់ព្រម!" ក្នុងរយៈពេល ៥ វិនាទី។ ក្រោយមក វណ្ណា ត្រូវបានតែងតាំងជា Lead Developer។»',
      practicalExample: '✅ រូបមន្តរាយការណ៍បញ្ហាអមដំណោះស្រាយ (The 1-2-3 Upward Framework)៖\n'
          '១. [ស្ថានភាពបច្ចុប្បន្ន]៖ "យើងកំពុងជួបបញ្ហា X..."\n'
          '២. [ជម្រើសដំណោះស្រាយដែលបានវិភាគ]៖ \n'
          '   - ជម្រើស A: គុណសម្បត្តិ... គុណវិបត្តិ...\n'
          '   - ជម្រើស B: គុណសម្បត្តិ... គុណវិបត្តិ...\n'
          '៣. [អនុសាសន៍របស់អ្នក]៖ "ខ្ញុំសូមស្នើឱ្យជ្រើសរើសជម្រើស A ព្រោះវាចំណេញពេលវេលាជាង។"',
      practicalExercise: 'រៀបចំសារ ឬសេចក្តីព្រាងរាយការណ៍បញ្ហាមួយដែលអ្នកកំពុងជួប ដោយដាក់ជម្រើសដំណោះស្រាយចំនួន ២ មុននឹងជួបប្រធានរបស់អ្នក។',
      quizQuestions: [
        QuestionModel(
          id: 'q-eq-8',
          promptKh: 'នៅពេលអ្នករាយការណ៍បញ្ហាស្មុគស្មាញមួយទៅកាន់ថ្នាក់លើ តើរបៀបណាដែលបង្ហាញពីភាពចាស់ទុំវិជ្ជាជីវៈ (Managing Up)?',
          promptEn: 'When reporting a complex problem to your manager, which approach demonstrates professional maturity?',
          optionsKh: [
            'A. រាយការណ៍តែបញ្ហាហើយរង់ចាំប្រធានប្រាប់គ្រប់ជំហានថាត្រូវធ្វើយ៉ាងណា។',
            'B. បង្ហាញបញ្ហាសង្ខេប អមដោយជម្រើសដំណោះស្រាយដែលបានគិតគូររួច (២-៣ ជម្រើស) និងអនុសាសន៍ជាក់លាក់។',
            'C. លាក់បញ្ហានោះទុកកុំឱ្យប្រធានដឹង ដើម្បីកុំឱ្យប្រធានខឹង។',
          ],
          optionsEn: [
            'A. Report the raw problem and passively wait for instructions.',
            'B. State the problem clearly alongside vetted solution options and a concrete recommendation.',
            'C. Hide the problem from your manager to avoid anger.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ ថ្នាក់ដឹកនាំរវល់ខ្លាំងណាស់។ ការយកបញ្ហាអមដោយជម្រើសដំណោះស្រាយ (Solutions-oriented mindset) បង្ហាញពីសមត្ថភាពត្រិះរិះ និងជួយសម្រាលបន្ទុកថ្នាក់លើយ៉ាងច្រើន។',
          explanationEn: 'Explanation: Bringing pre-analyzed solutions with a clear recommendation saves executive time and proves strategic competence.',
        ),
      ],
      reflection: 'តើអ្នកធ្លាប់យកបញ្ហាទៅទម្លាក់លើតុប្រធានដោយមិនបានគិតរកដំណោះស្រាយជាមុនដែរឬទេ? តើអ្នកអាចផ្លាស់ប្តូរទម្លាប់នេះយ៉ាងដូចម្តេច?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ មុននឹងជួបប្រធានដើម្បីរាយការណ៍ឧបសគ្គណាមួយ ចូរចំណាយពេល ១០ នាទីសរសេរជម្រើសដោះស្រាយចំនួន ២ ជាមុនសិន។',
    ),

    // Lesson 9: Peer-to-Peer Collaboration & Silo Busting
    LessonModel(
      id: 'lesson-eq-9',
      courseId: 'course-eq-critical',
      moduleId: 'mod-1',
      titleKh: '៩. ការសម្របសម្រួលការងារអន្តរផ្នែក (Cross-Department Collaboration & Silo Busting)',
      titleEn: 'Cross-Functional Collaboration: Overcoming Departmental Silos',
      type: LessonType.text,
      orderIndex: 9,
      learningObjectives: '• យល់ដឹងពីគ្រោះថ្នាក់នៃផ្នត់គំនិតបែងចែកបន្ទាយ (Silo Mentality) រវាងផ្នែកលក់ ទីផ្សារ គណនេយ្យ និង IT។\n'
          '• ចេះកសាងទំនាក់ទំនងល្អជាមួយសហការីផ្នែកដទៃតាមរយៈការស្វែងយល់ពី KPI របស់ពួកគេ។\n'
          '• ដោះស្រាយភាពរអាក់រអួលនៃការងារដោយឈរលើគោលការណ៍ឈ្នះ-ឈ្នះ (Win-Win Alignment)។',
      shortExplanation: 'នៅក្នុងក្រុមហ៊ុនជាច្រើន ឧបសគ្គធំបំផុតមិនមែនជាគូប្រជែងខាងក្រៅទេ ប៉ុន្តែជាជញ្ជាំងរវាងផ្នែក និងផ្នែក (Silos)៖ ផ្នែកលក់បន្ទោសផ្នែកទីផ្សារ ផ្នែកទីផ្សារបន្ទោសផ្នែកប្រតិបត្តិការ ហើយផ្នែកប្រតិបត្តិការបន្ទោសផ្នែកគណនេយ្យ។ បុគ្គលិកកម្រិត Junior ដែលចេះកសាងស្ពានមិត្តភាពអន្តរផ្នែក នឹងក្លាយជាកម្លាំងចលករដែលមិនអាចខ្វះបាននៅក្នុងស្ថាប័ន។',
      workplaceStory: '«កញ្ញា លីនដា ជាបុគ្គលិកផ្នែកលក់ (Sales) តែងតែជួបការយឺតយ៉ាវក្នុងការចេញវិក្កយបត្រពីផ្នែកគណនេយ្យ ធ្វើឱ្យអតិថិជនរអ៊ូរទាំ។ ជំនួសឱ្យការឈ្លោះប្រកែក ឬប្តឹងទៅប្រធាន លីនដាបានទិញកាហ្វេមួយកែវទៅសុំជួបពិភាក្សាជាមួយកញ្ញា ចាន់ថន (បុគ្គលិកគណនេយ្យ) ដោយសួរថា៖ "បង ចាន់ថន តើឯកសារលក់របស់ខ្ញុំខ្វះខាតចំណុចណាខ្លះដែលធ្វើឱ្យបងពិបាកបញ្ចូលក្នុងប្រព័ន្ធ?" \n'
          'ចាន់ថន បានពន្យល់ថា លីនដាតែងតែភ្លេចសរសេរបញ្ជាក់លេខ TIN អតិថិជន។ ពេលដឹងមូលហេតុ លីនដាបានកែប្រែទម្រង់ភ្លាមៗ។ ចាប់ពីពេលនោះមក វិក្កយបត្ររបស់លីនដាត្រូវបានគណនេយ្យចេញឱ្យយ៉ាងលឿនក្នុងរយៈពេលតែ ១០ នាទី ហើយការលក់របស់នាងកើនឡើង ២ ដង។»',
      practicalExample: '✅ របៀបសន្ទនាដើម្បីកសាងកិច្ចសហការអន្តរផ្នែក៖\n'
          '«ជម្រាបសួរបង! ខ្ញុំដឹងថាខាងផ្នែកបងកំពុងមមាញឹកខ្លាំង។ គោលដៅរបស់ខ្ញុំគឺចង់ជួយសម្រួលកិច្ចការនេះឱ្យកាន់តែរលូន។ តើខាងខ្ញុំអាចរៀបចំទិន្នន័យបែបណាដើម្បីឱ្យខាងបងងាយស្រួលបន្តការងារបំផុត?»',
      practicalExercise: 'ស្វែងរកសហការីម្នាក់នៅផ្នែកដទៃដែលអ្នកឧស្សាហ៍ធ្វើការជាមួយ ហើយសួរនាំពីបញ្ហាប្រឈមរបស់ពួកគេក្នុងការទទួលការងារពីផ្នែករបស់អ្នក។',
      quizQuestions: [
        QuestionModel(
          id: 'q-eq-9',
          promptKh: 'នៅពេលការងាររបស់អ្នកត្រូវកកស្ទះនៅផ្នែកដទៃ (ឧ. ផ្នែកគណនេយ្យ ឬ IT) តើវិធីសាស្ត្រណាដែលមានប្រសិទ្ធភាពយូរអង្វែងបំផុត?',
          promptEn: 'When your work is blocked by another department, what approach is most effective long-term?',
          optionsKh: [
            'A. ស្រែកគំហក និងផ្ញើអ៊ីមែលបន្ទោសដោយ CC ប្រធានក្រុមហ៊ុនដើម្បីគាបសង្កត់។',
            'B. ជួបពិភាក្សាដោយផ្ទាល់ដើម្បីយល់ពីបញ្ហាប្រឈមរបស់ពួកគេ និងកែសម្រួលដំណើរការការងារឱ្យត្រូវគ្នា (Win-Win)។',
            'C. ឈប់ធ្វើការងារនោះចោល ហើយរង់ចាំរហូតដល់ប្រធានដេញដោល។',
          ],
          optionsEn: [
            'A. Yell and send aggressive escalations CCing top executives.',
            'B. Meet directly with empathy to understand their constraints and align workflow mutually.',
            'C. Stop working on the task completely.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ ការយល់ចិត្ត និងការសម្របសម្រួលដោយឈរលើគោលការណ៍ឈ្នះ-ឈ្នះ បង្កើតកិច្ចសហការយូរអង្វែង និងកម្ទេចជញ្ជាំងអន្តរផ្នែក (Silos)។',
          explanationEn: 'Explanation: Mutual empathy and collaborative alignment dismantle silos and generate sustainable momentum.',
        ),
      ],
      reflection: 'តើអ្នកធ្លាប់មានអារម្មណ៍អវិជ្ជមានជាមួយផ្នែកដទៃក្នុងក្រុមហ៊ុនដែរឬទេ? តើអ្នកបានព្យាយាមស្វែងយល់ពីសម្ពាធការងាររបស់ពួកគេហើយឬនៅ?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ផ្ញើសារអរគុណ ឬទិញភេសជ្ជៈជូនសហការីផ្នែកដទៃដែលបានជួយសម្រួលការងារអ្នកកាលពីសប្តាហ៍មុន។',
    ),

    // Lesson 10: Feedback Loop & Deliberate Practice (Sun Tzu: Know Yourself)
    LessonModel(
      id: 'lesson-eq-10',
      courseId: 'course-eq-critical',
      moduleId: 'mod-1',
      titleKh: '១០. ការទទួលយក Feedback និងការហ្វឹកហាត់កែលម្អ (Sun Tzu: Knowing Thyself)',
      titleEn: 'Radical Self-Awareness: Sun Tzu Wisdom on Continuous Self-Refinement',
      type: LessonType.text,
      orderIndex: 10,
      learningObjectives: '• យល់ដឹងពីទស្សនវិជ្ជាស៊ុនអ៊ូ (Sun Tzu): «ស្គាល់គេ ស្គាល់ខ្លួនឯង ច្បាំងមួយរយដង មិនដែលចាញ់» (知己知彼 百战不殆)។\n'
          '• បំប្លែងពាក្យរិះគន់ (Constructive Criticism) ទៅជាផែនទីបង្ហាញផ្លូវនៃការអភិវឌ្ឍសមត្ថភាព។\n'
          '• អនុវត្តការហ្វឹកហាត់ដោយចេតនា (Deliberate Practice) ដើម្បីពង្រឹងចំណុចខ្សោយរបស់ខ្លួនជាប្រចាំ។',
      shortExplanation: 'ទស្សនវិទូយុទ្ធសាស្ត្រ ស៊ុនអ៊ូ (Sun Tzu) បានបង្រៀនថា ជោគជ័យមិនមែនកើតចេញពីសំណាងនោះទេ ប៉ុន្តែកើតចេញពីការស្គាល់ខ្លួនឯងយ៉ាងច្បាស់លាស់ (知己)។ នៅកន្លែងធ្វើការ មនុស្សដែលរត់គេចពីពាក្យរិះគន់ នឹងនៅទ្រឹងមួយកន្លែងរាប់ឆ្នាំ។ ផ្ទុយទៅវិញ អ្នកដែលមាន EQ ខ្ពស់ តែងតែស្វែងរក Feedback ពីថ្នាក់លើ និងសហការី ដើម្បីកែលម្អចំណុចខ្វះខាត និងបង្វឹកខ្លួនឯងឱ្យក្លាយជាបុគ្គលិកឆ្នើម។',
      workplaceStory: '«លោក សុវណ្ណ ជា Junior Graphic Designer។ រាល់ពេលប្រធានផ្នែកច្នៃប្រឌិត (Creative Director) កែការងាររបស់គាត់ សុវណ្ណតែងតែខឹង និងគិតក្នុងចិត្តថា "ប្រធាននេះមិនចេះសិល្បៈទេ!"។ អស់រយៈពេល ២ ឆ្នាំ គាត់នៅតែជា Junior ដដែល។ '
          'ថ្ងៃមួយ ក្រោយពីអានសៀវភៅយុទ្ធសាស្ត្រស៊ុនអ៊ូ គាត់បានផ្លាស់ប្តូរផ្នត់គំនិតទាំងស្រុង។ ពេលប្រធានកែការងារ គាត់បានយកសៀវភៅមកកត់ត្រា ហើយសួរដោយស្មោះត្រង់ថា៖ "បង! តើត្រង់ចំណុច Typography នេះ បើខ្ញុំប្តូរទៅប្រើ Font ណាទើបត្រូវនឹង Brand Identity ជាង?" '
          'ការបើកចិត្តទទួលយក Feedback នេះ ធ្វើឱ្យស្នាដៃរបស់គាត់រីកចម្រើនលឿនដូចផ្លេកបន្ទោរ។ ត្រឹមតែ ៦ ខែក្រោយមក គាត់ត្រូវបានតម្លើងជា Senior Designer។»',
      practicalExample: '✅ របៀបស្នើសុំ Feedback ប្រកបដោយភាពចាស់ទុំ៖\n'
          '«ជម្រាបសួរបង! ក្នុងគម្រោងកន្លងមកនេះ ខ្ញុំចង់ដឹងថាតើមានចំណុចណាខ្លះដែលខ្ញុំធ្វើបានល្អ ហើយតើមានចំណុចខ្វះខាតណាខ្លះដែលបងចង់ឃើញខ្ញុំកែលម្អក្នុងគម្រោងបន្ទាប់?»',
      practicalExercise: 'កំណត់ចំណុចខ្សោយធំបំផុតមួយរបស់អ្នកក្នុងការងារ (ឧ. ការនិយាយជាសាធារណៈ ឬការប្រើ Excel) ហើយរៀបចំផែនការហ្វឹកហាត់រយៈពេល ៣០ ថ្ងៃ។',
      quizQuestions: [
        QuestionModel(
          id: 'q-eq-10',
          promptKh: 'តាមទស្សនវិជ្ជាស៊ុនអ៊ូ (Sun Tzu) តើឥរិយាបថណាដែលជួយឱ្យបុគ្គលិកឈានទៅរកភាពជោគជ័យយូរអង្វែង?',
          promptEn: 'According to Sun Tzu philosophy, which attitude leads to long-term professional triumph?',
          optionsKh: [
            'A. ជឿជាក់ថាខ្លួនឯងពូកែគ្រប់យ៉ាង ហើយមិនចាំបាច់ស្តាប់យោបល់អ្នកណាទាំងអស់។',
            'B. ស្គាល់ចំណុចខ្លាំង និងចំណុចខ្សោយរបស់ខ្លួនឯងយ៉ាងច្បាស់លាស់ (知己) និងបើកចិត្តកែលម្អតាម Feedback។',
            'C. លាក់បាំងចំណុចខ្សោយរបស់ខ្លួន ហើយបន្ទោសអ្នកដទៃពេលការងារបរាជ័យ។',
          ],
          optionsEn: [
            'A. Believing you know everything and disregarding all advice.',
            'B. Knowing your strengths and weaknesses intimately and constantly refining through feedback.',
            'C. Concealing flaws and shifting blame when projects falter.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ ស៊ុនអ៊ូបង្រៀនថា «ស្គាល់ខ្លួនឯង» គឺជាជំហានដំបូងនៃជ័យជម្នះ។ ការហ៊ានប្រឈមមុខនឹងចំណុចខ្វះខាតរបស់ខ្លួនឯងធ្វើឱ្យយើងកាន់តែរឹងមាំ។',
          explanationEn: 'Explanation: Self-knowledge (知己) and relentless self-refinement are the foundation of invincibility.',
        ),
      ],
      reflection: 'តើអ្នកមានប្រតិកម្មបែបណានៅពេលនរណាម្នាក់រិះគន់ការងាររបស់អ្នក? តើអ្នកខឹងការពារខ្លួន ឬស្តាប់ដើម្បីរៀនសូត្រ?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ទៅជួបប្រធាន ឬរៀមច្បងម្នាក់ ហើយសួរសំណួរថា «តើចំណុចមួយណាដែលបងចង់ឱ្យខ្ញុំកែលម្អបំផុតក្នុងខែនេះ?»។',
    ),
  ];

  // =========================================================================
  // 3. SENIOR EXTRA LESSONS (Lessons 3 to 10)
  // =========================================================================
  static final List<LessonModel> seniorLessons = [
    // Lesson 3: Autonomous Problem Solving (No Supervision Needed)
    LessonModel(
      id: 'lesson-senior-3',
      courseId: 'course-senior-mentorship',
      moduleId: 'mod-1',
      titleKh: '៣. ភាពជាម្ចាស់ការដោះស្រាយបញ្ហាស្មុគស្មាញដោយគ្មានការត្រួតពិនិត្យ (Autonomous Problem Solving)',
      titleEn: 'Autonomous Problem Solving: Delivering Results Without Supervision',
      type: LessonType.text,
      orderIndex: 3,
      learningObjectives: '• យល់ដឹងពីភាពខុសគ្នារវាង Junior (ត្រូវការការណែនាំ) និង Senior (ដោះស្រាយបញ្ហាស្វយ័ត)។\n'
          '• ចេះគ្រប់គ្រងគម្រោងមិនច្បាស់លាស់ (Ambiguity) ដោយបំបែកវាជាផែនការអនុវត្តជាក់ស្តែង។\n'
          '• បង្កើតដំណោះស្រាយដែលរឹងមាំ និងមានចីរភាពយូរអង្វែងសម្រាប់ស្ថាប័ន។',
      shortExplanation: 'ភាពជា Senior មិនត្រូវបានកំណត់ដោយចំនួនឆ្នាំធ្វើការនោះទេ ប៉ុន្តែត្រូវបានកំណត់ដោយសមត្ថភាព «ទទួលការងារមិនច្បាស់លាស់ ហើយប្រគល់លទ្ធផលច្បាស់លាស់ដោយគ្មានការត្រួតពិនិត្យ» (Managing Ambiguity)។ នៅពេលថ្នាក់លើប្រគល់បញ្ហាស្មុគស្មាញមួយ Senior ពិតប្រាកដនឹងមិនរត់ទៅសួរថា "តើខ្ញុំត្រូវធ្វើម៉េចបន្ត?" នោះទេ ប៉ុន្តែពួកគេនឹងត្រឡប់មកវិញជាមួយនឹងផែនការសកម្មភាព និងលទ្ធផលសម្រេច។',
      workplaceStory: '«ក្នុងអំឡុងពេលប្រព័ន្ធទូទាត់ប្រាក់ឌីជីថលរបស់ធនាគារមួយជួបការគាំងស្ទះធ្ងន់ធ្ងរនៅចុងខែ លោក វិបុល ជា Senior Systems Engineer មិនបានរង់ចាំឱ្យប្រធានផ្នែក IT បញ្ជាឡើយ។ គាត់បានដឹកនាំក្រុមការងារវិភាគ Log ទិន្នន័យ ឯកោបញ្ហា (Isolate the fault) បង្កើត Patch សង្គ្រោះបន្ទាន់ និងដំឡើងប្រព័ន្ធ Fail-over ក្នុងរយៈពេលតែ ៤៥ នាទី។ '
          'នៅពេលប្រធានផ្នែកមកដល់ វិបុលបានរៀបចំរួចរាល់ទាំងប្រព័ន្ធដំណើរការឡើងវិញ និងរបាយការណ៍ Root-Cause Analysis។ សមត្ថភាពម្ចាស់ការកម្រិតខ្ពស់នេះបានជួយសង្គ្រោះក្រុមហ៊ុនពីការខាតបង់រាប់សែនដុល្លារ។»',
      practicalExample: '✅ របៀបធ្វើការងារបែប Senior Autonomous Mindset៖\n'
          '១. បកស្រាយគោលបំណងធុរកិច្ច (Business Intent) ពីសំណើរមិនច្បាស់លាស់របស់ថ្នាក់លើ។\n'
          '២. ធ្វើតេស្តសាកល្បងដំណោះស្រាយក្នុងបរិយាកាសសុវត្ថិភាព (Sandbox) មុននឹងអនុវត្តលើផលិតកម្ម។\n'
          '៣. ផ្តល់របាយការណ៍សង្ខេបអំពីលទ្ធផល និងអនុសាសន៍ការពារហានិភ័យទៅថ្ងៃអនាគត។',
      practicalExercise: 'ជ្រើសរើសបញ្ហាប្រព័ន្ធការងារចាស់មួយដែលគ្មានអ្នកណាដោះស្រាយក្នុងផ្នែករបស់អ្នក ហើយរៀបចំដំណោះស្រាយស្វ័យប្រវត្តិដើម្បីដោះស្រាយវា។',
      quizQuestions: [
        QuestionModel(
          id: 'q-senior-3',
          promptKh: 'តើចរិតលក្ខណៈស្នូលដែលញែកបុគ្គលិក Senior ចេញពី Junior គឺជាអ្វី?',
          promptEn: 'What is the core trait that distinguishes a true Senior from a Junior?',
          optionsKh: [
            'A. មានអាយុច្រើនជាង និងទាមទារប្រាក់ខែខ្ពស់ដោយមិនបាច់ធ្វើការងារលម្អិត។',
            'B. សមត្ថភាពម្ចាស់ការក្នុងការដោះស្រាយបញ្ហាស្មុគស្មាញដោយខ្លួនឯង និងប្រគល់លទ្ធផលដោយមិនចាំបាច់មានអ្នកតាមដាន។',
            'C. ចូលចិត្តស្តីបន្ទោស Junior នៅពេលមានកំហុសកើតឡើង។',
          ],
          optionsEn: [
            'A. Being older and demanding higher pay without hands-on work.',
            'B. Ability to autonomously tackle ambiguous, complex problems and deliver results without supervision.',
            'C. Frequently scolding junior teammates.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ បុគ្គលិក Senior ពិតប្រាកដគឺជាអ្នកដោះស្រាយបញ្ហាដោយស្វ័យភាព (Autonomous Problem Solver) ដែលថ្នាក់លើអាចទុកចិត្តបាន ១០០%។',
          explanationEn: 'Explanation: True seniority is defined by autonomous problem solving and delivering clarity out of ambiguity.',
        ),
      ],
      reflection: 'តើអ្នកនៅតែរង់ចាំការណែនាំពីប្រធានគ្រប់ជំហាន ឬអ្នកជាមនុស្សដែលបង្កើតដំណោះស្រាយដោយខ្លួនឯង?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ទទួលយកកិច្ចការស្មុគស្មាញមួយដែលគ្មានអ្នកណាចង់ធ្វើ ហើយដោះស្រាយវាឱ្យចប់សព្វគ្រប់ដោយម្ចាស់ការ។',
    ),

    // Lesson 4: Mentoring & Growing Junior Talent (Huawei Mentor System: 传帮带)
    LessonModel(
      id: 'lesson-senior-4',
      courseId: 'course-senior-mentorship',
      moduleId: 'mod-1',
      titleKh: '៤. សិល្បៈនៃការបង្វឹក និងផ្ទេរចំណេះដឹង (Huawei Mentorship: 传帮带)',
      titleEn: 'Mentorship Excellence: The Huawei "Pass, Help, Guide" Talent Development Model',
      type: LessonType.text,
      orderIndex: 4,
      learningObjectives: '• យល់ដឹងពីប្រព័ន្ធបង្វឹកដ៏ល្បីរបស់ក្រុមហ៊ុន Huawei «传帮带» (Pass Knowledge, Help Execute, Guide Growth)។\n'
          '• បង្កើតវិធីសាស្ត្រផ្ទេរជំនាញបច្ចេកទេសដោយមិនកំណាញ់ចំណេះដឹង (Knowledge Sharing Culture)។\n'
          '• រៀនផ្តល់ Feedback ស្ថាបនាដល់ Junior ដោយមិនធ្វើឱ្យពួកគេបាក់ទឹកចិត្ត។',
      shortExplanation: 'នៅក្រុមហ៊ុន Huawei រាល់បុគ្គលិកថ្មីទាំងអស់សុទ្ធតែត្រូវបានផ្គូផ្គងជាមួយ «គ្រូបង្វឹក» (Senior Mentor/师傅)។ ទស្សនវិជ្ជា «传帮带» (ឈ័ន-ប៉ាង-តាយ) បង្រៀនថា៖ ការរីកចម្រើនរបស់ Senior ត្រូវបានវាស់វែងលើ «ចំនួនមនុស្សដែលអ្នកបានបណ្តុះបណ្តាលឱ្យពូកែដូចអ្នក ឬលើសអ្នក»។ បុគ្គលិក Senior ដែលកំណាញ់ចំណេះដឹង ព្រោះខ្លាចគេដណ្តើមតំណែង គឺជាមនុស្សដែលមានផ្នត់គំនិតចង្អៀតចង្អល់ និងមិនអាចឡើងទៅកាន់តំណែងគ្រប់គ្រងបានឡើយ។',
      workplaceStory: '«លោក សម្បត្តិ ជា Senior Accountant នៅក្រុមហ៊ុនផលិតកម្មធំមួយ។ កន្លងមក គាត់មិនដែលចែករំលែករបៀបធ្វើរបាយការណ៍បិទបញ្ជីគណនេយ្យពន្ធដារដល់អ្នកណាឡើយ។ ជាលទ្ធផល រាល់ពេលដល់ចុងខែ គាត់ត្រូវធ្វើការថែមម៉ោងរហូតដល់ម៉ោង ១១ យប់តែម្នាក់ឯង ហើយពេលគាត់ឈឺ គ្មានអ្នកណាអាចជំនួសបានឡើយ។ '
          'ក្រោយពីយល់ដឹងពីក្បួន Mentorship គាត់បានចំណាយពេលបង្វឹក Junior ២ នាក់តាមដំណាក់កាល៖ ១. គាត់ធ្វើឱ្យមើល ២. ឱ្យ Junior ធ្វើដោយគាត់ឈរជួយ ៣. ឱ្យ Junior ធ្វើដោយឯករាជ្យ។ ត្រឹមតែ ២ ខែ Junior ទាំងពីរអាចបិទបញ្ជីបានយ៉ាងស្ទាត់ជំនាញ។ សម្បត្តិបានរួចដៃពីការងារទម្លាប់ប្រចាំថ្ងៃ ហើយត្រូវបានថ្នាក់លើតម្លើងជា Accounting Manager ព្រោះគាត់បានបង្ហាញសមត្ថភាពដឹកនាំ និងកសាងក្រុម។»',
      practicalExample: '✅ ជំហាន ៣ នៃការបង្វឹកបែប Huawei 传帮带 (The 3-Step Mentorship)៖\n'
          '១. [传 - Pass]៖ ពន្យល់ពីគោលការណ៍ និងបង្ហាញគំរូជាក់ស្តែង ("មើលខ្ញុំធ្វើសិន")\n'
          '២. [帮 - Help]៖ ឱ្យសិស្សអនុវត្តផ្ទាល់ ដោយយើងឈរនៅក្បែរចាំជួយណែនាំ ("ឯងធ្វើម្តង ខ្ញុំចាំជួយ")\n'
          '៣. [带 - Guide]៖ បណ្តោយឱ្យសិស្សធ្វើដោយឯករាជ្យ និងត្រួតពិនិត្យតែលទ្ធផលចុងក្រោយ ("ឯងធ្វើដោយខ្លួនឯង ខ្ញុំជាខ្នងបង្អែក")',
      practicalExercise: 'ជ្រើសរើសជំនាញបច្ចេកទេសមួយរបស់អ្នក ហើយរៀបចំការបង្រៀនរយៈពេល ៣០ នាទីដល់សមាជិក Junior ម្នាក់ក្នុងក្រុមនៅសប្តាហ៍នេះ។',
      quizQuestions: [
        QuestionModel(
          id: 'q-senior-4',
          promptKh: 'តាមទស្សនវិជ្ជាបណ្តុះបណ្តាលបុគ្គលិក Huawei «传帮带» តើអ្វីជារង្វាស់នៃភាពជោគជ័យពិតប្រាកដរបស់ Senior Specialist?',
          promptEn: 'In Huawei mentorship philosophy (传帮带), what is the true metric of success for a senior specialist?',
          optionsKh: [
            'A. រក្សាការសម្ងាត់បច្ចេកទេសតែម្នាក់ឯង ដើម្បីកុំឱ្យគេដណ្តើមតំណែង។',
            'B. សមត្ថភាពផ្ទេរចំណេះដឹង និងបណ្តុះបណ្តាលសមាជិកជំនាន់ក្រោយឱ្យរីកចម្រើន និងអាចធ្វើការជំនួសខ្លួនបាន។',
            'C. ធ្វើការថែមម៉ោងរាល់យប់ដើម្បីបង្ហាញថាខ្លួនឯងរវល់ជាងគេ។',
          ],
          optionsEn: [
            'A. Guarding technical secrets to protect job security.',
            'B. Ability to transfer skills and develop junior talent to work autonomously and scale team output.',
            'C. Working overtime every night to appear the busiest.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ Senior ឆ្នើមគឺជារៀមច្បងដែលកសាងអ្នកបន្តវេន។ ការជួយអ្នកដទៃឱ្យពូកែ ជួយពង្រីកឥទ្ធិពល និងបើកផ្លូវឱ្យខ្លួនឯងឡើងទៅកាន់តំណែងដឹកនាំ។',
          explanationEn: 'Explanation: Elevating others expands organizational leverage and qualifies the senior for executive leadership.',
        ),
      ],
      reflection: 'តើអ្នកធ្លាប់មានការស្ទាក់ស្ទើរក្នុងការបង្រៀនអ្នកដទៃព្រោះខ្លាចគេពូកែជាងខ្លួនឯងដែរឬទេ? តើផ្នត់គំនិតនោះរារាំងការឡើងតំណែងរបស់អ្នកយ៉ាងដូចម្តេច?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ កំណត់ Junior ម្នាក់ដែលអ្នកត្រូវធ្វើជា Mentor ហើយរៀបចំការសន្ទនាបង្វឹក ១-on-១ លើកដំបូង។',
    ),

    // Lesson 5: Technical Architecture & System Thinking
    LessonModel(
      id: 'lesson-senior-5',
      courseId: 'course-senior-mentorship',
      moduleId: 'mod-1',
      titleKh: '៥. ការគិតជាប្រព័ន្ធ និងស្ថាបត្យកម្មការងារ (System Thinking & Architecture)',
      titleEn: 'System Architecture & Scalability: Designing Long-Term Robust Solutions',
      type: LessonType.text,
      orderIndex: 5,
      learningObjectives: '• យល់ដឹងពីការគិតជាប្រព័ន្ធ (System Thinking)៖ មើលឃើញព្រៃទាំងមូល មិនមែនមើលឃើញតែដើមឈើមួយដើម។\n'
          '• រចនាដំណោះស្រាយការងារដែលអាចពង្រីកទំហំបាន (Scalability) និងងាយស្រួលថែទាំ (Maintainability)។\n'
          '• កាត់បន្ថយបំណុលបច្ចេកទេស (Technical Debt) និងថ្លៃដើមប្រតិបត្តិការរយៈពេលវែង។',
      shortExplanation: 'Junior ផ្តោតលើការធ្វើឱ្យការងារ «ដើរ» (Make it work) ប៉ុន្តែ Senior ផ្តោតលើការធ្វើឱ្យប្រព័ន្ធ «រឹងមាំ ពង្រីកបាន និងមានសុវត្ថិភាព» (Make it scalable, robust, and maintainable)។ ការគិតជាប្រព័ន្ធតម្រូវឱ្យអ្នកវិភាគថាតើការសម្រេចចិត្តបច្ចេកទេសនៅថ្ងៃនេះ នឹងជះឥទ្ធិពលបែបណាចំពោះស្ថាប័នក្នុងរយៈពេល ៦ ខែ ឬ ៣ ឆ្នាំខាងមុខ។',
      workplaceStory: '«ក្នុងគម្រោងបង្កើតប្រព័ន្ធគ្រប់គ្រងឃ្លាំងទំនិញថ្មី Junior Developer ចង់សរសេរ Code កាត់ៗដើម្បីឱ្យរួចទាន់ Deadline ២ សប្តាហ៍។ ប៉ុន្តែ លោក សុខា ជា Senior Architect បានជំទាស់។ គាត់បានពន្យល់ថា ប្រសិនបើធ្វើបែបនេះ ពេលទំនិញកើនឡើងដល់ ១០០,០០០ មុខ ប្រព័ន្ធនឹងគាំង ហើយត្រូវរុះរើធ្វើឡើងវិញទាំងអស់ដែលខាតពេល ៦ ខែ។ '
          'គាត់បានរចនាស្ថាបត្យកម្មបែប Modular Architecture ដែលអនុញ្ញាតឱ្យប្រព័ន្ធពង្រីកបានដោយរលូន។ មួយឆ្នាំក្រោយមក នៅពេលក្រុមហ៊ុនពង្រីកសាខាទូទាំង ២៥ ខេត្តក្រុង ប្រព័ន្ធនៅតែដំណើរការយ៉ាងលឿន និងមានស្ថេរភាពខ្ពស់។»',
      practicalExample: '✅ បញ្ជីត្រួតពិនិត្យស្ថាបត្យកម្មបែប Senior (System Design Checklist)៖\n'
          '១. [Scalability]៖ តើប្រព័ន្ធនេះអាចទ្រទ្រង់ទិន្នន័យកើនឡើង ១០ ដងបានដែរឬទេ?\n'
          '២. [Maintainability]៖ តើសមាជិកថ្មីអាចចូលមកអាន និងកែប្រែបានងាយស្រួលដែរឬទេ?\n'
          '៣. [Security & Compliance]៖ តើមានប្រព័ន្ធការពារការលួចទិន្នន័យ និងការបម្រុងទុក (Backup) ហើយឬនៅ?',
      practicalExercise: 'ពិនិត្យឡើងវិញនូវប្រព័ន្ធ ឬដំណើរការការងារបច្ចុប្បន្នក្នុងផ្នែករបស់អ្នក ហើយកំណត់ចំណុចដែលអាចក្លាយជា Technical Debt នាពេលអនាគត។',
      quizQuestions: [
        QuestionModel(
          id: 'q-senior-5',
          promptKh: 'តើអ្វីជាភាពខុសគ្នាសំខាន់បំផុតរវាងដំណោះស្រាយដែលបង្កើតដោយ Junior និង Senior?',
          promptEn: 'What is the most crucial difference between solutions built by Juniors vs. Seniors?',
          optionsKh: [
            'A. Junior ប្រើកុំព្យូទ័រយឺតជាង Senior។',
            'B. Junior ផ្តោតលើការធ្វើឱ្យការងារដើរបានលឿនជាបណ្តោះអាសន្ន រីឯ Senior គិតគូរពីស្ថេរភាព រយៈពេលវែង និងការពង្រីកទំហំ (Scalability)។',
            'C. Senior មិនដែលសរសេរឯកសារណែនាំការងារឡើយ។',
          ],
          optionsEn: [
            'A. Juniors use slower computers than Seniors.',
            'B. Juniors focus on immediate temporary fixes, while Seniors architect for long-term scalability and resilience.',
            'C. Seniors never write documentation.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ Senior គិតគូរពីប្រព័ន្ធទាំងមូល (System Thinking) និងការពារកុំឱ្យកើតមានបំណុលបច្ចេកទេស (Technical Debt) នាពេលអនាគត។',
          explanationEn: 'Explanation: Seniors architect for long-term maintainability, edge cases, and enterprise scalability.',
        ),
      ],
      reflection: 'តើការងារដែលអ្នកកំពុងកសាងនៅថ្ងៃនេះ អាចដំណើរការបានយ៉ាងរលូនដែរឬទេ ប្រសិនបើទិន្នន័យ ឬចំនួនអតិថិជនកើនឡើង ១០ ដង?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ សរសេរឯកសារណែនាំស្ថាបត្យកម្ម (Architecture Document) ១ ទំព័រសម្រាប់គម្រោងបច្ចុប្បន្នរបស់អ្នក។',
    ),

    // Lesson 6: Cross-Disciplinary Translation (Bridging Tech & Business)
    LessonModel(
      id: 'lesson-senior-6',
      courseId: 'course-senior-mentorship',
      moduleId: 'mod-1',
      titleKh: '៦. ការបកប្រែបច្ចេកទេសទៅជាភាសាធុរកិច្ច (Translating Tech to Business Value)',
      titleEn: 'Business Acumen for Specialists: Translating Technical Jargon to ROI',
      type: LessonType.text,
      orderIndex: 6,
      learningObjectives: '• ចេះបកប្រែពាក្យបច្ចេកទេសស្មុគស្មាញ (Technical Jargon) ទៅជាភាសាផលចំណេញធុរកិច្ច (ROI, Revenue, Cost)។\n'
          '• បង្ហាញតម្លៃនៃការងារបច្ចេកទេសទៅកាន់ថ្នាក់ដឹកនាំជាន់ខ្ពស់ និងផ្នែកលក់។\n'
          '• ជៀសវាងការជជែកដេញដោលបច្ចេកទេសសុទ្ធសាធដែលមិនទាក់ទងនឹងគោលដៅយុទ្ធសាស្ត្រក្រុមហ៊ុន។',
      shortExplanation: 'មូលហេតុចម្បងដែលគម្រោងបច្ចេកទេសល្អៗជាច្រើនមិនត្រូវបានអនុម័តថវិកា គឺដោយសារតែអ្នកជំនាញនិយាយជាភាសាកូដ ឬភាសាវិស្វកម្មដែលថ្នាក់ដឹកនាំមិនយល់។ Senior ដែលមានតម្លៃខ្ពស់បំផុត គឺជាអ្នកដែលអាចធ្វើជា «អ្នកបកប្រែ» — បង្ហាញឱ្យឃើញច្បាស់ថា តើការកែលម្អប្រព័ន្ធនេះនឹងជួយសន្សំប្រាក់បានប៉ុន្មាន ឬជួយរកចំណូលបានប៉ុន្មានដល់ក្រុមហ៊ុន។',
      workplaceStory: '«លោក សារ៉េត ជា Senior Data Analyst ចង់ស្នើសុំថវិកា \$15,000 ទិញ Tool វិភាគទិន្នន័យថ្មី។ លើកដំបូងគាត់បានពន្យល់ CEO ថា៖ "Tool នេះប្រើក្បួនដោះស្រាយ Machine Learning Random Forest និងមាន Latency ត្រឹម 20ms!" CEO បានបដិសេធភ្លាមៗព្រោះមិនយល់។ '
          'លើកទីពីរ សារ៉េតបានប្តូររបៀបនិយាយ៖ "ប្រសិនបើយើងប្រើប្រព័ន្ធនេះ វានឹងជួយកាត់បន្ថយអត្រាអតិថិជនឈប់ប្រើប្រាស់ (Churn Rate) ចំនួន ៥% ដែលជួយរក្សាចំណូលប្រចាំឆ្នាំបាន \$80,000 ស្មើនឹងផលចំណេញលើការវិនិយោគ (ROI) ៥០០% ក្នុងឆ្នាំដំបូង"។ CEO បានចុះហត្ថលេខាយល់ព្រមភ្លាមៗក្នុងរយៈពេល ៥ នាទី។»',
      practicalExample: '✅ រូបមន្តបកប្រែបច្ចេកទេសទៅជាធុរកិច្ច (The Tech-to-ROI Translation Formula)៖\n'
          '• ជំនួសឱ្យការនិយាយ៖ "យើងត្រូវ Refactor Code ព្រោះវាមាន Code Smells ច្រើន!"\n'
          '• ចូរនិយាយថា៖ "ការកែលម្អរចនាសម្ព័ន្ធកូដនេះ នឹងជួយកាត់បន្ថយពេលចេញមុខងារថ្មីពី ៤ សប្តាហ៍មកត្រឹម ១ សប្តាហ៍ ដែលជួយឱ្យយើងវាយលុកទីផ្សារបានលឿនជាងគូប្រជែង ៣ សប្តាហ៍។"',
      practicalExercise: 'ជ្រើសរើសសំណើបច្ចេកទេសមួយរបស់អ្នក ហើយសរសេរវាឡើងវិញដោយប្រើតួលេខហិរញ្ញវត្ថុ ឬផលចំណេញធុរកិច្ចសុទ្ធសាធ។',
      quizQuestions: [
        QuestionModel(
          id: 'q-senior-6',
          promptKh: 'នៅពេលអ្នកជំនាញបច្ចេកទេស (Senior Specialist) ចង់ស្នើសុំថវិកាពី CEO តើរបៀបនិយាយណាដែលជោគជ័យបំផុត?',
          promptEn: 'When a senior specialist pitches for budget to the CEO, which framing is most persuasive?',
          optionsKh: [
            'A. រៀបរាប់ពីកូដ និងពាក្យបច្ចេកទេសស្មុគស្មាញឱ្យបានច្រើនដើម្បីបង្ហាញពីភាពឆ្លាតវៃ។',
            'B. បង្ហាញពីផលប៉ះពាល់ធុរកិច្ច (Business Impact) ដូចជា ការបង្កើនចំណូល ការសន្សំថ្លៃដើម ឬការកាត់បន្ថយហានិភ័យ។',
            'C. ប្រាប់ CEO ថាបើមិនយល់ព្រមទេ គាត់នឹងលាលែងពីការងារ។',
          ],
          optionsEn: [
            'A. Overload with complex technical jargon to sound intellectual.',
            'B. Quantify the business impact: revenue growth, cost reduction, customer retention, or risk mitigation.',
            'C. Threaten to resign if not approved.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ ថ្នាក់ដឹកនាំជាន់ខ្ពស់សម្រេចចិត្តលើផលចំណេញធុរកិច្ច (Business Value & ROI)។ ការចេះបកប្រែបច្ចេកទេសជាភាសាធុរកិច្ចគឺជាជំនាញស្នូលរបស់ Senior។',
          explanationEn: 'Explanation: Senior leaders care about ROI, margins, and strategic advantage over technical implementation details.',
        ),
      ],
      reflection: 'តើអ្នកធ្លាប់មានអារម្មណ៍ខកចិត្តដែលថ្នាក់លើមិនយល់ពីតម្លៃនៃការងារបច្ចេកទេសរបស់អ្នកដែរឬទេ? តើអ្នកបានព្យាយាមនិយាយជាភាសាហិរញ្ញវត្ថុជាមួយពួកគេហើយឬនៅ?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ បំប្លែងរបាយការណ៍បច្ចេកទេសបន្ទាប់របស់អ្នកឱ្យមានផ្នែក «ផលប៉ះពាល់ធុរកិច្ច» (Business Impact Summary) នៅទំព័រមុខបង្អស់។',
    ),

    // Lesson 7: Root-Cause Post-Mortems (Blameless Culture)
    LessonModel(
      id: 'lesson-senior-7',
      courseId: 'course-senior-mentorship',
      moduleId: 'mod-1',
      titleKh: '៧. ការស៊ើបអង្កេតឧប្បត្តិហេតុដោយគ្មានការស្តីបន្ទោស (Blameless Post-Mortem)',
      titleEn: 'Blameless Post-Mortem: Transforming Failures into Institutional Wisdom',
      type: LessonType.text,
      orderIndex: 7,
      learningObjectives: '• យល់ដឹងពីវប្បធម៌ Blameless Post-Mortem របស់ក្រុមហ៊ុន Google និង Etsy។\n'
          '• បង្កើតរបាយការណ៍វិភាគឧប្បត្តិហេតុ (Incident Report) ដែលផ្តោតលើភាពខ្វះខាតនៃប្រព័ន្ធ មិនមែនបុគ្គល។\n'
          '• ដឹកនាំកិច្ចប្រជុំ Post-Mortem ប្រកបដោយភាពស្ថាបនា និងបង្កើតទំនុកចិត្តផ្លូវចិត្ត (Psychological Safety)។',
      shortExplanation: 'នៅពេលប្រព័ន្ធការងារជួបការបរាជ័យធំ ក្រុមហ៊ុនដែលទន់ខ្សោយនឹងប្រញាប់ស្វែងរក «អ្នកណាជាអ្នកខុស» ដើម្បីស្តីបន្ទោស ឬបណ្តេញចេញ។ ផ្ទុយទៅវិញ ក្រុមហ៊ុនកម្រិតពិភពលោកយល់ថា៖ «កំហុសរបស់មនុស្សកើតចេញពីភាពទន់ខ្សោយនៃប្រព័ន្ធ»។ Senior ដឹកនាំកិច្ចប្រជុំវិភាគឧប្បត្តិហេតុដោយគ្មានការស្តីបន្ទោស (Blameless Post-Mortem) ដើម្បីកែប្រែប្រព័ន្ធការពារកុំឱ្យនរណាម្នាក់អាចបង្កើតកំហុសដដែលនោះបានទៀតឡើយ។',
      workplaceStory: '«នៅក្រុមហ៊ុនទូរគមនាគមន៍មួយ វិស្វករថ្មីម្នាក់បានចុចច្រឡំលុបទិន្នន័យ Routing Table ធ្វើឱ្យបណ្តាញអ៊ីនធឺណិតដាច់ទូទាំងប្រទេសអស់រយៈពេល ២ ម៉ោង។ ជំនួសឱ្យការបណ្តេញវិស្វករនោះចេញ លោក រិទ្ធី ជា Principal Engineer បានដឹកនាំការប្រជុំ Blameless Post-Mortem។ \n'
          'គាត់បានចោទសួរសំណួរថា៖ "ហេតុអ្វីបានជាប្រព័ន្ធរបស់យើងអនុញ្ញាតឱ្យវិស្វករម្នាក់ចុចពាក្យ Delete ដោយគ្មានការផ្ទៀងផ្ទាត់ពីមនុស្សទីពីរ? ហេតុអ្វីគ្មានប្រព័ន្ធ Backup ស្វ័យប្រវត្ត?" ក្រុមការងារបានបន្ថែមប្រព័ន្ធ Two-Person Approval និង Automated Rollback។ ការធ្វើបែបនេះបានកសាងទំនុកចិត្តយ៉ាងខ្លាំងក្នុងចំណោមវិស្វករ ហើយបណ្តាញមិនដែលដាច់ម្តងណាទៀតឡើយ។»',
      practicalExample: '✅ គ្រោងការណ៍របាយការណ៍ Blameless Post-Mortem៖\n'
          '១. [Incident Summary]៖ តើមានអ្វីកើតឡើង? ដាច់ប្រព័ន្ធប៉ុន្មាននាទី? ប៉ះពាល់អ្នកប្រើប្រាស់ប៉ុន្មាននាក់?\n'
          '②. [Timeline]៖ កាលប្បវត្តិនៃព្រឹត្តិការណ៍ចាប់ពីពេលកើតហេតុ រហូតដល់ពេលដោះស្រាយរួច។\n'
          '៣. [Root Causes]៖ មូលហេតុស្នូលក្នុងប្រព័ន្ធដែលបង្កឱ្យមានឧប្បត្តិហេតុ។\n'
          '៤. [Action Items]៖ បញ្ជីកិច្ចការបង្ការការពារ (Preventative Actions) អមជាមួយអ្នកទទួលខុសត្រូវ។',
      practicalExercise: 'ជ្រើសរើសឧប្បត្តិហេតុ ឬកំហុសការងារថ្មីៗមួយក្នុងក្រុមរបស់អ្នក ហើយសរសេរសេចក្តីព្រាងរបាយការណ៍ Post-Mortem ដោយគ្មានការស្តីបន្ទោសបុគ្គល។',
      quizQuestions: [
        QuestionModel(
          id: 'q-senior-7',
          promptKh: 'តើអ្វីជាគោលការណ៍គ្រឹះនៃកិច្ចប្រជុំវិភាគកំហុសបែប Blameless Post-Mortem?',
          promptEn: 'What is the fundamental principle of a Blameless Post-Mortem?',
          optionsKh: [
            'A. រកឱ្យឃើញអ្នកចុចខុសដើម្បីដកតំណែងជាសាធារណៈ។',
            'B. សន្មតថាមនុស្សគ្រប់គ្នាសុទ្ធតែមានចេតនាល្អ ហើយកំហុសកើតឡើងដោយសារប្រព័ន្ធ ឬដំណើរការការងារមានចន្លោះប្រហោង។',
            'C. លុបភស្តុតាងចោលដើម្បីកុំឱ្យអតិថិជនដឹងពីរឿងអាស្រូវ។',
          ],
          optionsEn: [
            'A. Identify who pushed the wrong button and demote them publicly.',
            'B. Assume good intentions and focus on uncovering systemic vulnerabilities to strengthen defenses.',
            'C. Delete incident logs to hide mistakes from customers.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ Blameless Post-Mortem ជឿជាក់ថាមនុស្សគ្រប់គ្នាមានចេតនាល្អ។ ប្រសិនបើប្រព័ន្ធអនុញ្ញាតឱ្យមនុស្សម្នាក់បង្កើតកំហុសធ្ងន់ធ្ងរបាន នោះប្រព័ន្ធគឺជាអ្នកដែលមានបញ្ហា។',
          explanationEn: 'Explanation: Human error is a symptom of systemic failure; blameless post-mortems fortify processes.',
        ),
      ],
      reflection: 'តើក្រុមការងាររបស់អ្នកមានវប្បធម៌ស្តីបន្ទោស ឬវប្បធម៌រៀនសូត្រពីកំហុស? តើអ្នកអាចជួយផ្លាស់ប្តូរវាដោយរបៀបណា?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ពេលមានកំហុសកើតឡើង សូមឈប់សួរថា «អ្នកណាធ្វើ?» ហើយប្តូរមកសួរថា «តើប្រព័ន្ធរបស់យើងខ្វះអ្វីបានជាធ្វើឱ្យមានកំហុសនេះ?»។',
    ),

    // Lesson 8: Code & Quality Standards (Enforcing Best Practices)
    LessonModel(
      id: 'lesson-senior-8',
      courseId: 'course-senior-mentorship',
      moduleId: 'mod-1',
      titleKh: '៨. ការបង្កើតស្តង់ដារគុណភាព និងការពិនិត្យការងារ (Code Review & Quality Gatekeeping)',
      titleEn: 'Quality Gatekeeping & Constructive Peer Review Mastery',
      type: LessonType.text,
      orderIndex: 8,
      learningObjectives: '• ចេះបង្កើត និងអនុវត្តស្តង់ដារគុណភាពការងារ (Quality Standards & SOPs) សម្រាប់ក្រុមទាំងមូល។\n'
          '• អនុវត្តការពិនិត្យការងារ (Peer Review / Code Review) ប្រកបដោយភាពម៉ត់ចត់ និងការលើកទឹកចិត្ត។\n'
          '• កសាងប្រព័ន្ធស្វ័យប្រវត្តិកម្ម (Linters, CI/CD, Automated Tests) ដើម្បីការពារគុណភាពស្ថាប័ន។',
      shortExplanation: 'Senior គឺជាអ្នកយាមទ្វារនៃគុណភាព (Quality Gatekeeper)។ ការពិនិត្យការងារ (Review) មិនមែនជាការចាប់កំហុសតូចតាចដើម្បីបង្ហាញអំណាចនោះទេ ប៉ុន្តែជាឱកាសបណ្តុះបណ្តាល និងជាការការពារកេរ្តិ៍ឈ្មោះរបស់ស្ថាប័ន។ Senior ឆ្នើមតែងតែសរសើរចំណុចល្អជាសាធារណៈ និងផ្តល់អនុសាសន៍កែលម្អជាក់លាក់ជាមួយការពន្យល់ពីមូលហេតុ (The "Why" behind the rule)។',
      workplaceStory: '«កញ្ញា មុនីកា ជា Senior Graphic & Brand Specialist។ រាល់ពេល Junior ប្រគល់ស្នាដៃរចនា នាងមិនគ្រាន់តែនិយាយថា "មិនស្អាត ទៅកែឡើងវិញ!" នោះទេ។ នាងបានបង្កើត Brand Guidelines ច្បាស់លាស់មួយក្បាល និងរៀបចំតារាង Review Checklist។ \n'
          'ពេលពិនិត្យការងារ នាងបានពន្យល់ថា៖ "ចំណុចដាក់ពណ៌ផ្ទៃខាងក្រោយនេះស្អាតណាស់! ប៉ុន្តែត្រង់ Margin ខាងស្តាំនេះខ្វះ 5px ធៀបនឹង Brand Standard។ ប្អូនជួយកែសម្រួលដើម្បីឱ្យមានតុល្យភាពភ្នែក"។ Junior មិនត្រឹមតែមិនអន់ចិត្តទេ ថែមទាំងរៀនបានច្រើនពីនាង និងខិតខំកែលម្អការងារទ្វេដង។»',
      practicalExample: '✅ របៀបផ្តល់ Review Feedback ប្រកបដោយវិជ្ជាជីវៈ (The Praise-Explain-Suggest Model)៖\n'
          '១. [កោតសរសើរ]៖ "Code/ការងារត្រង់ផ្នែកនេះរៀបចំបានស្អាត និងមានរបៀបណាស់!"\n'
          '២. [ពន្យល់ពីហានិភ័យ]៖ "ប៉ុន្តែត្រង់ចំណុច X នេះ បើសិនជាមានទិន្នន័យច្រើន វានឹងស៊ី Memory ខ្ពស់..."\n'
          '៣. [ផ្តល់អនុសាសន៍]៖ "តើប្អូនគិតយ៉ាងណាដែរបើយើងប្តូរមកប្រើវិធីសាស្ត្រ Y វិញ? នេះជា Link ឯកសារយោង..."',
      practicalExercise: 'បង្កើត Quality Checklist ខ្លីមួយ (ប្រហែល ៥ ទៅ ៧ ចំណុច) សម្រាប់ត្រួតពិនិត្យគុណភាពការងារមុននឹងបញ្ជូនទៅកាន់អតិថិជន ឬថ្នាក់លើ។',
      quizQuestions: [
        QuestionModel(
          id: 'q-senior-8',
          promptKh: 'តើគោលដៅចម្បងនៃការពិនិត្យការងារ (Peer Review / Code Review) ដោយ Senior គឺជាអ្វី?',
          promptEn: 'What is the primary goal of peer review conducted by a Senior specialist?',
          optionsKh: [
            'A. បង្ហាញថាខ្លួនឯងពូកែជាង និងបំបាក់មុខសមាជិកដទៃ។',
            'B. ធានាស្តង់ដារគុណភាព ការពារកំហុសមិនឱ្យធ្លាយទៅក្រៅ និងជាឱកាសផ្ទេរចំណេះដឹងដល់ក្រុម។',
            'C. ពន្យារពេលការងារឱ្យយឺតយ៉ាវដើម្បីកុំឱ្យអតិថិជនទារការងារថ្មី។',
          ],
          optionsEn: [
            'A. Show off superiority and demoralize peers.',
            'B. Uphold quality standards, catch edge-case bugs early, and mentor team members through feedback.',
            'C. Artificially delay projects.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ Review គឺជាឧបករណ៍នៃការធានាគុណភាព (Quality Assurance) និងការបង្វឹកបង្រៀន (Mentorship) មិនមែនជាការចាប់កំហុសឡើយ។',
          explanationEn: 'Explanation: Code and work reviews safeguard production quality while elevating peer capabilities.',
        ),
      ],
      reflection: 'តើការ Review របស់អ្នកកន្លងមកបានជួយឱ្យសហការីរីកចម្រើន ឬធ្វើឱ្យពួកគេមានអារម្មណ៍ភ័យខ្លាច?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ពិនិត្យការងារសហការីម្នាក់ដោយប្រើរូបមន្ត Praise-Explain-Suggest និងពន្យល់ពីមូលហេតុនៃការកែប្រែឱ្យបានច្បាស់លាស់។',
    ),

    // Lesson 9: Technical Roadmapping & Capacity Planning
    LessonModel(
      id: 'lesson-senior-9',
      courseId: 'course-senior-mentorship',
      moduleId: 'mod-1',
      titleKh: '៩. ការរៀបចំផែនទីបង្ហាញផ្លូវ និងការប៉ាន់ប្រមាណធនធាន (Roadmapping & Capacity Planning)',
      titleEn: 'Technical Roadmapping & Resource Capacity Planning for Specialists',
      type: LessonType.text,
      orderIndex: 9,
      learningObjectives: '• ចេះរៀបចំផែនទីបង្ហាញផ្លូវបច្ចេកទេស (Technical Roadmap) រយៈពេល ៦ ដល់ ១២ ខែ។\n'
          '• ប៉ាន់ប្រមាណពេលវេលា និងកម្លាំងពលកម្ម (Effort & Capacity Estimation) ឱ្យបានត្រឹមត្រូវជៀសវាងការសន្យាហួសការពិត។\n'
          '• តម្រឹមផែនការបច្ចេកទេសឱ្យស្របគ្នាជាមួយគោលដៅលូតលាស់នៃអាជីវកម្ម (Business Growth Alignment)។',
      shortExplanation: 'កំហុសធំបំផុតរបស់អ្នកជំនាញគឺ ការសន្យា Deadline តាមអារម្មណ៍ ឬការយល់ព្រមគ្រប់រឿងដោយមិនបានគណនាកម្លាំងជាក់ស្តែង (Over-promising, under-delivering)។ Senior ដែលមានវិជ្ជាជីវៈខ្ពស់ចេះប្រើប្រាស់ទិន្នន័យអតីតកាលដើម្បីប៉ាន់ប្រមាណទំហំការងារ (Velocity & Capacity) និងរៀបចំ Roadmap ដែលមានភាពបត់បែន និងអាចសម្រេចបានពិតប្រាកដ។',
      workplaceStory: '«ក្នុងកិច្ចប្រជុំរៀបចំផែនការឆ្នាំថ្មី ថ្នាក់ដឹកនាំចង់ឱ្យនាយកដ្ឋាន IT បញ្ចប់គម្រោងធំៗចំនួន ៨ ក្នុងរយៈពេល ៦ ខែ។ លោក ចាន់រិទ្ធ ជា Senior Project Lead មិនបានបដិសេធដោយកំហឹងទេ ហើយក៏មិនយល់ព្រមទាំងងងឹតងងល់ដែរ។ \n'
          'គាត់បានបង្ហាញតារាង Capacity Planning ច្បាស់លាស់៖ ក្រុមការងារមានវិស្វករ ៥ នាក់ ស្មើនឹង ១៦០ ម៉ោង/សប្តាហ៍។ ដោយដកម៉ោងថែទាំប្រព័ន្ធចាស់ ក្រុមនៅសល់ម៉ោងផលិតកម្មដែលអាចបញ្ចប់គម្រោងបានតែ ៤ ប៉ុណ្ណោះ។ គាត់បានស្នើឱ្យថ្នាក់ដឹកនាំជ្រើសរើសគម្រោងអាទិភាពកំពូល ៤ មុន។ ថ្នាក់ដឹកនាំបានយល់ព្រមភ្លាមៗ ហើយគម្រោងទាំង ៤ ត្រូវបានបញ្ចប់ទាន់ពេល ១០០% ដោយគ្មានបុគ្គលិកណាម្នាក់បាក់កម្លាំងឡើយ។»',
      practicalExample: '✅ របៀបរៀបចំ Capacity Plan សង្ខេប៖\n'
          '១. [Gross Capacity]៖ ៥ នាក់ x ៤០ ម៉ោង = ២០០ ម៉ោង/សប្តាហ៍\n'
          '②. [Buffer & Operational Overhead]៖ ដក ២៥% សម្រាប់កិច្ចប្រជុំ សម្រាក និងដោះស្រាយបញ្ហាបន្ទាន់ = នៅសល់ ១៥០ ម៉ោងផលិតកម្មសុទ្ធ\n'
          '៣. [Project Allocation]៖ បែងចែកម៉ោងផលិតកម្មទៅគម្រោងអាទិភាពខ្ពស់បំផុត។',
      practicalExercise: 'គណនាទំហំម៉ោងផលិតកម្មពិតប្រាកដរបស់ក្រុមអ្នកសម្រាប់សប្តាហ៍ក្រោយ ដោយដកម៉ោងប្រជុំ និងការងាររដ្ឋបាលចេញ។',
      quizQuestions: [
        QuestionModel(
          id: 'q-senior-9',
          promptKh: 'នៅពេលថ្នាក់លើដាក់បន្ទុកការងារច្រើនលើសលប់ដែលមិនអាចធ្វើទាន់ តើ Senior Specialist គួរឆ្លើយតបបែបណា?',
          promptEn: 'When executives demand an unrealistic volume of deliverables, how should a senior specialist respond?',
          optionsKh: [
            'A. យល់ព្រមទទួលយកទាំងអស់សិន រួចចាំដល់ថ្ងៃកំណត់ទើបប្រាប់ថាធ្វើមិនទាន់។',
            'B. បង្ហាញទិន្នន័យកម្លាំងជាក់ស្តែង (Capacity Plan) ដោយសុជីវធម៌ និងស្នើឱ្យថ្នាក់លើជួយកំណត់អាទិភាពគម្រោង (Prioritization)។',
            'C. ឈ្លោះប្រកែក និងស្រែកតវ៉ាក្នុងកិច្ចប្រជុំ។',
          ],
          optionsEn: [
            'A. Agree blindly to everything and announce failure only at deadline.',
            'B. Transparently present real capacity metrics and facilitate executive prioritization tradeoffs.',
            'C. Argue angrily in the boardroom.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ ភាពជាអ្នកជំនាញគឺការនិយាយដោយផ្អែកលើទិន្នន័យ និងតួលេខជាក់ស្តែង (Data-driven negotiation) ជួយឱ្យថ្នាក់លើមើលឃើញការពិត និងជ្រើសរើសអាទិភាពត្រឹមត្រូវ។',
          explanationEn: 'Explanation: Data-backed capacity planning enables mature trade-off conversations without emotional drama.',
        ),
      ],
      reflection: 'តើអ្នកធ្លាប់សន្យាថានឹងបញ្ចប់ការងារ ប៉ុន្តែចុងក្រោយធ្វើមិនទាន់ដោយសារមិនបានគិតគូរពី Capacity ដែរឬទេ?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ពិនិត្យមើលបញ្ជីការងារសប្តាហ៍នេះ ហើយដាក់ Buffer ២០% សម្រាប់ទប់ទល់នឹងរឿងបន្ទាន់ដែលមិនបានគ្រោងទុក។',
    ),

    // Lesson 10: Succession Planning & Becoming Dispensable to Get Promoted
    LessonModel(
      id: 'lesson-senior-10',
      courseId: 'course-senior-mentorship',
      moduleId: 'mod-1',
      titleKh: '១០. ការកសាងអ្នកបន្តវេនដើម្បីបើកផ្លូវឡើងតំណែង (Succession Planning & Scalability)',
      titleEn: 'Succession Planning: Building Replacements to Unlock Your Own Promotion',
      type: LessonType.text,
      orderIndex: 10,
      learningObjectives: '• យល់ដឹងពីច្បាប់មាសនៃការឡើងតំណែង៖ «ប្រសិនបើគ្មានអ្នកណាអាចជំនួសអ្នកបានទេ អ្នកក៏មិនអាចឡើងតំណែងបានដែរ»។\n'
          '• បង្កើតផែនការផ្ទេរតំណែង (Succession Plan) និងឯកសារ SOPs សំខាន់ៗ។\n'
          '• ត្រៀមលក្ខណៈផ្លូវចិត្ត និងជំនាញដើម្បីឈានជើងចេញពីតួនាទី Specialist ទៅជា Leader/Manager។',
      shortExplanation: 'បុគ្គលិកជាច្រើនគិតខុសថា ការក្តោបការងារសំខាន់ៗតែម្នាក់ឯងដោយមិនឱ្យអ្នកណាដឹង គឺជាការការពារតំណែងរបស់ខ្លួន (Job Security)។ ការពិតជាក់ស្តែង ថ្នាក់ដឹកនាំក្រុមហ៊ុនមិនអាចតម្លើងតំណែងអ្នកឱ្យទៅដឹកនាំផ្នែក ឬនាយកដ្ឋានបានឡើយ ប្រសិនបើគ្មានអ្នកណាអាចធ្វើការងារចាស់របស់អ្នកបាននោះ។ ដើម្បីឡើងតំណែង អ្នកត្រូវតែបណ្តុះបណ្តាលអ្នកបន្តវេនឱ្យរួចរាល់ជាមុនសិន។',
      workplaceStory: '«លោក សុភា ជា Senior Marketing Specialist ដ៏ពូកែម្នាក់។ នៅពេលតំណែង Marketing Manager ទំនេរ អគ្គនាយកបានពិចារណាលើរូបគាត់ ប៉ុន្តែមានការស្ទាក់ស្ទើរ ព្រោះប្រសិនបើសុភាឡើងតំណែង គ្មានអ្នកណាចេះរៀបចំយុទ្ធនាការផ្សាយពាណិជ្ជកម្ម Digital ជំនួសគាត់ឡើយ។ \n'
          'សំណាងល្អ សុភាបានគិតគូររឿងនេះ ៦ ខែមុនរួចស្រេចទៅហើយ។ គាត់បានបង្ហាញឯកសារ SOP ពេញលេញ និងបានបណ្តុះបណ្តាល Junior ម្នាក់ឈ្មោះ ដារ៉ា ឱ្យចេះគ្រប់គ្រង Ads ទាំងអស់ជំនួសគាត់បាន ៩៥%។ សុភាបានប្រាប់អគ្គនាយកថា៖ "ដារ៉ាត្រៀមខ្លួនរួចរាល់ហើយក្នុងការទទួលការងារចាស់របស់ខ្ញុំ"។ អគ្គនាយកសប្បាយចិត្តយ៉ាងខ្លាំង ហើយបានចុះហត្ថលេខាតម្លើងតំណែងសុភាជា Manager ភ្លាមៗនៅថ្ងៃនោះ។»',
      practicalExample: '✅ ជំហាន ៣ នៃការរៀបចំអ្នកបន្តវេន (Succession Blueprint)៖\n'
          '១. [Document Knowledge]៖ សរសេរឯកសារដំណើរការការងារ (SOP) សម្រាប់គ្រប់ការងារប្រចាំថ្ងៃរបស់អ្នក។\n'
          '②. [Shadowing & Delegation]៖ ឱ្យសមាជិកដែលមានសក្តានុពលខ្ពស់មកអង្កេត និងសាកល្បងទទួលខុសត្រូវកិច្ចការធំៗ ៣០%។\n'
          '៣. [Empowerment]៖ ផ្តល់សិទ្ធិអំណាចឱ្យពួកគេសម្រេចចិត្ត និងធ្វើជាខ្នងបង្អែកផ្តល់យោបល់នៅពីក្រោយ។',
      practicalExercise: 'កំណត់ឈ្មោះសមាជិកក្រុមម្នាក់ដែលអាចក្លាយជាអ្នកបន្តវេនរបស់អ្នក ហើយរៀបចំបញ្ជីជំនាញចំនួន ៣ ដែលអ្នកត្រូវផ្ទេរឱ្យគេក្នុងរយៈពេល ៩០ ថ្ងៃ។',
      quizQuestions: [
        QuestionModel(
          id: 'q-senior-10',
          promptKh: 'ហេតុអ្វីបានជាបុគ្គលិកដែលក្តោបការងារទាំងអស់តែម្នាក់ឯង ពិបាកនឹងទទួលបានការតម្លើងតំណែងជាថ្នាក់ដឹកនាំ?',
          promptEn: 'Why do specialists who hoard all critical knowledge struggle to get promoted to leadership?',
          optionsKh: [
            'A. ព្រោះថ្នាក់លើមិនចូលចិត្តមនុស្សដែលធ្វើការងារច្រើន។',
            'B. ព្រោះស្ថាប័នមិនអាចផ្លាស់ប្តូរគាត់បានឡើយ ប្រសិនបើគ្មានអ្នកណាអាចជំនួសការងារប្រតិបត្តិការបច្ចុប្បន្នរបស់គាត់។',
            'C. ព្រោះគាត់គ្មានសញ្ញាបត្របរទេស។',
          ],
          optionsEn: [
            'A. Because bosses dislike hard-working people.',
            'B. Because the organization cannot afford to move them if their current daily operations would collapse without a successor.',
            'C. Because they lack foreign degrees.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ ប្រសិនបើអ្នកមិនអាចជំនួសបាន អ្នកក៏មិនអាចឡើងតំណែងបានដែរ (If you cannot be replaced, you cannot be promoted)។ ការកសាងអ្នកបន្តវេនគឺជាកាតព្វកិច្ចចម្បង។',
          explanationEn: 'Explanation: Unlocking promotion requires rendering yourself dispensable in your current operational role through succession.',
        ),
      ],
      reflection: 'តើមានការងារណាខ្លះដែលប្រសិនបើអ្នកឈប់សម្រាកមួយសប្តាហ៍ ក្រុមទាំងមូលនឹងត្រូវគាំង? តើអ្នកអាចបណ្តុះបណ្តាលអ្នកដទៃឱ្យចេះធ្វើវាដោយរបៀបណា?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ចាប់ផ្តើមកត់ត្រា SOP នៃកិច្ចការស្មុគស្មាញបំផុតរបស់អ្នកទុកក្នុង Shared Drive សម្រាប់អ្នកបន្តវេន។',
    ),
  ];

  // =========================================================================
  // 4. TEAM LEADER EXTRA LESSONS (Lessons 7 to 10)
  // =========================================================================
  static final List<LessonModel> leaderLessons = [
    // Lesson 7: Psychological Safety & The "Court of Candor" (Alibaba Culture)
    LessonModel(
      id: 'lesson-leader-7',
      courseId: 'course-leader-delegation',
      moduleId: 'mod-1',
      titleKh: '៧. ការកសាងសុវត្ថិភាពផ្លូវចិត្ត និងការនិយាយត្រង់ (Alibaba: Candor & Psychological Safety)',
      titleEn: 'Psychological Safety & Radical Candor: The Alibaba Iron Army Culture',
      type: LessonType.text,
      orderIndex: 7,
      learningObjectives: '• យល់ដឹងពីគោលគំនិតសុវត្ថិភាពផ្លូវចិត្ត (Psychological Safety) របស់ Google Project Aristotle។\n'
          '• អនុវត្តវប្បធម៌និយាយត្រង់ដោយក្តីស្រឡាញ់ (Radical Candor: Care Personally, Challenge Directly)។\n'
          '• បង្កើតវេទិកាពិភាក្សាដែលសមាជិកហ៊ានរាយការណ៍ពីកំហុសដោយមិនខ្លាចការសងសឹក ឬស្តីបន្ទោស។',
      shortExplanation: 'នៅក្រុមហ៊ុន Alibaba វប្បធម៌កងទ័ពដែក (阿里铁军) ផ្អែកលើការនិយាយត្រង់ (坦诚)។ ក្រុមការងារដែលគ្រោះថ្នាក់បំផុត មិនមែនជាក្រុមដែលមានការប្រកែកគ្នានោះទេ ប៉ុន្តែជាក្រុមដែល «ស្ងៀមស្ងាត់ ញញឹមដាក់គ្នា ប៉ុន្តែលាក់កំហុស និងការមិនពេញចិត្តទុកក្នុងចិត្ត»។ Team Leader ឆ្នើមត្រូវតែកសាងបរិយាកាសសុវត្ថិភាពផ្លូវចិត្ត ដែលសមាជិកគ្រប់គ្នាហ៊ានបញ្ចេញមតិ ហ៊ានចោទសួរ និងហ៊ានសារភាពកំហុសភ្លាមៗ។',
      workplaceStory: '«លោក មករា ជា Team Leader ផ្នែកអភិវឌ្ឍន៍ផលិតផល។ ដំបូងឡើយ រាល់ពេលសមាជិកធ្វើខុស គាត់តែងតែស្តីបន្ទោសយ៉ាងចាស់ដៃនៅចំពោះមុខអ្នកដទៃ។ ជាលទ្ធផល សមាជិកលែងហ៊ានបញ្ចេញគំនិតច្នៃប្រឌិតថ្មីៗ ហើយពេលមានបញ្ហាអតិថិជនរអ៊ូរទាំ ពួកគេនាំគ្នាលាក់បាំងរហូតដល់បញ្ហារីករាលដាលធំ។ \n'
          'ក្រោយពីយល់ដឹងពី Radical Candor មករាបានកែប្រែស្ទីលដឹកនាំ៖ គាត់បានបើកកិច្ចប្រជុំសារភាពកំហុសផ្ទាល់ខ្លួនជាគំរូមុនគេ។ គាត់បានបង្កើតក្បួន "ជជែកទាស់គំនិតគ្នាក្នុងបន្ទប់ប្រជុំឱ្យអស់ចិត្ត ប៉ុន្តែចេញមកក្រៅស្រឡាញ់គ្នាដូចបងប្អូន"។ ក្រុមការងាររបស់គាត់បានប្រែក្លាយជាក្រុមដែលមានភាពស្អិតរមួតបំផុត និងមានទិន្នផលការងារកើនឡើង ៤០%។»',
      practicalExample: '✅ របៀបនិយាយត្រង់ដោយក្តីមេត្តា (Radical Candor Formula)៖\n'
          '«ប្អូនដឹងទេថាខ្ញុំយកចិត្តទុកដាក់ និងចង់ឃើញប្អូនជោគជ័យខ្លាំងកម្រិតណា។ ដោយសារក្តីបារម្ភនេះហើយ ទើបខ្ញុំត្រូវតែប្រាប់ប្អូនដោយស្មោះត្រង់ថា របាយការណ៍លើកនេះខ្វះទិន្នន័យសំខាន់ចំនួន ២ ដែលធ្វើឱ្យអតិថិជនបាត់បង់ទំនុកចិត្ត។ តើយើងអាចកែប្រែវាឡើងវិញយ៉ាងដូចម្តេច?»',
      practicalExercise: 'រៀបចំកិច្ចប្រជុំបើកចំហ (Open Forum) រយៈពេល ៣០ នាទីជាមួយក្រុមរបស់អ្នក ដើម្បីស្តាប់ការលំបាក និងមតិយោបល់របស់ពួកគេដោយមិនធ្វើការស្តីបន្ទោស។',
      quizQuestions: [
        QuestionModel(
          id: 'q-leader-7',
          promptKh: 'តើអ្វីជាសញ្ញាសម្គាល់នៃក្រុមការងារដែលមានសុវត្ថិភាពផ្លូវចិត្តខ្ពស់ (High Psychological Safety)?',
          promptEn: 'What is the hallmark of a team with high psychological safety?',
          optionsKh: [
            'A. សមាជិកទាំងអស់យល់ស្របតាម Leader គ្រប់រឿងដោយមិនដែលប្រកែក។',
            'B. សមាជិកហ៊ានចោទសួរ ហ៊ានសារភាពកំហុសទាន់ពេល និងហ៊ានបញ្ចេញគំនិតខុសប្លែកពីគេដោយគ្មានការភ័យខ្លាច។',
            'C. សមាជិកមិនដែលនិយាយរកគ្នាដើម្បីកុំឱ្យមានជម្លោះ។',
          ],
          optionsEn: [
            'A. Everyone always agrees nodding passively with the leader.',
            'B. Teammates openly ask questions, admit mistakes early, and voice differing opinions without fear of retribution.',
            'C. Teammates stay silent to prevent disputes.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ សុវត្ថិភាពផ្លូវចិត្តអនុញ្ញាតឱ្យមនុស្សហ៊ានប្រថុយ ហ៊ានសារភាពកំហុស និងហ៊ានច្នៃប្រឌិត ដែលជាកត្តាលេខ ១ នៃក្រុមការងារដែលមានទិន្នផលខ្ពស់។',
          explanationEn: 'Explanation: Psychological safety allows vulnerability, rapid mistake recovery, and fearless innovation.',
        ),
      ],
      reflection: 'តើសមាជិកក្រុមរបស់អ្នកហ៊ានប្រាប់អ្នកដោយស្មោះត្រង់ទេនៅពេលអ្នកធ្វើការសម្រេចចិត្តខុស? បើមិនហ៊ាន តើមកពីអ្នកមានប្រតិកម្មបែបណា?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ នៅក្នុងកិច្ចប្រជុំបន្ទាប់ ចូរថ្លែងអំណរគុណជាសាធារណៈដល់សមាជិកណាដែលហ៊ានចង្អុលបង្ហាញកំហុស ឬភាពខ្វះខាតនៃគម្រោង។',
    ),

    // Lesson 8: Performance Calibration & The 2-7-1 Rule (Jack Welch & Alibaba Model)
    LessonModel(
      id: 'lesson-leader-8',
      courseId: 'course-leader-delegation',
      moduleId: 'mod-1',
      titleKh: '៨. ការវាយតម្លៃបុគ្គលិកតាមក្បួន ២-៧-១ (Alibaba & GE 2-7-1 Talent Differentiation)',
      titleEn: 'Performance Calibration & Talent Differentiation: The 2-7-1 Framework',
      type: LessonType.text,
      orderIndex: 8,
      learningObjectives: '• យល់ដឹងពីក្បួនចាត់ថ្នាក់បុគ្គលិក ២-៧-១ (២០% ឆ្នើម, ៧០% មធ្យមរឹងមាំ, ១០% ក្រោមស្តង់ដារ)។\n'
          '• ចៀសវាងកំហុស «មនុស្សល្អគ្រប់គ្នា» (Equally Nice Bias) ដែលធ្វើឱ្យបុគ្គលិកឆ្នើមបាក់ទឹកចិត្ត។\n'
          '• បង្កើតផែនការកែលម្អការងារ (Performance Improvement Plan - PIP) សម្រាប់បុគ្គលិកក្រោមស្តង់ដារ។',
      shortExplanation: 'នៅក្រុមហ៊ុន Alibaba និង General Electric (Jack Welch) ក្បួនដែកនៃការគ្រប់គ្រងគឺ «ការបែងចែកឱ្យដាច់ស្រេច» (Differentiation)៖ ២០% ជាបុគ្គលិកឆ្នើម (Star Performers) ដែលត្រូវផ្តល់រង្វាន់ និងឱកាសខ្ពស់បំផុត, ៧០% ជាឆ្អឹងខ្នងរឹងមាំ (Solid Contributors) ដែលត្រូវលើកទឹកចិត្ត និងអភិវឌ្ឍ, និង ១០% ជាបុគ្គលិកក្រោមស្តង់ដារ (Underperformers) ដែលត្រូវផ្តល់ឱកាសកែលម្អ ឬផ្លាស់ប្តូរចេញ។ ការធ្វើជាមេដឹកនាំដែលចង់ផ្គាប់ចិត្តមនុស្សគ្រប់គ្នា គឺជាការអយុត្តិធម៌បំផុតចំពោះបុគ្គលិកដែលខិតខំធ្វើការ។',
      workplaceStory: '«លោក ចាន់ថុល ជាប្រធានក្រុមផ្នែកលក់។ ក្នុងពិធីចែកប្រាក់លើកទឹកចិត្ត (Incentive) ចុងឆ្នាំ ដោយសារខ្លាចសមាជិកមួយចំនួនអន់ចិត្ត គាត់បានសម្រេចចិត្តយកប្រាក់រង្វាន់សរុបមកចែកស្មើគ្នាដល់មនុស្សទាំងអស់ ទាំងអ្នកដែលសម្រេចបាន ១៥០% នៃ Target និងអ្នកដែលសម្រេចបានតែ ៤០%។ \n'
          'លទ្ធផល៖ វិរៈ ដែលជាបុគ្គលិកឆ្នើមលក់ដាច់បំផុត មានអារម្មណ៍ខកចិត្តយ៉ាងខ្លាំងព្រោះការខិតខំរបស់គាត់គ្មានតម្លៃខុសពីអ្នកដទៃ ហើយបានសម្រេចចិត្តលាលែងទៅក្រុមហ៊ុនគូប្រជែង។ រីឯបុគ្គលិកខ្ជិលច្រអូសនៅតែបន្តខ្ជិលដដែល។ ក្រោយពីបាត់បង់បុគ្គលិកឆ្នើម ចាន់ថុលទើបយល់ច្បាស់ថា "ភាពយុត្តិធម៌មិនមែនជាការចែកស្មើគ្នានោះទេ ប៉ុន្តែជាការផ្តល់ផលតបស្នងតាមលទ្ធផលការងារជាក់ស្តែង"។»',
      practicalExample: '✅ របៀបចាត់ចែងបុគ្គលិកតាមក្បួន ២-៧-១៖\n'
          '• ២០% កំពូល៖ ផ្តល់ប្រាក់រង្វាន់ខ្ពស់ ការសរសើរជាសាធារណៈ និងប្រគល់កិច្ចការយុទ្ធសាស្ត្រថ្មីៗ។\n'
          '• ៧០% កណ្តាល៖ បង្វឹកបំប៉នជំនាញ (Upskilling) និងជំរុញឱ្យពួកគេឈានចូលក្នុងក្រុម ២០%។\n'
          '• ១០% បាត៖ ជួបសន្ទនាត្រង់ៗ ដាក់ចេញ KPI កែលម្អរយៈពេល ៣០-៦០ ថ្ងៃ (PIP) ដោយច្បាស់លាស់។',
      practicalExercise: 'ធ្វើតារាងវាយតម្លៃសមាជិកក្រុមរបស់អ្នកដោយបែងចែកតាមក្រុម ២-៧-១ និងកំណត់យុទ្ធសាស្ត្រគាំទ្រសម្រាប់មនុស្សម្នាក់ៗ។',
      quizQuestions: [
        QuestionModel(
          id: 'q-leader-8',
          promptKh: 'ហេតុអ្វីបានជាការចែករំលែកប្រាក់រង្វាន់ស្មើគ្នាដល់មនុស្សគ្រប់គ្នា (Equal Distribution) ត្រូវបានចាត់ទុកថាជាកំហុសនៃការដឹកនាំ?',
          promptEn: 'Why is equal bonus distribution considered a critical leadership failure?',
          optionsKh: [
            'A. ព្រោះវាធ្វើឱ្យបុគ្គលិកឆ្នើម (High Performers) បាត់បង់ទឹកចិត្ត និងជំរុញឱ្យបុគ្គលិកខ្ជិលបន្តទម្លាប់អសកម្ម។',
            'B. ព្រោះប្រធានក្រុមហ៊ុនមិនចូលចិត្តឃើញបុគ្គលិកសប្បាយចិត្ត។',
            'C. ព្រោះវាខុសច្បាប់ការងារអន្តរជាតិ។',
          ],
          optionsEn: [
            'A. It demoralizes high performers and subsidizes mediocrity, driving top talent to leave.',
            'B. Because corporate executives dislike seeing employees happy.',
            'C. Because it violates international labor laws.',
          ],
          correctOptionIndex: 0,
          explanationKh: 'ការពន្យល់៖ ការចែកស្មើគ្នាគឺជាភាពអយុត្តិធម៌ចំពោះអ្នកដែលខិតខំប្រឹងប្រែង។ ការបែងចែករង្វាន់តាមស្នាដៃ (Meritocracy) ទើបជាកម្លាំងចលករនៃកំណើនស្ថាប័ន។',
          explanationEn: 'Explanation: Rewarding mediocrity equally penalizes top performers and degrades organizational culture.',
        ),
      ],
      reflection: 'តើអ្នកធ្លាប់មានការស្ទាក់ស្ទើរក្នុងការផ្តល់ Feedback អវិជ្ជមានដល់បុគ្គលិកដែលធ្វើការខ្សោយព្រោះខ្លាចគេខឹងដែរឬទេ?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ជួបសន្ទនាជាលក្ខណៈបុគ្គល (1-on-1) ជាមួយបុគ្គលិកកំពូលរបស់អ្នក ដើម្បីថ្លែងអំណរគុណ និងពិភាក្សាពីផែនការអភិវឌ្ឍអាជីពរបស់ពួកគេ។',
    ),

    // Lesson 9: Coaching via Socratic Questioning (GROW Model)
    LessonModel(
      id: 'lesson-leader-9',
      courseId: 'course-leader-delegation',
      moduleId: 'mod-1',
      titleKh: '៩. ការបង្វឹកសមាជិកតាមគំរូ GROW (The GROW Coaching Framework for Leaders)',
      titleEn: 'Coaching Through Inquiry: The GROW Model for Developing Autonomous Thinkers',
      type: LessonType.text,
      orderIndex: 9,
      learningObjectives: '• យល់ដឹងពីភាពខុសគ្នារវាងការបញ្ជា (Telling) និងការបង្វឹក (Coaching)។\n'
          '• អនុវត្តគំរូ GROW (Goal, Reality, Options, Will/Way forward) ក្នុងការប្រជុំ 1-on-1។\n'
          '• ជួយសមាជិកក្រុមឱ្យចេះគិត និងស្វែងរកដំណោះស្រាយដោយខ្លួនឯង ជំនួសឱ្យការពឹងផ្អែកលើមេដឹកនាំ។',
      shortExplanation: 'ប្រសិនបើអ្នកតែងតែឆ្លើយសំណួរ និងដោះស្រាយបញ្ហាជំនួសសមាជិកក្រុមរាល់ពេល ពួកគេនឹងមិនចេះធំធាត់ឡើយ ហើយអ្នកនឹងក្លាយជា «ដបស្ទះ» (Bottleneck) នៃការងារ។ មេដឹកនាំពូកែមិនមែនជាអ្នកដែលមានចម្លើយគ្រប់យ៉ាងនោះទេ ប៉ុន្តែជាអ្នកដែល «ចេះចោទសួរសំណួរដាស់គំនិត» (Socratic Coaching) ដើម្បីជំរុញឱ្យសមាជិកទាញយកសក្តានុពល និងការទទួលខុសត្រូវចេញពីខ្លួនឯង។',
      workplaceStory: '«លោកស្រី សុជាតា ជា Team Leader ផ្នែកសេវាកម្មអតិថិជន។ រាល់ពេលមានអតិថិជនពិបាក សមាជិកឈ្មោះ ធារ៉ា តែងតែរត់មកសួរថា៖ "បង! ករណីនេះខ្ញុំត្រូវធ្វើយ៉ាងណា?" កាលពីមុន សុជាតាតែងតែប្រាប់ចម្លើយភ្លាមៗ។ '
          'ក្រោយមក នាងបានប្តូរមកប្រើវិធីសាស្ត្រ GROW៖ \n'
          '• Goal: "តើគោលដៅដែលប្អូនចង់សម្រេចជាមួយអតិថិជននេះគឺជាអ្វី?" (ធារ៉ា៖ ចង់ឱ្យគាត់ស្ងប់ចិត្ត និងមិនទារលុយវិញ)\n'
          '• Reality: "តើស្ថានភាពជាក់ស្តែងឥឡូវនេះមានអ្វីខ្លះ?" (ធារ៉ា៖ គាត់ខឹងព្រោះទំនិញខូច)\n'
          '• Options: "តើប្អូនគិតថាមានជម្រើសអ្វីខ្លះដើម្បីដោះស្រាយ?" (ធារ៉ា៖ ជម្រើស ១ ប្តូរទំនិញថ្មីជូនភ្លាម, ជម្រើស ២ ជូនប័ណ្ណបញ្ចុះតម្លៃ ២០%)\n'
          '• Will: "តើប្អូនសម្រេចចិត្តជ្រើសរើសមួយណា ហើយចាប់ផ្តើមធ្វើនៅពេលណា?" (ធារ៉ា៖ ខ្ញុំជ្រើសរើសជម្រើស ១ ហើយខលទៅគាត់ឥឡូវនេះ!) \n'
          'តាមរយៈការសួរបែបនេះ ត្រឹមតែមួយខែ ធារ៉ាអាចដោះស្រាយបញ្ហាបានយ៉ាងស្ទាត់ជំនាញដោយមិនចាំបាច់រត់មករំខានសុជាតាទៀតឡើយ។»',
      practicalExample: '✅ ឈុតសំណួរបង្វឹកតាម GROW Model៖\n'
          '• G (Goal)៖ "តើលទ្ធផលល្អឥតខ្ចោះដែលអ្នកចង់ឃើញគឺបែបណា?"\n'
          '• R (Reality)៖ "តើឧបសគ្គធំបំផុតដែលកំពុងរារាំងអ្នកនៅពេលនេះគឺជាអ្វី?"\n'
          '• O (Options)៖ "ប្រសិនបើគ្មានឧបសគ្គថវិកាទេ តើអ្នកនឹងដោះស្រាយតាមវិធីណាខ្លះ?"\n'
          '• W (Will)៖ "តើជំហានដំបូងបំផុតដែលអ្នកនឹងចាប់ផ្តើមធ្វើនៅថ្ងៃនេះគឺជាអ្វី?"',
      practicalExercise: 'អនុវត្តការសួរសំណួរតាម GROW Model ជាមួយសមាជិកម្នាក់ដែលមករកជំនួយពីអ្នកនៅថ្ងៃនេះ ដោយមិនប្រាប់ចម្លើយភ្លាមៗ។',
      quizQuestions: [
        QuestionModel(
          id: 'q-leader-9',
          promptKh: 'នៅពេលសមាជិករត់មកសួររកដំណោះស្រាយ តើ Team Leader បែប Coach គួរធ្វើបែបណាជាដំបូង?',
          promptEn: 'When a team member approaches asking for a solution, what should a coaching leader do first?',
          optionsKh: [
            'A. ប្រាប់ចម្លើយភ្លាមៗដើម្បីចំណេញពេលវេលា។',
            'B. ចោទសួរសំណួរដាស់គំនិត (ដូចជាតាមគំរូ GROW) ដើម្បីជួយឱ្យពួកគេគិតរកជម្រើសដំណោះស្រាយដោយខ្លួនឯង។',
            'C. ដណ្តើមការងារនោះមកធ្វើដោយខ្លួនឯងព្រោះគិតថាសមាជិកធ្វើមិនកើត។',
          ],
          optionsEn: [
            'A. Hand down the solution instantly to save minutes.',
            'B. Ask probing questions using frameworks like GROW to guide them toward generating their own solutions.',
            'C. Confiscate the task and do it personally.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ ការចោទសួរសំណួរជួយកសាងសាច់ដុំនៃការត្រិះរិះ និងភាពម្ចាស់ការរបស់បុគ្គលិក ជួយសម្រាលបន្ទុកមេដឹកនាំក្នុងរយៈពេលវែង។',
          explanationEn: 'Explanation: Socratic inquiry builds cognitive capability and self-reliance in team members.',
        ),
      ],
      reflection: 'តើអ្នកធ្លាប់មានអារម្មណ៍ហត់នឿយព្រោះសមាជិកក្រុមរត់មករកអ្នកគ្រប់រឿងតូចតាចដែរឬទេ? តើអ្នកបានបង្វឹកពួកគេឱ្យចេះគិតហើយឬនៅ?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ពេលសមាជិកមករកជំនួយថ្ងៃនេះ ចូរទប់ចិត្តកុំទាន់ប្រាប់ចម្លើយ ហើយសួរថា «ចុះប្អូនផ្ទាល់មានគំនិតយ៉ាងណាដែរ?»។',
    ),

    // Lesson 10: Shielding the Team & Managing Workplace Politics
    LessonModel(
      id: 'lesson-leader-10',
      courseId: 'course-leader-delegation',
      moduleId: 'mod-1',
      titleKh: '១០. ការធ្វើជាខ្នងបង្អែកការពារក្រុម និងការគ្រប់គ្រងនយោបាយផ្ទៃក្នុង (Shielding the Team)',
      titleEn: 'Shielding the Team & Navigating Internal Organizational Politics',
      type: LessonType.text,
      orderIndex: 10,
      learningObjectives: '• យល់ដឹងពីតួនាទីរបស់ Team Leader ក្នុងការធ្វើជា «ឆត្រការពារ» (Umbrella Shield) ពីសម្ពាធមិនសមហេតុផល។\n'
          '• គ្រប់គ្រងនយោបាយផ្ទៃក្នុងស្ថាប័នដោយឈរលើផលប្រយោជន៍រួម និងគុណធម៌វិជ្ជាជីវៈ។\n'
          '• ទទួលខុសត្រូវលើការបរាជ័យ (Extreme Ownership) និងផ្តល់កិត្តិយសនៃជោគជ័យដល់កូនក្រុម។',
      shortExplanation: 'មេដឹកនាំទន់ខ្សោយតែងតែ «ស្រូបយកកិត្តិយសពេលជោគជ័យ ហើយទម្លាក់កំហុសលើកូនក្រុមពេលបរាជ័យ»។ ផ្ទុយទៅវិញ មេដឹកនាំឆ្នើមគឺជាខ្នងបង្អែកដ៏រឹងមាំ (The Shield)៖ នៅពេលមានសម្ពាធ ឬការរិះគន់ពីថ្នាក់លើ ពួកគេឈរចេញមុខការពារក្រុម ប៉ុន្តែនៅពេលក្រុមសម្រេចបានជោគជ័យ ពួកគេរុញសមាជិកឱ្យឡើងទៅទទួលការកោតសរសើរ។ នេះគឺជាប្រភពនៃភក្តីភាព និងការលះបង់ពិតប្រាកដរបស់ក្រុមការងារ។',
      workplaceStory: '«ក្នុងអំឡុងពេលប្រជុំគណៈគ្រប់គ្រង នាយកប្រតិបត្តិបានស្តីបន្ទោសយ៉ាងខ្លាំងព្រោះគម្រោងចេញផ្សាយ App យឺតយ៉ាវ ២ ថ្ងៃ។ លោក វិទូ ជា Team Leader មិនបានចង្អុលមុខបន្ទោស Developer ម្នាក់ណាឡើយ។ គាត់បានក្រោកឈរហើយនិយាយដោយស្ងប់ស្ងាត់ថា៖ "នេះជាទំនួលខុសត្រូវរបស់ខ្ញុំសុទ្ធសាធ។ ខ្ញុំបានប៉ាន់ប្រមាណពេលវេលាខ្វះខាត និងមិនបានផ្តល់ធនធានគ្រប់គ្រាន់ដល់ក្រុម។ ក្រុមការងារបានខិតខំអស់ពីសមត្ថភាពទាំងយប់ទាំងថ្ងៃ។ ខ្ញុំសូមទទួលខុសត្រូវ និងធានាថានឹងបញ្ចប់នៅថ្ងៃស្អែក"។ \n'
          'ទង្វើដ៏ថ្លៃថ្នូរនេះបានធ្វើឱ្យសមាជិកក្រុមមានការគោរព និងស្រឡាញ់វិទូជាទីបំផុត។ យប់នោះ សមាជិកទាំងអស់បានស្ម័គ្រចិត្តជួយគ្នារហូតដល់ចប់សព្វគ្រប់។ ក្រោយមក ក្រុមការងាររបស់វិទូបានក្លាយជាក្រុមដែលមានអត្រាលាលែងពីការងារ (Turnover Rate) ទាបបំផុតនៅក្នុងក្រុមហ៊ុន។»',
      practicalExample: '✅ ក្បួនមាសនៃការទទួលខុសត្រូវរបស់មេដឹកនាំ (Extreme Ownership)៖\n'
          '• ពេលការងារបរាជ័យ៖ និយាយពាក្យថា "ខ្ញុំជាអ្នកទទួលខុសត្រូវ!" (Look in the mirror)\n'
          '• ពេលការងារជោគជ័យ៖ និយាយពាក្យថា "ដោយសារការខិតខំរបស់ក្រុមការងារទាំងអស់គ្នា!" (Look out the window)',
      practicalExercise: 'គិតអំពីការបរាជ័យថ្មីៗមួយរបស់ក្រុមអ្នក ហើយសរសេរសារទទួលខុសត្រូវក្នុងនាមជា Leader ដោយមិនបន្ទោសសមាជិកណាម្នាក់ឡើយ។',
      quizQuestions: [
        QuestionModel(
          id: 'q-leader-10',
          promptKh: 'នៅពេលគម្រោងជួបការយឺតយ៉ាវ ហើយថ្នាក់លើស្តីបន្ទោស តើទង្វើរបស់ Team Leader ដ៏គំរូគឺជាអ្វី?',
          promptEn: 'When a project is delayed and senior executives criticize the team, what is the exemplary response of a Team Leader?',
          optionsKh: [
            'A. ប្រាប់ឈ្មោះសមាជិកដែលធ្វើការយឺតយ៉ាវឱ្យថ្នាក់លើដឹង ដើម្បីការពារខ្លួនឯងកុំឱ្យខូចឈ្មោះ។',
            'B. ឈរចេញមុខទទួលខុសត្រូវក្នុងនាមជាអ្នកដឹកនាំក្រុម (Extreme Ownership) និងការពារក្រុមពីសម្ពាធអវិជ្ជមាន។',
            'C. លាលែងពីការងារភ្លាមៗដើម្បីគេចវេះពីទំនួលខុសត្រូវ។',
          ],
          optionsEn: [
            'A. Name and shame the slowest junior teammate to preserve personal reputation.',
            'B. Step forward, assume extreme ownership as leader, and shield the team from toxic panic.',
            'C. Resign abruptly to evade responsibility.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ មេដឹកនាំពិតប្រាកដអនុវត្ត Extreme Ownership៖ ទទួលខុសត្រូវចំពោះភាពខ្វះខាតរបស់ក្រុម និងការពារក្រុមឱ្យមានស្មារតីរឹងមាំក្នុងការដោះស្រាយបញ្ហា។',
          explanationEn: 'Explanation: Exemplary leadership hinges on extreme ownership—absorbing blame and deflecting praise onto the team.',
        ),
      ],
      reflection: 'តើអ្នកធ្លាប់មានអារម្មណ៍ចង់ទម្លាក់កំហុសលើសមាជិកក្រុមនៅចំពោះមុខថ្នាក់លើដែរឬទេ? តើទង្វើនោះបំផ្លាញទំនុកចិត្តរបស់ក្រុមយ៉ាងដូចម្តេច?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ប្រសិនបើមានបញ្ហាក្នុងក្រុមថ្ងៃនេះ ចូរទទួលខុសត្រូវជាមុន និងជួបកែលម្អជាមួយសមាជិកដោយស្ងាត់ស្ងៀមនៅខាងក្នុងបន្ទប់បិទជិត។',
    ),
  ];
}
