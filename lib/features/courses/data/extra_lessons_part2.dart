import '../domain/course_model.dart';

class ExtraLessonsPart2 {
  // =========================================================================
  // 5. SUPERVISOR EXTRA LESSONS (Lessons 3 to 10)
  // =========================================================================
  static final List<LessonModel> supervisorLessons = [
    // Lesson 3: Gemba Walk (Going to the Frontline / 走动管理)
    LessonModel(
      id: 'lesson-supervisor-3',
      courseId: 'course-supervisor-ops',
      moduleId: 'mod-1',
      titleKh: '៣. ការចុះពិនិត្យទីតាំងជាក់ស្តែង «ក្បួនដើរពិនិត្យ Gemba Walk» (Toyota Frontline Inspection)',
      titleEn: 'Gemba Walk: Frontline Operational Observation & Waste Elimination',
      type: LessonType.text,
      orderIndex: 3,
      learningObjectives: '• យល់ដឹងពីទស្សនវិជ្ជាផលិតកម្មបែបជប៉ុន និងចិន «Gemba Walk / 走动管理» (ការចុះទៅកន្លែងកើតហេតុជាក់ស្តែង)។\n'
          '• ជៀសវាងការអង្គុយបញ្ជាការងារតែក្នុងបន្ទប់ម៉ាស៊ីនត្រជាក់ដោយមិនដឹងពីការលំបាករបស់បុគ្គលិកជួរមុខ។\n'
          '• សង្កេតរកចំណុចកកស្ទះ គ្រោះថ្នាក់ការងារ និងការខ្ជះខ្ជាយពេលវេលាដោយផ្ទាល់ភ្នែក។',
      shortExplanation: 'ពាក្យថា «Gemba» (现场 - ស៊ានឆាង) នៅក្នុងទស្សនវិជ្ជាគ្រប់គ្រងបែបតូយ៉ូតាមានន័យថា «ទីកន្លែងដែលបង្កើតតម្លៃពិតប្រាកដ» ដូចជា រោងចក្រ ឃ្លាំងទំនិញ ឬកន្លែងទទួលភ្ញៀវ។ អ្នកត្រួតពិនិត្យ (Supervisor) ដែលអង្គុយមើលតែរបាយការណ៍លើក្រដាស នឹងត្រូវបានគេបោកប្រាស់ដោយតួលេខ។ Supervisor ពូកែត្រូវតែចុះដើរពិនិត្យទីតាំងជាក់ស្តែងជារៀងរាល់ថ្ងៃ ដើម្បីមើល ស្វែងយល់ និងជួយសម្រួលឧបសគ្គដល់បុគ្គលិកជួរមុខ។',
      workplaceStory: '«លោក សុខុម ជា Supervisor គ្រប់គ្រងភោជនីយដ្ឋានធំមួយនៅសៀមរាប។ ក្នុងរបាយការណ៍ ប្រព័ន្ធកត់ត្រាថាការបញ្ជាម្ហូបដំណើរការល្អ ប៉ុន្តែភ្ញៀវតែងតែរអ៊ូរទាំថាម្ហូបចេញយឺត។ \n'
          'ជំនួសឱ្យការស្តីបន្ទោសមេចុងភៅតាមទូរស័ព្ទ សុខុមបានចុះទៅឈរនៅក្នុងផ្ទះបាយរយៈពេល ២ ម៉ោងក្នុងម៉ោងរវល់បំផុត (Gemba Walk)។ គាត់បានសង្កេតឃើញថា ចុងភៅត្រូវដើរទៅមកចម្ងាយ ១៥ ម៉ែត្ររាល់ពេលចង់យកគ្រឿងទេស ព្រោះទូគ្រឿងទេសដាក់នៅឆ្ងាយពីចង្ក្រាន។ សុខុមបានរៀបចំរើទូគ្រឿងទេសមកដាក់ក្បែរដៃចង្ក្រានភ្លាមៗ។ ជាលទ្ធផល ពេលវេលាចម្អិនម្ហូបត្រូវបានកាត់បន្ថយ ៨ នាទីក្នុងមួយមុខ ហើយការត្អូញត្អែររបស់ភ្ញៀវបានធ្លាក់ចុះដល់សូន្យ។»',
      practicalExample: '✅ វិធានមាស ៣ យ៉ាងក្នុងការចុះ Gemba Walk៖\n'
          '១. [Go and See]៖ ចុះទៅកន្លែងធ្វើការជាក់ស្តែងដោយផ្ទាល់ កុំចាំតែស្តាប់របាយការណ៍បន្តកន្ទុយ។\n'
          '២. [Ask Why, with Respect]៖ សួរដោយការគោរព និងស្វែងយល់ពីមូលហេតុ មិនមែនចុះទៅដើម្បីចាប់កំហុស ឬបំភ័យបុគ្គលិកឡើយ។\n'
          '៣. [Show Empathy & Assist]៖ ជួយកែសម្រួលឧបករណ៍ និងដំណើរការការងារភ្លាមៗដើម្បីសម្រាលបន្ទុកបុគ្គលិក។',
      practicalExercise: 'អនុវត្តការដើរចុះពិនិត្យទីតាំងការងារជួរមុខ (Gemba Walk) រយៈពេល ៣០ នាទីនៅថ្ងៃនេះ និងកត់ត្រាចំណុចរអាក់រអួលចំនួន ២ ដែលអ្នកបានឃើញដោយផ្ទាល់ភ្នែក។',
      quizQuestions: [
        QuestionModel(
          id: 'q-supervisor-3',
          promptKh: 'តើអ្វីជាគោលបំណងចម្បងនៃការចុះពិនិត្យការងារតាមក្បួន Gemba Walk របស់អ្នកត្រួតពិនិត្យ (Supervisor)?',
          promptEn: 'What is the primary objective of a Supervisor conducting a Gemba Walk?',
          optionsKh: [
            'A. ចុះទៅចាប់កំហុសបុគ្គលិកដើម្បីកាត់ប្រាក់រង្វាន់។',
            'B. ចុះទៅសង្កេតដំណើរការការងារជាក់ស្តែង យល់ពីការលំបាករបស់បុគ្គលិក និងស្វែងរកចំណុចកែលម្អប្រព័ន្ធ។',
            'C. ចុះទៅថតរូបដើម្បីបង្ហាញថ្នាក់លើថាខ្លួនឯងធ្វើការងារច្រើន។',
          ],
          optionsEn: [
            'A. Catch employees making mistakes to cut their bonuses.',
            'B. Directly observe the actual workflow, empathize with frontline friction, and eliminate systemic bottlenecks.',
            'C. Take photos to display personal activity to executives.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ Gemba Walk គឺជាការចុះទៅស្វែងយល់ការពិតនៅជួរមុខ ដើម្បីកែលម្អប្រព័ន្ធការងារ និងជួយសម្រាលបន្ទុកបុគ្គលិក មិនមែនជាការចាប់កំហុសឡើយ។',
          explanationEn: 'Explanation: Gemba walks focus on observing reality, uncovering waste, and supporting frontline staff.',
        ),
      ],
      reflection: 'តើអ្នកចំណាយពេលប៉ុន្មានភាគរយក្នុងមួយថ្ងៃនៅតុធ្វើការ ហើយប៉ុន្មានភាគរយចុះទៅមើលការងារជាក់ស្តែងនៅជួរមុខ?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ក្រោកពីកៅអីការិយាល័យ ហើយចុះទៅដើរពិនិត្យកន្លែងធ្វើការជួរមុខរយៈពេល ៣០ នាទីដោយយកចិត្តទុកដាក់។',
    ),

    // Lesson 4: SOP & Poka-Yoke (Mistake-Proofing / 防呆机制)
    LessonModel(
      id: 'lesson-supervisor-4',
      courseId: 'course-supervisor-ops',
      moduleId: 'mod-1',
      titleKh: '៤. ការរចនានីតិវិធីការពារកំហុសស្វ័យប្រវត្តិ (Poka-Yoke & Mistake-Proofing)',
      titleEn: 'SOP Design & Poka-Yoke: Mistake-Proofing Operational Workflows',
      type: LessonType.text,
      orderIndex: 4,
      learningObjectives: '• យល់ដឹងពីគោលការណ៍ Poka-Yoke (防呆 - ហ្វាងតាយ៖ ប្រព័ន្ធរចនាដែលមិនអាចឱ្យមនុស្សធ្វើខុសបាន)។\n'
          '• បង្កើតនីតិវិធីប្រតិបត្តិការស្តង់ដារ (SOP) ដែលមានរូបភាព និងងាយយល់បំផុត។\n'
          '• កាត់បន្ថយការខាតបង់ដែលបណ្តាលមកពីការធ្វេសប្រហែសរបស់មនុស្ស (Human Error)។',
      shortExplanation: 'អ្នកត្រួតពិនិត្យទន់ខ្សោយតែងតែនិយាយថា៖ «ខ្ញុំបានប្រាប់គេហើយ តែគេនៅតែធ្វើខុស!»។ រីឯ Supervisor កម្រិតអន្តរជាតិយល់ថា៖ ប្រសិនបើប្រព័ន្ធអនុញ្ញាតឱ្យបុគ្គលិកធ្វើខុសបាន នោះប្រព័ន្ធគឺជាអ្នកខុស។ គោលការណ៍ «Poka-Yoke» (Mistake-Proofing) គឺជាការរចនាឧបករណ៍ ឬដំណើរការការងារដែល «មិនអាចធ្វើខុសបានជាដាច់ខាត» (ដូចជា រន្ធដោតស៊ីមកាតទូរស័ព្ទដែលរចនាឱ្យកាត់ជ្រុងមួយ ដែលធ្វើឱ្យយើងមិនអាចដោតបញ្ច្រាសទិសបាន)។',
      workplaceStory: '«នៅរោងចក្រដំឡើងគ្រឿងអេឡិចត្រូនិកមួយ កម្មករតែងតែភ្លេចដាក់វីសមួយគ្រាប់ចូលក្នុងប្រអប់ទំនិញ ធ្វើឱ្យអតិថិជននៅអឺរ៉ុបប្តឹងទារសំណងរាប់ពាន់ដុល្លារ។ \n'
          'លោកស្រី គឹមសួរ ជា Quality Supervisor មិនបានដាក់ពិន័យកម្មករទេ។ នាងបានបង្កើតប្រព័ន្ធ Poka-Yoke ដ៏សាមញ្ញមួយ៖ នាងរៀបចំថាសតូចមួយដែលមានរន្ធចំនួន ៤ សម្រាប់ដាក់វីស ៤ គ្រាប់។ កម្មករត្រូវយកវីសពីថាសនោះមកខ្ទាស់។ ប្រសិនបើនៅសល់វីស ១ គ្រាប់ក្នុងថាស ម៉ាស៊ីនបិទកេសស្វ័យប្រវត្តិនឹងមិនព្រមដំណើរការឡើយ។ តាមរយៈប្រព័ន្ធនេះ កំហុសភ្លេចវីសបានធ្លាក់ចុះមកត្រឹម ០% ជារៀងរហូត។»',
      practicalExample: '✅ របៀបបង្កើតប្រព័ន្ធ Mistake-Proofing (Poka-Yoke) ក្នុងការិយាល័យ៖\n'
          '• ក្នុង Google Form ឬ Excel៖ កំណត់ Data Validation ដើម្បីកុំឱ្យបុគ្គលិកអាចវាយបញ្ចូលលេខទូរស័ព្ទខ្វះលេខ ឬច្រឡំអក្សរ។\n'
          '• ក្នុងអ៊ីមែល៖ ប្រើប្រព័ន្ធព្រមានស្វ័យប្រវត្តិនៅពេលសរសេរពាក្យ "Attach" ប៉ុន្តែភ្លេចភ្ជាប់ File។\n'
          '• ក្នុងឃ្លាំងទំនិញ៖ ប្រើកូដពណ៌ (Color Coding) សម្រាប់បែងចែកប្រភេទឥវ៉ាន់ឱ្យដាច់ពីគ្នា។',
      practicalExercise: 'ស្វែងរកកំហុសឆ្គងមួយដែលបុគ្គលិករបស់អ្នកតែងតែភ្លេចភ្លាំង ហើយរចនាគំរូ Poka-Yoke មួយដើម្បីការពារកុំឱ្យកំហុសនោះកើតឡើងបានទៀត។',
      quizQuestions: [
        QuestionModel(
          id: 'q-supervisor-4',
          promptKh: 'តើទស្សនវិជ្ជា Poka-Yoke (Mistake-Proofing) មានគោលបំណងចម្បងអ្វីក្នុងការគ្រប់គ្រងគុណភាព?',
          promptEn: 'What is the primary philosophy of Poka-Yoke in operations and quality control?',
          optionsKh: [
            'A. រចនាប្រព័ន្ធការងារឱ្យមានភាពស្មុគស្មាញដើម្បីសាកល្បងភាពឆ្លាតវៃរបស់បុគ្គលិក។',
            'B. រចនាដំណើរការការងារ ឬឧបករណ៍ដែលការពារកុំឱ្យកំហុសរបស់មនុស្សអាចកើតមានឡើងបាន (Fool-proof by design)។',
            'C. ដកហូតឧបករណ៍ការងារពីបុគ្គលិកដែលធ្លាប់ធ្វើខុស។',
          ],
          optionsEn: [
            'A. Make systems overly complex to test worker IQ.',
            'B. Engineer physical or procedural constraints so mistakes become physically or logically impossible.',
            'C. Confiscate tools from workers who make mistakes.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ Poka-Yoke ផ្តោតលើការរចនាប្រព័ន្ធការពារកំហុសជាមុន (Design out error) ជាជាងការរង់ចាំស្តីបន្ទោសមនុស្សក្រោយពេលខូចខាត។',
          explanationEn: 'Explanation: Poka-Yoke designs mechanisms that prevent errors from occurring by physical or logical constraints.',
        ),
      ],
      reflection: 'តើមានការងារណាខ្លះក្នុងផ្នែករបស់អ្នកដែលកំពុងពឹងផ្អែកលើ «ការចងចាំរបស់មនុស្ស» ហើយងាយនឹងភ្លេចភ្លាំង? តើអ្នកអាចបង្កើត Poka-Yoke ជួយពួកគេដោយរបៀបណា?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ កែសម្រួលទម្រង់បែបបទ ឬឯកសារការងារមួយដោយដាក់ Data Validation ឬ Checklist ច្បាស់លាស់។',
    ),

    // Lesson 5: 5S Methodology in Modern Operations
    LessonModel(
      id: 'lesson-supervisor-5',
      courseId: 'course-supervisor-ops',
      moduleId: 'mod-1',
      titleKh: '៥. ការគ្រប់គ្រងរបៀបរៀបរយតាមក្បួន 5S (5S Lean Workplace Organization)',
      titleEn: '5S Methodology: Sort, Set in Order, Shine, Standardize, Sustain',
      type: LessonType.text,
      orderIndex: 5,
      learningObjectives: '• យល់ដឹងពីជំហានទាំង ៥ នៃ 5S (រើសចោល រៀបចំ បោសសម្អាត ស្តង់ដារ និរន្តរភាព)។\n'
          '• អនុវត្ត 5S ទាំងលើកន្លែងធ្វើការជាក់ស្តែង និងលើទិន្នន័យឌីជីថល (Digital 5S)។\n'
          '• កាត់បន្ថយពេលវេលាស្វែងរកឯកសារ និងបង្កើនសុវត្ថិភាពការងារដល់បុគ្គលិក។',
      shortExplanation: '5S មិនមែនគ្រាន់តែជាការសម្អាតអនាម័យធម្មតានោះទេ ប៉ុន្តែជាមូលដ្ឋានគ្រឹះនៃវិន័យប្រតិបត្តិការ (Operational Discipline)។ ការសិក្សាបង្ហាញថា បុគ្គលិកការិយាល័យជាមធ្យមចំណាយពេលរហូតដល់ ២.៥ ម៉ោងក្នុងមួយសប្តាហ៍គ្រាន់តែដើម្បី «ស្វែងរកឯកសារ ឬឧបករណ៍ដែលបាត់»។ ការអនុវត្ត 5S បង្កើតបរិយាកាសការងារដែលមានប្រសិទ្ធភាពខ្ពស់ និងបង្កើនទំនុកចិត្តដល់អតិថិជនដែលមកទស្សនកិច្ច។',
      workplaceStory: '«នៅឃ្លាំងស្តុកគ្រឿងបន្លាស់រថយន្តមួយ ជាងជួសជុលតែងតែចំណាយពេល ១៥ ទៅ ២០ នាទីរាល់ពេលត្រូវការស្វែងរកប្រដាប់រឹតប៊ូឡុង ធ្វើឱ្យការជួសជុលឡានយឺតយ៉ាវជាប្រចាំ។ \n'
          'លោក វណ្ណា ជា Supervisor ថ្មី បានដឹកនាំធ្វើ 5S៖ \n'
          '១. Sort (សេរី)៖ បោះចោលដែក និងឧបករណ៍ដែលខូចប្រើលែងកើតចេញ។\n'
          '②. Set in Order (សេតុន)៖ គូសបន្ទាត់លើជញ្ជាំង និងព្យួរឧបករណ៍តាមទំហំ ដោយមានស្លាកឈ្មោះច្បាស់លាស់ (Shadow Board)។\n'
          '៣. Shine (សេសូ)៖ សម្អាតប្រេង និងធូលីចេញឱ្យភ្លឺរលោង។\n'
          '៤. Standardize (សេកេតស៊ុ)៖ បង្កើតច្បាប់ "យកពីណា ទុកនៅកន្លែងនោះវិញភ្លាម"។\n'
          '៥. Sustain (ស៊ីតស៊ូកេ)៖ ត្រួតពិនិត្យវិន័យរៀងរាល់ល្ងាច។ \n'
          'លទ្ធផល៖ ពេលវេលាស្វែងរកឧបករណ៍បានធ្លាក់ចុះមកត្រឹម ៥ វិនាទី ហើយទិន្នផលជួសជុលរថយន្តបានកើនឡើង ៣៥% ក្នុងខែដំបូង។»',
      practicalExample: '✅ របៀបអនុវត្ត Digital 5S លើកុំព្យូទ័រ និង Google Drive៖\n'
          '• Sort៖ លុប File ចាស់ៗ ឬ Duplicate files ចេញពី Desktop។\n'
          '• Set in Order៖ បង្កើតរចនាសម្ព័ន្ធ Folder ច្បាស់លាស់៖ [ឆ្នាំ] > [ឈ្មោះនាយកដ្ឋាន] > [ឈ្មោះគម្រោង]។\n'
          '• Standardize៖ កំណត់ស្តង់ដារដាក់ឈ្មោះ File ដូចជា៖ YYYY-MM-DD_ProjectName_v1.0.pdf។',
      practicalExercise: 'ជ្រើសរើសតំបន់មួយ (តុធ្វើការ ឃ្លាំង ឬ Shared Google Drive) ហើយអនុវត្តជំហាន 5S ឱ្យបានស្អាតបាតក្នុងរយៈពេល ៤៥ នាទី។',
      quizQuestions: [
        QuestionModel(
          id: 'q-supervisor-5',
          promptKh: 'តើជំហានណាដែលពិបាកបំផុត ប៉ុន្តែសំខាន់បំផុតនៅក្នុងដំណើរការ 5S?',
          promptEn: 'Which phase of 5S is typically the most difficult yet crucial for long-term success?',
          optionsKh: [
            'A. ជំហានទី ១ (Sort - បោះចោលរបស់ចាស់)។',
            'B. ជំហានទី ៥ (Sustain - ការរក្សាទម្លាប់ និងវិន័យឱ្យមាននិរន្តរភាពយូរអង្វែង)។',
            'C. ជំហានទី ៣ (Shine - ជូតសម្អាតធូលី)។',
          ],
          optionsEn: [
            'A. Phase 1 (Sort - discarding old materials).',
            'B. Phase 5 (Sustain - embedding discipline so habits never backslide).',
            'C. Phase 3 (Shine - wiping dust).',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ ជំហានទី ៥ (Sustain/Shitsuke) គឺជាការកសាងវិន័យ និងវប្បធម៌។ ការសម្អាតម្តងមិនពិបាកទេ តែការរក្សាវាឱ្យនៅស្អាតរាល់ថ្ងៃទើបជាការលំបាកពិតប្រាកដ។',
          explanationEn: 'Explanation: Sustaining operational discipline against backsliding is the hallmark of true lean culture.',
        ),
      ],
      reflection: 'តើកន្លែងធ្វើការ ឬកុំព្យូទ័ររបស់អ្នកមានភាពរញ៉េរញ៉ៃដែលធ្វើឱ្យអ្នកខាតពេលស្វែងរកឯកសារដែរឬទេ? តើអ្នកនឹងរៀបចំវាឡើងវិញនៅពេលណា?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ សម្អាត Desktop កុំព្យូទ័ររបស់អ្នកឱ្យនៅសល់តែ Icon ចាំបាច់ និងលុបឯកសារដែលលែងប្រើចោល។',
    ),

    // Lesson 6: Daily Standup & Morning Assembly (朝会 / Rapid Bottleneck Clearance)
    LessonModel(
      id: 'lesson-supervisor-6',
      courseId: 'course-supervisor-ops',
      moduleId: 'mod-1',
      titleKh: '៦. កិច្ចប្រជុំត្រួតពិនិត្យពេលព្រឹក «ក្បួនប្រជុំឈរ ១៥ នាទី» (Daily Standup: 朝会)',
      titleEn: 'Daily Standup & Rapid Bottleneck Clearance: The 15-Minute Morning Huddle',
      type: LessonType.text,
      orderIndex: 6,
      learningObjectives: '• យល់ដឹងពីក្បួនរៀបចំការប្រជុំឈរពេលព្រឹក (Morning Standup / 朝会 - ឆាវហួយ) ក្នុងរយៈពេល ១៥ នាទី។\n'
          '• ផ្តោតតែលើសំណួរគន្លឹះ ៣ (ម្សិលមិញធ្វើអ្វី? ថ្ងៃនេះធ្វើអ្វី? ជួបឧបសគ្គអ្វី?)។\n'
          '• បង្កើតស្មារតីរួបរួម និងដោះស្រាយការកកស្ទះការងារភ្លាមៗតាំងពីដើមថ្ងៃ។',
      shortExplanation: 'នៅក្រុមហ៊ុនផលិតកម្ម និងបច្ចេកវិទ្យាកំពូលៗរបស់ចិន ជប៉ុន និងលោកខាងលិច ការប្រជុំពេលព្រឹក (朝会) មិនមែនជាការអង្គុយស្តាប់មេនិយាយតែម្នាក់ឯងនោះទេ ប៉ុន្តែជាការប្រជុំ «ឈរ» រយៈពេលខ្លី ១០ ទៅ ១៥ នាទី។ ការឈរជួយកុំឱ្យមនុស្សនិយាយរឿងឥតប្រយោជន៍ និងធ្វើឱ្យគ្រប់គ្នាយល់ដឹងច្បាស់ពីទិសដៅការងាររួមប្រចាំថ្ងៃ។',
      workplaceStory: '«លោកស្រី ពិសី ជា Supervisor ផ្នែកបម្រើសេវាអតិថិជនតាមទូរស័ព្ទ (Call Center)។ កាលពីមុន នាងតែងតែរៀបចំការប្រជុំអង្គុយ ១ ម៉ោងនៅរៀងរាល់ព្រឹកថ្ងៃចន្ទ ដែលធ្វើឱ្យបុគ្គលិកងងុយដេក និងធុញទ្រាន់។ \n'
          'ក្រោយមក នាងបានប្តូរមកជា "កិច្ចប្រជុំឈរ ១០ នាទីរាល់ព្រឹក" នៅម៉ោង ៨:០០ ដល់ ៨:១០ នាទី។ សមាជិកម្នាក់ៗចំណាយពេលត្រឹមតែ ៤៥ វិនាទីឆ្លើយសំណួរ ៣៖ ១. ម្សិលមិញបិទបញ្ហាបានប៉ុន្មាន? ២. ថ្ងៃនេះត្រូវដោះស្រាយបញ្ហាធំមួយណា? ៣. តើត្រូវការឱ្យ Supervisor ឬផ្នែកដទៃជួយសម្រួលអ្វីខ្លះ? កិច្ចប្រជុំនេះបានជំរុញថាមពលការងារយ៉ាងខ្លាំង ហើយបញ្ហាស្មុគស្មាញត្រូវបានលើកមកដោះស្រាយភ្លាមៗនៅព្រឹកនោះ។»',
      practicalExample: '✅ ក្បួនដឹកនាំ Daily Standup ១៥ នាទី៖\n'
          '• ម៉ោង ០-២ នាទី៖ ស្វាគមន៍ ផ្តល់ព័ត៌មានបន្ទាន់ ឬសរសើរសមាជិកដែលមានស្នាដៃម្សិលមិញ។\n'
          '• ម៉ោង ៣-១២ នាទី៖ សមាជិកម្នាក់ៗរាយការណ៍តាមទម្រង់ ៣ សំណួរ (កុំនិយាយវែងអន្លាយ)។\n'
          '• ម៉ោង ១៣-១៥ នាទី៖ Supervisor សង្ខេបចំណុចត្រូវជួយដោះស្រាយ និង hô ស្មារតីចាប់ផ្តើមការងារ!',
      practicalExercise: 'អនុវត្តការរៀបចំកិច្ចប្រជុំឈរពេលព្រឹក (Standup Meeting) រយៈពេល ១៥ នាទីជាមួយក្រុមការងាររបស់អ្នកនៅព្រឹកស្អែក។',
      quizQuestions: [
        QuestionModel(
          id: 'q-supervisor-6',
          promptKh: 'ហេតុអ្វីបានជាកិច្ចប្រជុំ Daily Standup ត្រូវតម្រូវឱ្យអ្នកចូលរួម «ឈរ» ជំនួសឱ្យការអង្គុយ?',
          promptEn: 'Why are participants required to stand during a Daily Standup meeting?',
          optionsKh: [
            'A. ដើម្បីដាក់ទោសបុគ្គលិកដែលមកយឺត។',
            'B. ដើម្បីរក្សាការប្រជុំឱ្យខ្លី ចំគោលដៅ និងការពារកុំឱ្យមនុស្សនិយាយរឿងវែងអន្លាយឥតប្រយោជន៍។',
            'C. ដោយសារគ្មានកៅអីគ្រប់គ្រាន់នៅក្នុងការិយាល័យ។',
          ],
          optionsEn: [
            'A. To penalize employees who arrived late.',
            'B. To keep the meeting concise, focused, and prevent drifting into comfortable, rambling debates.',
            'C. Because of an office chair shortage.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ ការឈរជួយឱ្យមនុស្សមានស្មារតីប្រុងប្រយ័ត្ន ផ្តោតអារម្មណ៍ និងរក្សាពេលវេលាប្រជុំឱ្យនៅត្រឹម ១៥ នាទីតាមស្តង់ដារ។',
          explanationEn: 'Explanation: Standing creates natural urgency, keeping reports concise and preventing comfortable time-wasting.',
        ),
      ],
      reflection: 'តើកិច្ចប្រជុំនៅក្នុងក្រុមរបស់អ្នកកន្លងមកតែងតែអូសបន្លាយពេលយូរដោយគ្មានលទ្ធផលច្បាស់លាស់ដែរឬទេ? តើអ្នកអាចប្តូរមកជា Standup បានដោយរបៀបណា?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ កំណត់ម៉ោង Standup ១៥ នាទីសម្រាប់ព្រឹកស្អែក និងរំលឹកសមាជិកឱ្យត្រៀមចម្លើយ ៣ សំណួរជាមុន។',
    ),

    // Lesson 7: Quality Circles & Kaizen (Continuous Improvement / 改善)
    LessonModel(
      id: 'lesson-supervisor-7',
      courseId: 'course-supervisor-ops',
      moduleId: 'mod-1',
      titleKh: '៧. រង្វង់គ្រប់គ្រងគុណភាព និងការកែលម្អជាប្រចាំ (Quality Circles & Kaizen: 改善)',
      titleEn: 'Quality Control Circles (QCC) & Kaizen: Continuous Frontline Innovation',
      type: LessonType.text,
      orderIndex: 7,
      learningObjectives: '• យល់ដឹងពីទស្សនវិជ្ជា Kaizen (改善 - កែលម្អជាប្រចាំដើម្បីភាពល្អប្រសើរ)។\n'
          '• បង្កើតរង្វង់ត្រួតពិនិត្យគុណភាព (Quality Control Circles - QCC) ក្នុងចំណោមបុគ្គលិកប្រតិបត្តិការ។\n'
          '• លើកទឹកចិត្ត និងផ្តល់រង្វាន់ដល់គំនិតកែលម្អតូចតាចដែលជួយសន្សំពេលវេលា និងថវិកា។',
      shortExplanation: 'Kaizen (កៃហ្សិន) គឺជាជំនឿថា៖ «គ្មានដំណើរការណាដែលល្អឥតខ្ចោះរហូតដល់មិនអាចកែលម្អបាននោះឡើយ»។ ការផ្លាស់ប្តូរធំៗមិនចាំបាច់ទាល់តែចំណាយលុយរាប់ម៉ឺនដុល្លារទិញបច្ចេកវិទ្យាថ្មីនោះទេ ប៉ុន្តែវាអាចកើតចេញពីគំនិតកែលម្អតូចៗរបស់បុគ្គលិកជួរមុខរាល់ថ្ងៃ។ Supervisor ឆ្នើមតែងតែបង្កើតបរិយាកាសដែលបុគ្គលិកគ្រប់គ្នាសប្បាយចិត្តនឹងស្វែងរកវិធីធ្វើការងារឱ្យលឿនជាងមុន និងមានសុវត្ថិភាពជាងមុន។',
      workplaceStory: '«នៅក្នុងសណ្ឋាគារមួយ បុគ្គលិកផ្នែកបោកអ៊ុតតែងតែត្អូញត្អែរពីការឈឺខ្នងដោយសារត្រូវឱនរើសកម្រាលពូកចេញពីកន្ត្រកធំៗ។ \n'
          'លោក សាន ជា Housekeeping Supervisor បានបង្កើតការប្រជុំ QCC ជាមួយបុគ្គលិកបោកអ៊ុតដើម្បីពិភាក្សា។ បុគ្គលិកម្នាក់ឈ្មោះ ពៅ បានស្នើគំនិត Kaizen ដ៏ឆ្លាតវៃ៖ ដាក់រ៉ក និង lò xo នៅបាតកន្ត្រក ដើម្បីឱ្យបាតកន្ត្រករុញកម្រាលពូកឡើងលើស្វ័យប្រវត្តិកាលណាទម្ងន់ថយចុះ។ ការកែលម្អនេះចំណាយលុយត្រឹមតែ \$15 ក្នុងមួយកន្ត្រក ប៉ុន្តែបានជួយកាត់បន្ថយជំងឺឈឺចង្កេះរបស់បុគ្គលិក ៨០% និងបង្កើនល្បឿនបោកអ៊ុត ២៥%។ សណ្ឋាគារបានផ្តល់រង្វាន់លើកទឹកចិត្ត \$200 ដល់ពៅភ្លាមៗ។»',
      practicalExample: '✅ របៀបបង្កើតប្រព័ន្ធប្រអប់គំនិត Kaizen (The Kaizen Teian System)៖\n'
          '១. លើកទឹកចិត្តឱ្យបុគ្គលិកដាក់ស្នើគំនិតកែលម្អតូចៗ (សូម្បីតែកាត់បន្ថយការដើរ ២ ជំហាន ឬសន្សំក្រដាស ១ សន្លឹក)។\n'
          '២. Supervisor ត្រូវពិនិត្យ និងឆ្លើយតបចំពោះគ្រប់គំនិតក្នុងរយៈពេល ៤៨ ម៉ោង (កុំទុកចោល)។\n'
          '៣. ប្រសិនបើគំនិតនោះត្រូវបានអនុវត្ត ត្រូវផ្តល់រង្វាន់លើកទឹកចិត្ត និងបិទរូបសរសើរលើក្តារព័ត៌មាន។',
      practicalExercise: 'សួរនាំបុគ្គលិកជួរមុខរបស់អ្នកនៅថ្ងៃនេះថា៖ «តើមានកិច្ចការណាដែលធ្វើឱ្យអ្នកពិបាក ឬធុញទ្រាន់បំផុត?» ហើយសហការជាមួយពួកគេដើម្បីបង្កើតដំណោះស្រាយ Kaizen តូចមួយ។',
      quizQuestions: [
        QuestionModel(
          id: 'q-supervisor-7',
          promptKh: 'តើទស្សនវិជ្ជា Kaizen (改善) ផ្តោតលើប្រភេទនៃការកែលម្អបែបណា?',
          promptEn: 'What type of improvement does Kaizen (改善) fundamentally focus on?',
          optionsKh: [
            'A. ការរុះរើរចនាសម្ព័ន្ធក្រុមហ៊ុនទាំងមូល និងការវិនិយោគទុនរាប់លានដុល្លារតែម្តង។',
            'B. ការកែលម្អបន្តិចម្តងៗជាប្រចាំ និងជាបន្តបន្ទាប់ដោយបុគ្គលិកគ្រប់ជាន់ថ្នាក់ (Small, continuous daily incremental improvements)។',
            'C. ការទិញបច្ចេកវិទ្យាបរទេសថ្លៃៗដោយមិនបាច់បណ្តុះបណ្តាលបុគ្គលិក។',
          ],
          optionsEn: [
            'A. Massive restructuring and multi-million dollar capital investments.',
            'B. Small, continuous daily incremental improvements contributed by all employees.',
            'C. Buying expensive foreign technology without staff training.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ Kaizen គឺជាទស្សនវិជ្ជាកែលម្អជាប្រចាំពីមួយថ្ងៃទៅមួយថ្ងៃ ដោយចាប់ផ្តើមពីចំណុចតូចតាចដែលបុគ្គលិកជួរមុខអាចធ្វើបានភ្លាមៗ។',
          explanationEn: 'Explanation: Kaizen champions relentless small-scale daily refinements executed continuously by everyone.',
        ),
      ],
      reflection: 'តើបុគ្គលិកក្នុងផ្នែករបស់អ្នកហ៊ានបញ្ចេញគំនិតកែលម្អការងារទេ? តើអ្នកបានផ្តល់ការកោតសរសើរដល់គំនិតរបស់ពួកគេកម្រិតណា?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ទទួលយកគំនិតកែលម្អតូចមួយពីសមាជិកជួរមុខ ហើយជួយពួកគេអនុវត្តវាឱ្យចេញជាលទ្ធផលក្នុងសប្តាហ៍នេះ។',
    ),

    // Lesson 8: Lean Wastage Elimination (Eliminating the 8 Wastes / 消除八大浪费)
    LessonModel(
      id: 'lesson-supervisor-8',
      courseId: 'course-supervisor-ops',
      moduleId: 'mod-1',
      titleKh: '៨. ការលុបបំបាត់ការខ្ជះខ្ជាយធំៗ ៨ យ៉ាងក្នុងប្រតិបត្តិការ (Lean: The 8 Wastes - TIMWOODS)',
      titleEn: 'Operational Lean Excellence: Identifying & Eliminating the 8 Wastes (Muda)',
      type: LessonType.text,
      orderIndex: 8,
      learningObjectives: '• ស្គាល់ច្បាស់ពីការខ្ជះខ្ជាយទាំង ៨ (TIMWOODS: Transport, Inventory, Motion, Waiting, Overproduction, Over-processing, Defects, Skills)។\n'
          '• ចេះគណនាថ្លៃដើមដែលបាត់បង់ដោយសារការរង់ចាំ និងការកែកំហុសឡើងវិញ (Rework)។\n'
          '• បង្កើនទិន្នផលប្រតិបត្តិការដោយមិនចាំបាច់បន្ថែមបុគ្គលិក ឬបង្កើនម៉ោងធ្វើការ។',
      shortExplanation: 'នៅក្នុងប្រព័ន្ធគ្រប់គ្រងបែប Lean (Muda / 无駄) ប្រាក់ចំណេញរបស់ក្រុមហ៊ុនមិនមែនកើតឡើងត្រឹមតែពីការបង្កើនការលក់នោះទេ ប៉ុន្តែកើតចេញពី «ការកាត់បន្ថយការខ្ជះខ្ជាយដែលលាក់កំបាំង»។ ការខ្ជះខ្ជាយរួមមាន៖ ការរង់ចាំឯកសារ (Waiting), ការផលិតលើសតម្រូវការ (Overproduction), ការកែការងារខុសឡើងវិញ (Defects), និងការមិនប្រើប្រាស់សមត្ថភាពបុគ្គលិកឱ្យអស់លទ្ធភាព (Underutilized Talent)។ Supervisor ឆ្នើមគឺជាអ្នកប្រមាញ់ការខ្ជះខ្ជាយ។',
      workplaceStory: '«នៅរោងពុម្ពមួយ លោក ដារ៉ា ជា Production Supervisor បានកត់សម្គាល់ឃើញថា ជាងពុម្ពតែងតែឈររង់ចាំក្រដាសពីឃ្លាំងជាមធ្យម ៤០ នាទីរាល់ព្រឹក (Waiting Waste)។ លើសពីនេះ ដោយសារខ្លាចខ្វះ ពួកគេតែងតែព្រីនលើសចំនួន ៥០០ សន្លឹកក្នុងមួយក្បាលដែលគ្មានអ្នកណាទិញ (Overproduction Waste)។ \n'
          'ដារ៉ាបានរៀបចំប្រព័ន្ធបញ្ជាទិញក្រដាសជាមុន ១ ថ្ងៃ (Just-In-Time) និងកំណត់ស្តង់ដារព្រីនលើសត្រឹមតែ ២% សម្រាប់តេស្តពណ៌។ ត្រឹមតែមួយខែ រោងពុម្ពបានសន្សំថ្លៃក្រដាសបាន \$4,500 និងសន្សំម៉ោងរង់ចាំរបស់ជាងពុម្ពបាន ១២០ ម៉ោង។ ក្រុមហ៊ុនបានយកប្រាក់ចំណេញដែលសន្សំបាននេះមកដំឡើងប្រាក់ខែឱ្យបុគ្គលិកទាំងអស់។»',
      practicalExample: '✅ ក្បួនត្រួតពិនិត្យការខ្ជះខ្ជាយ ៨ យ៉ាង (The TIMWOODS Framework)៖\n'
          '• T (Transport)៖ ការដឹកជញ្ជូនឯកសារ ឬសម្ភារៈទៅមកច្រើនដងដោយមិនចាំបាច់។\n'
          '• I (Inventory)៖ ការស្តុកទំនិញច្រើនហួសប្រមាណធ្វើឱ្យកប់ដើមទុន។\n'
          '• M (Motion)៖ ការដើរ ឬចលនារាងកាយដែលឥតប្រយោជន៍។\n'
          '• W (Waiting)៖ ការឈររង់ចាំការអនុម័ត ឬរង់ចាំវត្ថុធាតុដើម។\n'
          '• O (Overproduction)៖ ការធ្វើការងារមុនតម្រូវការ ឬច្រើនជាងតម្រូវការ។\n'
          '• O (Over-processing)៖ ការរចនា ឬត្រួតពិនិត្យច្រើនតង់ហួសពីការចង់បានរបស់អតិថិជន។\n'
          '• D (Defects)៖ ការងារខូចដែលត្រូវចំណាយពេលកែឡើងវិញ (Rework)។\n'
          '• S (Skills)៖ ការមិនប្រើប្រាស់ទេពកោសល្យ និងគំនិតច្នៃប្រឌិតរបស់បុគ្គលិក។',
      practicalExercise: 'ដើរពិនិត្យការងាររបស់អ្នកនៅថ្ងៃនេះ ហើយស្វែងរកយ៉ាងហោចណាស់ការខ្ជះខ្ជាយចំនួន ២ ក្នុងចំណោម TIMWOODS រួចរៀបចំផែនការកាត់បន្ថយវា។',
      quizQuestions: [
        QuestionModel(
          id: 'q-supervisor-8',
          promptKh: 'ក្នុងចំណោមការខ្ជះខ្ជាយទាំង ៨ (TIMWOODS) តើការខ្ជះខ្ជាយមួយណាដែលចាត់ទុកថាគ្រោះថ្នាក់បំផុតព្រោះវាបង្កើតការខ្ជះខ្ជាយដទៃទៀត?',
          promptEn: 'Among the 8 Lean wastes (TIMWOODS), which waste is considered the most hazardous because it breeds all other wastes?',
          optionsKh: [
            'A. Overproduction (ការផលិតលើសតម្រូវការជាក់ស្តែង)។',
            'B. Motion (ចលនារាងកាយ)។',
            'C. Transport (ការដឹកជញ្ជូន)។',
          ],
          optionsEn: [
            'A. Overproduction (producing more or earlier than customer demand).',
            'B. Motion (excess movement).',
            'C. Transport (moving materials).',
          ],
          correctOptionIndex: 0,
          explanationKh: 'ការពន្យល់៖ Overproduction គឺជាមេនៃការខ្ជះខ្ជាយទាំងអស់ ព្រោះវាបង្កឱ្យកើតមានការស្តុកទុក (Inventory) ការដឹកជញ្ជូនលើស (Transport) និងការខូចខាត (Defects)។',
          explanationEn: 'Explanation: Overproduction ties up working capital, forces storage overhead, and multiplies defect risks.',
        ),
      ],
      reflection: 'តើមានកិច្ចការណាខ្លះដែលអ្នក និងក្រុមការងារកំពុងធ្វើជារៀងរាល់ថ្ងៃ ប៉ុន្តែមិនបានបង្កើតតម្លៃបន្ថែមដល់អតិថិជនសូម្បីតែបន្តិច?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ កំណត់ដំណើរការរង់ចាំ (Waiting time) មួយនៅក្នុងផ្នែករបស់អ្នក ហើយកាត់បន្ថយវាឱ្យបាន ៥០% តាមរយៈការសម្រួលការអនុម័ត។',
    ),

    // Lesson 9: Shift Handovers & Operational Continuity
    LessonModel(
      id: 'lesson-supervisor-9',
      courseId: 'course-supervisor-ops',
      moduleId: 'mod-1',
      titleKh: '៩. ការផ្ទេរវេនការងារ និងការរក្សាស្ថេរភាពប្រតិបត្តិការ (Shift Handover Excellence)',
      titleEn: 'Shift Handover Protocols: Ensuring Zero-Defect Operational Continuity',
      type: LessonType.text,
      orderIndex: 9,
      learningObjectives: '• យល់ដឹងពីសារៈសំខាន់នៃការផ្ទេរវេនការងារ (Shift Handover) ក្នុងការការពារការដាច់ចង្វាក់ផលិតកម្ម។\n'
          '• អនុវត្តទម្រង់កត់ត្រាការផ្ទេរវេន (Handover Logbook) ដែលច្បាស់លាស់ទាំងផ្ទាល់មាត់ និងជាលាយលក្ខណ៍អក្សរ។\n'
          '• ធានាថារាល់បញ្ហាមិនប្រក្រតី (Abnormalities) ត្រូវបានបញ្ជូនទៅវេនបន្ទាប់ដោយគ្មានការបាត់បង់ព័ត៌មាន។',
      shortExplanation: 'ការសិក្សាផ្នែកសុវត្ថិភាពឧស្សាហកម្មបានរកឃើញថា ជាង ៧០% នៃគ្រោះថ្នាក់ការងារ និងការខូចខាតឧបករណ៍ធ្ងន់ធ្ងរ កើតឡើងក្នុងអំឡុងពេល «៣០ នាទីដំបូងនៃការប្តូរវេនការងារ»។ មូលហេតុគឺដោយសារការផ្ទេរព័ត៌មានមិនពេញលេញរវាងវេនចេញ និងវេនចូល។ Supervisor ត្រូវតែបង្កើតពិធីសារផ្ទេរវេនដ៏ម៉ត់ចត់ (The Handover Protocol) ដើម្បីធានាថាប្រតិបត្តិការដំណើរការដូចខ្សែទឹកហូរដោយគ្មានការរអាក់រអួល។',
      workplaceStory: '«នៅរោងចក្រផលិតចំណីអាហារមួយ វេនយប់បានកត់សម្គាល់ឃើញថាសីតុណ្ហភាពម៉ាស៊ីនត្រជាក់បន្ទប់ស្តុកសាច់ឡើងកម្តៅខុសធម្មតា ប៉ុន្តែពេលចប់ម៉ោងនៅម៉ោង ៦ ព្រឹក ពួកគេគ្រាន់តែនិយាយប្រាប់វេនព្រឹកដោយផ្ទាល់មាត់កាត់ៗថា "មើលម៉ាស៊ីនផង!" រួចប្រញាប់ទៅផ្ទះ។ \n'
          'វេនព្រឹកមិនបានដឹងពីភាពបន្ទាន់ឡើយ។ ពីរម៉ោងក្រោយមក ម៉ាស៊ីនត្រជាក់បានខូចទាំងស្រុង ធ្វើឱ្យសាច់មាន់ស្រស់ទម្ងន់ ៣ តោនត្រូវខូចគុណភាព ខាតបង់ប្រាក់ជាង \$8,000។ ក្រោយឧបទ្ទវហេតុនេះ Supervisor ក្រុមហ៊ុនបានដាក់ចេញនូវក្បួន Handover ស្តង់ដារ៖ Supervisor វេនទាំងពីរត្រូវដើរពិនិត្យផ្ទៀងផ្ទាត់ជាមួយគ្នាផ្ទាល់ភ្នែក និងចុះហត្ថលេខាលើ Logbook រួមគ្នា។ ចាប់ពីពេលនោះមក គ្មានឧប្បត្តិហេតុបែបនេះកើតឡើងម្តងទៀតឡើយ។»',
      practicalExample: '✅ ពិធីសារផ្ទេរវេន ៣ ជំហាន (The 3-Step Handover Protocol)៖\n'
          '១. [Written Log]៖ វេនចាស់កត់ត្រាស្ថានភាពគ្រឿងចក្រ បញ្ជីទំនិញសម្រេច និងបញ្ហាមិនប្រក្រតីក្នុង Logbook ៣០ នាទីមុនចប់វេន។\n'
          '②. [Face-to-Face Walkthrough]៖ មេវេនទាំងពីរជួបគ្នា និងដើរពិនិត្យកន្លែងធ្វើការជាមួយគ្នាផ្ទាល់រយៈពេល ១០ នាទី។\n'
          '៣. [Sign-off]៖ មេវេនថ្មីសួរបញ្ជាក់ឱ្យអស់ចម្ងល់ រួចចុះហត្ថលេខាទទួលខុសត្រូវជាផ្លូវការ។',
      practicalExercise: 'បង្កើតទម្រង់ Shift Handover Checklist មួយទំព័រសម្រាប់ក្រុមការងាររបស់អ្នក ដើម្បីប្រើប្រាស់ក្នុងការផ្ទេរការងាររវាងវេន ឬរវាងថ្ងៃ។',
      quizQuestions: [
        QuestionModel(
          id: 'q-supervisor-9',
          promptKh: 'តើវិធីសាស្ត្រផ្ទេរវេនការងារ (Shift Handover) បែបណាដែលមានសុវត្ថិភាព និងវិជ្ជាជីវៈបំផុត?',
          promptEn: 'Which shift handover methodology is the most secure and professional?',
          optionsKh: [
            'A. ស្រែកប្រាប់ពីចម្ងាយពេលដើរចេញទៅផ្ទះ។',
            'B. ការរួមបញ្ចូលគ្នារវាងកំណត់ហេតុជាលាយលក្ខណ៍អក្សរ (Logbook) និងការដើរពិនិត្យផ្ទៀងផ្ទាត់ផ្ទាល់មាត់រវាងមេវេនទាំងពីរ (Face-to-face walk)។',
            'C. មិនបាច់ប្រាប់អ្វីទាំងអស់ ទុកឱ្យវេនបន្ទាប់ស្វែងយល់ដោយខ្លួនឯង។',
          ],
          optionsEn: [
            'A. Shouting verbal notes while rushing to the parking lot.',
            'B. Structured written logbook paired with a mandatory joint face-to-face walkthrough and sign-off.',
            'C. Saying nothing and letting the incoming shift discover issues.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ ការផ្ទេរវេនប្រកបដោយវិជ្ជាជីវៈទាមទារទាំងឯកសារកត់ត្រាច្បាស់លាស់ និងការជួបផ្ទៀងផ្ទាត់ដោយផ្ទាល់ ដើម្បីការពារការបាត់បង់ព័ត៌មានសំខាន់ៗ។',
          explanationEn: 'Explanation: Dual-verification via written logs and visual walkthrough eliminates dangerous operational blind spots.',
        ),
      ],
      reflection: 'តើការងារក្នុងក្រុមរបស់អ្នកធ្លាប់ជួបបញ្ហាដោយសារការផ្ទេរការងារមិនច្បាស់លាស់រវាងសហការីដែរឬទេ?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ មុននឹងចេញពីធ្វើការ ចូររៀបចំកំណត់ហេតុផ្ទេរការងារ (Handover Notes) យ៉ាងច្បាស់លាស់ជូនអ្នកដែលត្រូវបន្តការងារស្អែក។',
    ),

    // Lesson 10: Translating Executive Strategy into Daily Shift Targets
    LessonModel(
      id: 'lesson-supervisor-10',
      courseId: 'course-supervisor-ops',
      moduleId: 'mod-1',
      titleKh: '១០. ការបំប្លែងយុទ្ធសាស្ត្រថ្នាក់លើទៅជាទិន្នផលប្រចាំថ្ងៃ (Translating Strategy to Daily Quotas)',
      titleEn: 'Translating Corporate Strategy into Daily Frontline Shift Quotas',
      type: LessonType.text,
      orderIndex: 10,
      learningObjectives: '• យល់ដឹងពីតួនាទីស្នូលរបស់ Supervisor ក្នុងនាមជា «ស្ពានតភ្ជាប់» រវាងនាយកប្រតិបត្តិ និងបុគ្គលិកជួរមុខ។\n'
          '• ចេះបំបែកគោលដៅប្រចាំឆ្នាំ ឬប្រចាំត្រីមាស ទៅជាកូតាប្រចាំខែ ប្រចាំសប្តាហ៍ និងប្រចាំម៉ោង។\n'
          '• បង្កើតផ្ទាំងគ្រប់គ្រងមើលឃើញដោយភ្នែក (Visual Management Board) សម្រាប់តាមដានទិន្នផលជាក់ស្តែង។',
      shortExplanation: 'ថ្នាក់ដឹកនាំជាន់ខ្ពស់និយាយជាភាសាយុទ្ធសាស្ត្រដូចជា «បង្កើន EBITDA ១៥%» ឬ «កាត់បន្ថយ OPEX» ដែលបុគ្គលិកជួរមុខមិនយល់ និងមិនខ្វល់ឡើយ។ តម្លៃពិតប្រាកដរបស់ Supervisor គឺសមត្ថភាពក្នុងការ «បកប្រែ» គោលដៅអរូបីទាំងនោះ ឱ្យទៅជាសកម្មភាពជាក់ស្តែងប្រចាំថ្ងៃ៖ «ថ្ងៃនេះវេនយើងត្រូវផលិតឱ្យបាន ៥០០ កេស ដោយមិនឱ្យខូចលើសពី ៣ កេស»។ នៅពេលគោលដៅច្បាស់លាស់ បុគ្គលិកនឹងមានទឹកចិត្តប្រឹងប្រែង។',
      workplaceStory: '«ក្នុងកិច្ចប្រជុំប្រចាំឆ្នាំ CEO បានប្រកាសថា ក្រុមហ៊ុនត្រូវបង្កើនប្រាក់ចំណេញសុទ្ធ ២០% តាមរយៈការកាត់បន្ថយថ្លៃដើមដឹកជញ្ជូន។ បុគ្គលិកផ្នែកឃ្លាំងបានស្តាប់ហើយមានអារម្មណ៍ធុញទ្រាន់ ព្រោះគិតថាមិនទាក់ទងនឹងពួកគេ។ \n'
          'ប៉ុន្តែ លោក ចាន់ណា ជា Warehouse Supervisor បានបំប្លែងយុទ្ធសាស្ត្រនេះមកជាភាសាសាមញ្ញនៅលើក្តារព័ត៌មានធំមួយនៅមាត់ទ្វារឃ្លាំង៖ "ដើម្បីជួយក្រុមហ៊ុនសម្រេចគោលដៅ ក្រុមយើងត្រូវវេចខ្ចប់ទំនិញឱ្យបាន ២០ កេសក្នុងមួយម៉ោង ហើយរៀបចំជង់លើ Pallet ឱ្យត្រឹមត្រូវដើម្បីកុំឱ្យទំនិញបាក់បែក"។ គាត់បានបង្កើតការប្រកួតប្រជែងតូចមួយ និងតាមដានលេខរៀងរាល់ ២ ម៉ោងម្តង។ បុគ្គលិកឃ្លាំងយល់ច្បាស់ពីតួនាទីរបស់ខ្លួន ហើយបានជួយក្រុមហ៊ុនកាត់បន្ថយការខូចខាតទំនិញបាន ៣០%។»',
      practicalExample: '✅ រូបមន្តបំប្លែងគោលដៅយុទ្ធសាស្ត្រជាទិន្នផលជួរមុខ៖\n'
          '១. [យុទ្ធសាស្ត្រក្រុមហ៊ុន]៖ "បង្កើនការពេញចិត្តរបស់អតិថិជន (CSAT) ឡើងដល់ ៩០%"\n'
          '②. [បកប្រែជាភាសា Supervisor]៖ "ឆ្លើយតបការហៅចូលរបស់ភ្ញៀវក្នុងរយៈពេលតិចជាង ៣ រោទ៍ និងមិនទុកឱ្យភ្ញៀវរង់ចាំលើសពី ៣០ វិនាទី"\n'
          '៣. [ការវាស់វែងជាក់ស្តែង]៖ បង្ហាញតួលេខលើអេក្រង់ផ្សាយផ្ទាល់ (Live Dashboard) ឱ្យបុគ្គលិកមើលឃើញទាំងអស់គ្នា។',
      practicalExercise: 'យកគោលដៅធំមួយរបស់ក្រុមហ៊ុនអ្នកនៅត្រីមាសនេះ ហើយបំបែកវាទៅជាសកម្មភាពជាក់លាក់ប្រចាំថ្ងៃសម្រាប់ក្រុមការងាររបស់អ្នក។',
      quizQuestions: [
        QuestionModel(
          id: 'q-supervisor-10',
          promptKh: 'តើវិធីណាដែលល្អបំផុតសម្រាប់ Supervisor ក្នុងការពន្យល់គោលដៅយុទ្ធសាស្ត្ររបស់ក្រុមហ៊ុនទៅកាន់បុគ្គលិកជួរមុខ?',
          promptEn: 'What is the best way for a supervisor to convey corporate strategic goals to frontline workers?',
          optionsKh: [
            'A. អានឯកសារយុទ្ធសាស្ត្រហិរញ្ញវត្ថុរបស់ Board of Directors ទាំងស្រុងឱ្យពួកគេស្តាប់។',
            'B. បំប្លែងយុទ្ធសាស្ត្រធំៗទៅជាទិន្នផលសកម្មភាពប្រចាំថ្ងៃជាក់ស្តែង (Daily actionable quotas) ដែលបុគ្គលិកយល់ និងអាចគ្រប់គ្រងបាន។',
            'C. គំរាមកំហែងថានឹងបណ្តេញចេញប្រសិនបើក្រុមហ៊ុនមិនសម្រេចគោលដៅប្រាក់ចំណេញ។',
          ],
          optionsEn: [
            'A. Read the entire complex financial strategy document verbatim.',
            'B. Deconstruct high-level goals into simple, concrete daily quotas and behavioral metrics frontline workers control directly.',
            'C. Threaten mass layoffs if enterprise profitability dips.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ បុគ្គលិកជួរមុខត្រូវការភាពច្បាស់លាស់៖ តើថ្ងៃនេះខ្ញុំត្រូវធ្វើអ្វីឱ្យបានប៉ុន្មាន? ការបកប្រែគោលដៅធំជាទិន្នផលប្រចាំថ្ងៃគឺជាជំនាញស្នូលរបស់ Supervisor។',
          explanationEn: 'Explanation: Translating abstract corporate metrics into tangible frontline daily quotas drives real execution.',
        ),
      ],
      reflection: 'តើសមាជិកក្រុមជួរមុខរបស់អ្នកដឹងច្បាស់ទេថា ការងារប្រចាំថ្ងៃរបស់ពួកគេជួយដល់ភាពជោគជ័យរបស់ក្រុមហ៊ុនទាំងមូលដោយរបៀបណា?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ សរសេរគោលដៅទិន្នផលជាក់លាក់ប្រចាំថ្ងៃលើក្តារព័ត៌មាន ឬ Group Chat របស់ក្រុមនៅព្រឹកនេះ។',
    ),
  ];

  // =========================================================================
  // 6. MANAGER EXTRA LESSONS (Lessons 7 to 10)
  // =========================================================================
  static final List<LessonModel> managerLessons = [
    // Lesson 7: Sun Tzu's Strategic Momentum vs. Blame (求之于势 不责于人)
    LessonModel(
      id: 'lesson-manager-7',
      courseId: 'course-manager-conflict',
      moduleId: 'mod-1',
      titleKh: '៧. សិល្បៈយុទ្ធសាស្ត្រស៊ុនអ៊ូ «កសាងកម្លាំងរុញច្រាន មិនបន្ទោសមនុស្ស» (Sun Tzu: Momentum over Blame)',
      titleEn: 'Sun Tzu Art of War: Creating Strategic Momentum Instead of Blaming People',
      type: LessonType.text,
      orderIndex: 7,
      learningObjectives: '• យល់ដឹងពីទស្សនវិជ្ជាស៊ុនអ៊ូ (Sun Tzu): «善战者 求之于势 不责于人» (អ្នកចម្បាំងដ៏ចំណាន ស្វែងរកជ័យជម្នះពីកម្លាំងរុញច្រាននៃកាលៈទេសៈ មិនបន្ទោសមនុស្សឡើយ)។\n'
          '• បង្កើតប្រព័ន្ធការងារ និងការលើកទឹកចិត្តដែលជំរុញឱ្យមនុស្សចង់ខិតខំប្រឹងប្រែងដោយស្វ័យប្រវត្តិ។\n'
          '• ផ្លាស់ប្តូរការគ្រប់គ្រងពី «ការតាមស្តីបន្ទោសបុគ្គលិក» មកជា «ការរៀបចំកម្លាំងយុទ្ធសាស្ត្រ (Shi / 势)»។',
      shortExplanation: 'ទស្សនវិទូយុទ្ធសាស្ត្រ ស៊ុនអ៊ូ បានបង្រៀនថា ប្រសិនបើអ្នករុញដុំថ្មមូលមួយឱ្យរមៀលចុះពីលើកំពូលភ្នំកម្ពស់រាប់ពាន់ម៉ែត្រ ដុំថ្មនោះនឹងមានកម្លាំងរុញច្រានមហិមាដែលគ្មានអ្វីអាចទប់ស្កាត់បាន។ នេះហៅថា «កម្លាំងរុញច្រាននៃកាលៈទេសៈ (势 - Shi)»។ អ្នកគ្រប់គ្រងទន់ខ្សោយតែងតែខឹង និងស្តីបន្ទោសបុគ្គលិកថាខ្ជិល។ រីឯ Manager ឆ្នើមយល់ថា៖ មនុស្សធ្វើសកម្មភាពតាមប្រព័ន្ធ និងរចនាសម្ព័ន្ធលើកទឹកចិត្ត (Incentive Structure)។ បង្កើតកម្លាំងរុញច្រានត្រឹមត្រូវ មនុស្សធម្មតានឹងបង្កើតលទ្ធផលអស្ចារ្យ។',
      workplaceStory: '«លោក សុវណ្ណ ជា Manager ផ្នែកលក់អចលនទ្រព្យ។ កាលពីមុន បុគ្គលិកផ្នែកលក់មិនសូវសហការជាមួយផ្នែកទីផ្សារទេ ហើយតែងតែបន្ទោសគ្នាទៅវិញទៅមកពេលលក់មិនដាច់។ សុវណ្ណតែងតែខឹង និងកោះប្រជុំស្តីបន្ទោសរាល់សប្តាហ៍ ប៉ុន្តែស្ថានភាពនៅតែដដែល។ \n'
          'ក្រោយពីយល់ដឹងពីក្បួនស៊ុនអ៊ូ «求之于势 不责于人» គាត់បានផ្លាស់ប្តូរប្រព័ន្ធទាំងស្រុង៖ គាត់បានបង្កើតរចនាសម្ព័ន្ធកម្រៃជើងសាររួម (Shared Commission Pool) ដែលផ្នែកលក់ និងផ្នែកទីផ្សារទទួលបានប្រាក់រង្វាន់បន្ថែមជាមួយគ្នាប្រសិនបើអត្រាបិទការលក់កើនឡើង។ ភ្លាមៗនោះ កម្លាំងរុញច្រាន (势) បានកើតឡើង៖ ផ្នែកលក់បានស្ម័គ្រចិត្តទៅជួយផ្នែកទីផ្សារផលិតវីដេអូ ហើយផ្នែកទីផ្សារបានជួយតាមដានភ្ញៀវ។ ការលក់បានកើនឡើង ៣០០% ដោយសុវណ្ណមិនបាច់ស្រែកស្តីបន្ទោសមនុស្សម្នាក់ណាឡើយ។»',
      practicalExample: '✅ របៀបបង្កើតកម្លាំងរុញច្រានយុទ្ធសាស្ត្រ (Building Strategic "Shi")៖\n'
          '១. [Incentive Alignment]៖ តម្រឹមផលប្រយោជន៍របស់បុគ្គលិកឱ្យស្របគ្នាជាមួយផលប្រយោជន៍របស់ក្រុមហ៊ុន។\n'
          '②. [Remove Friction]៖ កាត់បន្ថយឧបសគ្គស្មុគស្មាញ និងដំណើរការអនុម័តដែលរារាំងល្បឿនការងារ។\n'
          '៣. [Celebrate Small Wins]៖ បង្កើតជ័យជម្នះតូចៗជាប្រចាំដើម្បីកសាងទំនុកចិត្ត និងសន្ទុះចិត្តសាស្ត្រក្នុងក្រុម។',
      practicalExercise: 'វិភាគបញ្ហាមួយក្នុងនាយកដ្ឋានរបស់អ្នកដែលអ្នកធ្លាប់ស្តីបន្ទោសបុគ្គលិក ហើយស្វែងរកវិធីកែសម្រួលប្រព័ន្ធ ឬរចនាសម្ព័ន្ធលើកទឹកចិត្តដើម្បីដោះស្រាយវាដោយស្វ័យប្រវត្តិ។',
      quizQuestions: [
        QuestionModel(
          id: 'q-manager-7',
          promptKh: 'តាមទស្សនវិជ្ជាស៊ុនអ៊ូ (Sun Tzu) តើអ្វីជាវិធីសាស្ត្ររបស់មេដឹកនាំដ៏ចំណាន (善战者)?',
          promptEn: 'According to Sun Tzu, how does a masterful leader achieve victory?',
          optionsKh: [
            'A. តាមដានចាប់កំហុស និងដាក់ទណ្ឌកម្មបុគ្គលិកឱ្យបានធ្ងន់ធ្ងរបំផុត។',
            'B. ស្វែងរកជ័យជម្នះពីការរៀបចំកម្លាំងរុញច្រាន និងបរិបទយុទ្ធសាស្ត្រ (势) ជាជាងការបន្ទោសបុគ្គលិកម្នាក់ៗ (求之于势 不责于人)។',
            'C. បង្ខំបុគ្គលិកឱ្យធ្វើការ ២៤ ម៉ោងដោយគ្មានសម្រាក។',
          ],
          optionsEn: [
            'A. Micromanage and inflict severe punishments on individuals.',
            'B. Harness strategic momentum and system incentives (Shi) rather than placing blame on individuals.',
            'C. Force 24-hour work shifts without rest.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ ស៊ុនអ៊ូបង្រៀនឱ្យពឹងផ្អែកលើកម្លាំងរុញច្រាននៃប្រព័ន្ធ និងបរិបទយុទ្ធសាស្ត្រ ព្រោះកម្លាំងប្រព័ន្ធខ្លាំងជាងការបង្ខំមនុស្ស។',
          explanationEn: 'Explanation: Masterful commanders engineer favorable conditions and systemic momentum rather than scolding individuals.',
        ),
      ],
      reflection: 'តើអ្នកកំពុងចំណាយថាមពលច្រើនលើការព្យាយាម "កែប្រែមនុស្ស" ឬលើ "ការកែប្រែប្រព័ន្ធលើកទឹកចិត្ត" របស់ពួកគេ?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ពិនិត្យមើលរចនាសម្ព័ន្ធ KPI និងការលើកទឹកចិត្តរបស់ក្រុមអ្នក ថាតើវាជំរុញកិច្ចសហការ ឬបង្កជម្លោះ។',
    ),

    // Lesson 8: Resolving Inter-Departmental Turf Wars (Principled Negotiation)
    LessonModel(
      id: 'lesson-manager-8',
      courseId: 'course-manager-conflict',
      moduleId: 'mod-1',
      titleKh: '៨. ការសម្រុះសម្រួលជម្លោះអំណាចរវាងនាយកដ្ឋាន (Resolving Inter-Departmental Turf Wars)',
      titleEn: 'Mediating Inter-Departmental Conflicts: Principled Negotiation Frameworks',
      type: LessonType.text,
      orderIndex: 8,
      learningObjectives: '• យល់ដឹងពីឫសគល់នៃសង្គ្រាមដណ្តើមទឹកដី (Turf Wars) និងថវិការវាងនាយកដ្ឋាននីមួយៗ។\n'
          '• អនុវត្តវិធីសាស្ត្រចរចាតាមគោលការណ៍របស់ Harvard (Principled Negotiation: Separate People from Problem)។\n'
          '• បង្កើតកិច្ចព្រមព្រៀងកម្រិតសេវាកម្មផ្ទៃក្នុង (Internal Service Level Agreement - SLA) ប្រកបដោយតម្លាភាព។',
      shortExplanation: 'នៅពេលក្រុមហ៊ុនរីកធំឡើង Manager នីមួយៗច្រើនតែចាប់ផ្តើមកសាង «អាណាចក្រផ្ទាល់ខ្លួន» (Empire Building) ដោយការពារថវិកា និងធនធានរបស់ខ្លួនយ៉ាងស្វិតស្វាញ ដែលបង្កជាជម្លោះអន្តរនាយកដ្ឋាន។ Manager ដែលមានភាពចាស់ទុំយល់ថា៖ ជ័យជម្នះរបស់នាយកដ្ឋានមួយ មិនត្រូវធ្វើឱ្យខូចខាតដល់ក្រុមហ៊ុនទាំងមូលឡើយ។ ពួកគេចេះប្រើប្រាស់វិធីសាស្ត្រចរចាផ្អែកលើ «ផលប្រយោជន៍រួម (Interests)» មិនមែនលើ «ជំហររឹងរូស (Positions)» ឡើយ។',
      workplaceStory: '«នៅក្រុមហ៊ុនបច្ចេកវិទ្យាហិរញ្ញវត្ថុមួយ ជម្លោះធ្ងន់ធ្ងរបានកើតឡើងរវាងនាយកដ្ឋានទីផ្សារ និងនាយកដ្ឋានគ្រប់គ្រងហានិភ័យ (Risk & Compliance)។ ទីផ្សារចង់ឱ្យការចុះឈ្មោះអតិថិជនមានភាពងាយស្រួលដោយមិនបាច់ស្កេនអត្តសញ្ញាណប័ណ្ណ ដើម្បីបង្កើនចំនួនអ្នកប្រើប្រាស់។ រីឯផ្នែក Risk បានបដិសេធដាច់ខាតដោយសារខ្លាចការបោកប្រាស់។ នាយកដ្ឋានទាំងពីរបានឈ្លោះគ្នាក្នុងកិច្ចប្រជុំរហូតដល់គម្រោងគាំង ៣ ខែ។ \n'
          'លោក វិបុល ជា General Manager បានកោះប្រជុំចរចាតាមគោលការណ៍ Harvard៖ គាត់បានញែកមនុស្សចេញពីបញ្ហា ហើយកំណត់ផលប្រយោជន៍ស្នូលរួមគឺ "កំណើនអ្នកប្រើប្រាស់ប្រកបដោយសុវត្ថិភាព"។ ពួកគេបានព្រមព្រៀងលើដំណោះស្រាយកណ្តាល៖ អនុញ្ញាតឱ្យចុះឈ្មោះងាយស្រួលសម្រាប់ប្រតិបត្តិការក្រោម \$50 ប៉ុន្តែតម្រូវឱ្យស្កេនអត្តសញ្ញាណប័ណ្ណសម្រាប់ប្រតិបត្តិការធំជាងនេះ។ ដំណោះស្រាយនេះបានជួយឱ្យក្រុមហ៊ុនកើនអ្នកប្រើប្រាស់ ៥០% ដោយគ្មានបញ្ហាហានិភ័យផ្លូវច្បាប់ឡើយ។»',
      practicalExample: '✅ ជំហាន ៤ នៃការចរចាសម្រុះសម្រួលជម្លោះអន្តរនាយកដ្ឋាន (Harvard Model)៖\n'
          '១. [Separate People from Problem]៖ វាយប្រហារលើបញ្ហា កុំវាយប្រហារលើបុគ្គលិកលក្ខណៈរបស់ដៃគូសន្ទនា។\n'
          '②. [Focus on Interests, Not Positions]៖ កុំជជែកថា "ខ្ញុំចង់បានចំណុច A" ប៉ុន្តែត្រូវសួរថា "ហេតុអ្វីបានជាចំណុច A សំខាន់ចំពោះអ្នក?"\n'
          '៣. [Invent Options for Mutual Gain]៖ រួមគ្នាបំផុសគំនិតរកជម្រើសថ្មីៗដែលផ្តល់ផលប្រយោជន៍ដល់ភាគីទាំងសងខាង (Win-Win)។\n'
          '៤. [Use Objective Criteria]៖ ប្រើប្រាស់ទិន្នន័យទីផ្សារ ឬច្បាប់ជាគោល មិនប្រើអារម្មណ៍ផ្ទាល់ខ្លួន។',
      practicalExercise: 'គិតអំពីជម្លោះ ឬការខ្វែងគំនិតគ្នាបច្ចុប្បន្នរវាងផ្នែករបស់អ្នក និងផ្នែកដទៃ ហើយរៀបចំបញ្ជីផលប្រយោជន៍រួម (Shared Interests) ចំនួន ៣ ដើម្បីយកទៅជជែកជាមួយពួកគេ។',
      quizQuestions: [
        QuestionModel(
          id: 'q-manager-8',
          promptKh: 'នៅក្នុងវិធីសាស្ត្រចរចាតាមគោលការណ៍ (Principled Negotiation) តើអ្វីជាភាពខុសគ្នារវាង Positions និង Interests?',
          promptEn: 'In Principled Negotiation, what is the crucial difference between Positions and Interests?',
          optionsKh: [
            'A. Positions គឺជាផលប្រយោជន៍លាក់កំបាំង រីឯ Interests គឺជាតំណែងការងារ។',
            'B. Positions គឺជាអ្វីដែលភាគីទាមទារជាក់ស្តែង (ជំហរខាងក្រៅ) រីឯ Interests គឺជាតម្រូវការ ឬការបារម្ភពិតប្រាកដដែលនៅពីក្រោយការទាមទារនោះ។',
            'C. Positions និង Interests មានន័យដូចគ្នាទាំងស្រុង។',
          ],
          optionsEn: [
            'A. Positions are hidden agendas while Interests are job titles.',
            'B. Positions are rigid external demands, whereas Interests are the underlying needs, fears, and desires driving those demands.',
            'C. Positions and Interests are identical.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ ជម្លោះច្រើនតែកកស្ទះដោយសារភាគីតោងទាមជំហរខាងក្រៅ (Positions)។ នៅពេលយើងស្វែងយល់ពីតម្រូវការពិតប្រាកដ (Interests) យើងនឹងរកឃើញដំណោះស្រាយ Win-Win។',
          explanationEn: 'Explanation: Uncovering underlying interests unlocks creative solutions that rigid positional bargaining obscures.',
        ),
      ],
      reflection: 'តើអ្នកធ្លាប់ប្រកាន់ជំហររឹងរូសជាមួយផ្នែកដទៃរហូតដល់ភ្លេចគិតពីផលប្រយោជន៍រួមរបស់ក្រុមហ៊ុនទាំងមូលដែរឬទេ?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ អញ្ជើញ Manager នៃនាយកដ្ឋានដែលធ្លាប់មានការខ្វែងគំនិតជាមួយអ្នក ទៅញ៉ាំកាហ្វេដើម្បីស្វែងយល់ពីគោលដៅ និងសម្ពាធការងាររបស់ពួកគេ។',
    ),

    // Lesson 9: Alibaba "Wild Dog" Policy (High Performance with Zero Values)
    LessonModel(
      id: 'lesson-manager-9',
      courseId: 'course-manager-conflict',
      moduleId: 'mod-1',
      titleKh: '៩. ការដោះស្រាយបុគ្គលិកពូកែតែបំពានវប្បធម៌ «ក្បួនឆ្កែព្រៃរបស់ Alibaba» (Alibaba: Eliminating Wild Dogs)',
      titleEn: 'Handling Toxic High-Performers: The Alibaba "Wild Dog" (野狗) Culture Matrix',
      type: LessonType.text,
      orderIndex: 9,
      learningObjectives: '• យល់ដឹងពីម៉ាទ្រីសបុគ្គលិករបស់ Alibaba (តារា, ទន្សាយស, ឆ្កែព្រៃ, សត្វឆ្កែ)។\n'
          '• ស្គាល់ពីគ្រោះថ្នាក់នៃ «ឆ្កែព្រៃ» (Wild Dog: បុគ្គលិកលក់ដាច់ខ្លាំង ឬបច្ចេកទេសពូកែ តែមានចរិត Toxic បំពានសីលធម៌)។\n'
          '• ហ៊ានធ្វើការសម្រេចចិត្តដ៏ឈឺចាប់ដើម្បីការពារវប្បធម៌ និងគុណតម្លៃស្នូលរបស់ស្ថាប័ន។',
      shortExplanation: 'នៅក្រុមហ៊ុន Alibaba ស្ថាបនិក Jack Ma បានបែងចែកបុគ្គលិកជា ៤ ប្រភេទ៖ \n'
          '១. សត្វឆ្កែ (Dog)៖ សមត្ថភាពខ្សោយ វប្បធម៌ខ្សោយ -> ត្រូវបណ្តេញចេញភ្លាមៗ។\n'
          '②. ទន្សាយស (White Rabbit)៖ មនុស្សល្អរួសរាយ តែគ្មានសមត្ថភាព -> ត្រូវបង្វឹក ឬផ្លាស់ប្តូរចេញបើមិនរីកចម្រើន។\n'
          '៣. តារា (Star)៖ សមត្ថភាពឆ្នើម វប្បធម៌ឆ្នើម -> ជាឆ្អឹងខ្នងក្រុមហ៊ុនដែលត្រូវលើកតម្កើង។\n'
          '៤. ឆ្កែព្រៃ (Wild Dog / 野狗)៖ សមត្ថភាពខ្ពស់ខ្លាំង លក់ដាច់ខ្លាំង ប៉ុន្តែបំពានច្បាប់ បំផ្លាញវប្បធម៌ និងជិះជាន់អ្នកដទៃ។ ក្បួនដែករបស់ Alibaba គឺ៖ «ឆ្កែព្រៃត្រូវតែសម្លាប់ចោលភ្លាមៗ (Fire the Wild Dog)» ព្រោះបើទុកយូរ ស្ថាប័ននឹងត្រូវរលាយ។',
      workplaceStory: '«លោក សុភ័ក្ត្រ ជាបុគ្គលិកលក់កំពូល (Top Sales) នៅក្រុមហ៊ុនចែកចាយរថយន្តមួយ ដោយគាត់ម្នាក់ឯងរកចំណូលបាន ៣៥% នៃចំណូលសរុបរបស់ក្រុមហ៊ុន។ ប៉ុន្តែ សុភ័ក្ត្រមានចរិតក្រអឺតក្រទម តែងតែជេរប្រមាថបុគ្គលិករដ្ឋបាល លួចទិន្នន័យភ្ញៀវរបស់សហការី និងមិនដែលចូលរួមប្រជុំក្រុមហ៊ុនឡើយ។ បុគ្គលិកល្អៗជាច្រើនបានលាលែងពីការងារដោយសារទ្រាំនឹងគាត់មិនបាន។ \n'
          'Manager មុនៗមិនហ៊ានប៉ះពាល់គាត់ទេ ព្រោះខ្លាចបាត់បង់ចំណូល។ ប៉ុន្តែនៅពេលលោកស្រី លីដា ចូលកាន់តំណែងជា General Manager នាងបានព្រមានសុភ័ក្ត្រ ២ ដងអំពីរឿងក្រមសីលធម៌។ នៅពេលសុភ័ក្ត្រនៅតែបំពាន នាងបានសម្រេចចិត្តបញ្ចប់កិច្ចសន្យាការងាររបស់គាត់ភ្លាមៗ។ \n'
          'ដំបូងឡើយ ការលក់ធ្លាក់ចុះបន្តិចក្នុងខែទីមួយ ប៉ុន្តែបរិយាកាសការងារប្រែជាស្រស់ស្រាយ និងមានទំនុកចិត្តឡើងវិញ។ បុគ្គលិកផ្សេងទៀតបានរួបរួមគ្នាខិតខំប្រឹងប្រែង ហើយត្រឹមតែ ៣ ខែក្រោយមក ការលក់សរុបរបស់ក្រុមហ៊ុនបានកើនឡើងលើសកាលពីមុនទៅទៀត។»',
      practicalExample: '✅ សញ្ញាសម្គាល់បុគ្គលិកប្រភេទ «ឆ្កែព្រៃ» (Toxic High-Performer Signs)៖\n'
          '• បង្កើតលទ្ធផលលេខល្អ ប៉ុន្តែបន្សល់ទុកនូវ «ជនរងគ្រោះ» ជាច្រើននៅជុំវិញខ្លួន។\n'
          '• គិតថាខ្លួនឯងធំជាងក្រុមហ៊ុន ហើយច្បាប់ ឬវិន័យស្ថាប័នមិនអាចអនុវត្តលើខ្លួនបាន។\n'
          '• បង្កើតបក្សពួកនិយម និងនិយាយដើមបង្ខូចកេរ្តិ៍ឈ្មោះថ្នាក់ដឹកនាំនៅពីក្រោយខ្នង។',
      practicalExercise: 'វាយតម្លៃក្រុមការងាររបស់អ្នកតាមម៉ាទ្រីស Alibaba (Star, Rabbit, Wild Dog, Dog) ហើយរៀបចំវិធានការដោះស្រាយឱ្យបានទាន់ពេលវេលា។',
      quizQuestions: [
        QuestionModel(
          id: 'q-manager-9',
          promptKh: 'ហេតុអ្វីបានជាទស្សនវិជ្ជាគ្រប់គ្រងរបស់ Alibaba តម្រូវឱ្យបណ្តេញបុគ្គលិកប្រភេទ «ឆ្កែព្រៃ» (Wild Dog: ពូកែតែ Toxic) ចេញពីក្រុមហ៊ុន?',
          promptEn: 'Why does Alibaba management philosophy mandate the termination of "Wild Dogs" (toxic high-performers)?',
          optionsKh: [
            'A. ព្រោះក្រុមហ៊ុនមិនចូលចិត្តមនុស្សដែលរកលុយបានច្រើន។',
            'B. ព្រោះបើទុកឱ្យបុគ្គលិក Toxic នៅបន្ត ពួកគេនឹងបំផ្លាញវប្បធម៌ស្ថាប័ន បណ្តេញបុគ្គលិកល្អៗដទៃទៀតឱ្យចាកចេញ និងបង្កមហន្តរាយរយៈពេលវែង។',
            'C. ព្រោះចង់សន្សំប្រាក់កម្រៃជើងសារ (Commission) របស់ពួកគេ។',
          ],
          optionsEn: [
            'A. Because companies dislike employees who generate too much revenue.',
            'B. Because toxic high-performers poison institutional culture, drive away ethical talent, and eventually destroy the enterprise.',
            'C. To cut commission payouts.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ វប្បធម៌ និងគុណតម្លៃស្នូលមានតម្លៃថ្លៃជាងលទ្ធផលលក់បណ្តោះអាសន្ន។ ការអត់ឱនចំពោះមនុស្ស Toxic គឺជាការបំផ្លាញស្ថាប័នពីខាងក្នុង។',
          explanationEn: 'Explanation: Tolerating toxic high-performers destroys organizational trust and triggers an exodus of good talent.',
        ),
      ],
      reflection: 'តើនៅក្នុងស្ថាប័នរបស់អ្នកមានបុគ្គលិកណាដែលពូកែ ប៉ុន្តែគ្រប់គ្នានៅក្បែរមានអារម្មណ៍ភ័យខ្លាច និងធុញទ្រាន់ដែរឬទេ? តើអ្នកមានភាពក្លាហានក្នុងការចាត់វិធានការលើពួកគេឬនៅ?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ពិនិត្យមើលថាតើការវាយតម្លៃបុគ្គលិកក្នុងផ្នែករបស់អ្នកបានដាក់ពិន្ទុលើ «គុណតម្លៃ និងវប្បធម៌» ស្មើនឹង «លទ្ធផលការងារ (KPI)» ហើយឬនៅ។',
    ),

    // Lesson 10: Retention & Stay Interviews (Combating Quiet Quitting)
    LessonModel(
      id: 'lesson-manager-10',
      courseId: 'course-manager-conflict',
      moduleId: 'mod-1',
      titleKh: '១០. យុទ្ធសាស្ត្ររក្សាបុគ្គលិកឆ្នើម «កិច្ចសម្ភាសន៍មុនពេលគេចាកចេញ» (Stay Interviews)',
      titleEn: 'Proactive Talent Retention: Conducting High-Impact Stay Interviews',
      type: LessonType.text,
      orderIndex: 10,
      learningObjectives: '• យល់ដឹងពីភាពខុសគ្នារវាង Exit Interview (សម្ភាសន៍ពេលគេដាក់ពាក្យឈប់ហើយ) និង Stay Interview (សម្ភាសន៍ដើម្បីរក្សាទុក)។\n'
          '• កំណត់សញ្ញាព្រមានដំបូងនៃការបាក់ទឹកចិត្ត (Burnout) និងការលាលែងដោយស្ងៀមស្ងាត់ (Quiet Quitting)។\n'
          '• បង្កើតផែនការរក្សាបុគ្គលិកឆ្នើម (Retention Strategy) ដោយផ្អែកលើការលើកទឹកចិត្តផ្លូវចិត្ត មិនមែនត្រឹមតែលុយ។',
      shortExplanation: 'អ្នកគ្រប់គ្រងភាគច្រើនរង់ចាំរហូតដល់បុគ្គលិកឆ្នើមកាន់លិខិតលាលែងពីការងារមកដាក់លើតុ ទើបភ្ញាក់ផ្អើល និងសួរនាំ (Exit Interview) ដែលនៅពេលនោះវាបានយឺតពេលទៅហើយ។ Manager ឆ្លាតវៃតែងតែរៀបចំ «Stay Interview» — ការជជែកពិភាក្សាដោយស្មោះត្រង់ជាមួយបុគ្គលិកឆ្នើមក្នុងពេលដែលពួកគេនៅមានក្តីសប្បាយរីករាយក្នុងការងារ ដើម្បីស្វែងយល់ថាតើអ្វីដែលធ្វើឱ្យពួកគេបន្តនៅជាមួយក្រុមហ៊ុន និងអ្វីដែលអាចធ្វើឱ្យពួកគេចាកចេញ។',
      workplaceStory: '«កញ្ញា សុជាតា ជា Senior Marketing Specialist ដ៏ឆ្នើមម្នាក់។ នាងធ្វើការបានយ៉ាងល្អឥតខ្ចោះ ប៉ុន្តែមួយរយៈចុងក្រោយនេះ នាងចាប់ផ្តើមស្ងាត់ស្ងៀមក្នុងកិច្ចប្រជុំ។ \n'
          'Manager របស់នាងគឺលោក ពិសិដ្ឋ បានកត់សម្គាល់ឃើញភ្លាមៗ។ គាត់មិនបានរង់ចាំទេ គាត់បានអញ្ជើញសុជាតាមកញ៉ាំកាហ្វេ និងធ្វើ Stay Interview ដោយសួរថា៖ "សុជាតា ប្អូនជាកម្លាំងស្នូលដ៏មានតម្លៃរបស់ក្រុមហ៊ុន។ តើអ្វីដែលធ្វើឱ្យប្អូនចូលចិត្តបំផុតក្នុងការងារបច្ចុប្បន្ន? ហើយតើមានចំណុចណាខ្លះដែលធ្វើឱ្យប្អូនមានអារម្មណ៍ធុញទ្រាន់ ឬអស់កម្លាំងចិត្ត?" \n'
          'សុជាតាបានសារភាពដោយស្មោះត្រង់ថានាងមានអារម្មណ៍ជាប់គាំង ព្រោះនាងចង់រៀនជំនាញយុទ្ធសាស្ត្រទិន្នន័យ (Data Strategy) ប៉ុន្តែរាល់ថ្ងៃត្រូវរវល់តែរៀបចំ Event តូចតាច។ ពិសិដ្ឋបានកែសម្រួលការងាររបស់នាងភ្លាមៗ ដោយផ្ទេរការងារ Event ទៅឱ្យ Junior និងផ្តល់ថវិកាឱ្យនាងរៀនវគ្គ Data Analytics។ សុជាតាមានការរំភើបយ៉ាងខ្លាំង ហើយបានបដិសេធការផ្តល់ការងារពីក្រុមហ៊ុនដទៃដែលឱ្យប្រាក់ខែខ្ពស់ជាង។»',
      practicalExample: '✅ សំណួរគន្លឹះ ៥ សម្រាប់ Stay Interview៖\n'
          '១. "តើអ្វីដែលធ្វើឱ្យអ្នកទន្ទឹងរង់ចាំមកធ្វើការនៅរាល់ព្រឹក?"\n'
          '②. "តើអ្វីដែលអ្នកចង់រៀនសូត្រ ឬអភិវឌ្ឍបន្ថែមក្នុងឆ្នាំនេះ?"\n'
          '៣. "ប្រសិនបើអ្នកមានដំបងសិល្ប៍ តើចំណុចមួយណាដែលអ្នកចង់ផ្លាស់ប្តូរក្នុងការងារបច្ចុប្បន្ន?"\n'
          '៤. "តើអ្នកធ្លាប់មានអារម្មណ៍ថាការខិតខំរបស់អ្នកត្រូវបានគេមើលរំលងដែរឬទេ?"\n'
          '៥. "តើខ្ញុំក្នុងនាមជា Manager អាចជួយគាំទ្រអ្នកឱ្យជោគជ័យជាងនេះដោយរបៀបណា?"',
      practicalExercise: 'កំណត់បុគ្គលិកឆ្នើម ២ នាក់នៅក្នុងក្រុមរបស់អ្នក ហើយរៀបចំកាលវិភាគធ្វើ Stay Interview រយៈពេល ៣០ នាទីជាមួយពួកគេក្នុងសប្តាហ៍នេះ។',
      quizQuestions: [
        QuestionModel(
          id: 'q-manager-10',
          promptKh: 'តើអ្វីជាអត្ថប្រយោជន៍ចម្បងនៃ Stay Interview ធៀបនឹង Exit Interview?',
          promptEn: 'What is the primary advantage of a Stay Interview compared to an Exit Interview?',
          optionsKh: [
            'A. ចំណាយពេលតិចជាង។',
            'B. វាជាវិធានការបង្ការជាមុន (Proactive Retention) ដែលជួយដោះស្រាយបញ្ហាមុនពេលបុគ្គលិកសម្រេចចិត្តដើរចេញ មិនមែនរង់ចាំទាល់តែបាត់បង់ទើបស្តាយក្រោយ។',
            'C. ដើម្បីកាត់បន្ថយប្រាក់ខែបុគ្គលិក។',
          ],
          optionsEn: [
            'A. It requires less time.',
            'B. It is a proactive retention tool uncovering flight risks and addressing frustrations while top talent is still engaged, rather than conducting post-mortems after resignation.',
            'C. It helps decrease employee pay.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ Stay Interview គឺជាការការពារជាមុន។ ការស្វែងយល់ពីតម្រូវការរបស់បុគ្គលិកឆ្នើមនៅពេលពួកគេនៅធ្វើការ ជួយសង្គ្រោះក្រុមហ៊ុនពីការបាត់បង់ធនធានមនុស្សដ៏មានតម្លៃ។',
          explanationEn: 'Explanation: Stay interviews proactively identify disengagement triggers while talent can still be retained.',
        ),
      ],
      reflection: 'តើអ្នកដឹងច្បាស់ទេថាតើបុគ្គលិកឆ្នើមបំផុតរបស់អ្នកកំពុងសប្បាយចិត្ត ឬកំពុងលួចរៀបចំ CV ស្វែងរកការងារថ្មី?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ផ្ញើសារអញ្ជើញបុគ្គលិកឆ្នើមម្នាក់របស់អ្នកជួបសន្ទនា Stay Interview ដោយបើកចំហ និងស្មោះត្រង់។',
    ),
  ];

  // =========================================================================
  // 7. HEAD OF DEPARTMENT (HOD) EXTRA LESSONS (Lessons 3 to 10)
  // =========================================================================
  static final List<LessonModel> hodLessons = [
    // Lesson 3: Huawei Saturated Attack Strategy (华为饱和攻击)
    LessonModel(
      id: 'lesson-hod-3',
      courseId: 'course-hod-strategy',
      moduleId: 'mod-1',
      titleKh: '៣. យុទ្ធសាស្ត្រវាយលុកឆ្អែតឆ្អន់របស់ Huawei (Huawei Saturated Attack Strategy: 饱和攻击)',
      titleEn: 'Concentrated Resource Allocation: Huawei Saturated Attack Strategy',
      type: LessonType.text,
      orderIndex: 3,
      learningObjectives: '• យល់ដឹងពីទ្រឹស្តីយុទ្ធសាស្ត្រ «饱和攻击» (Saturated Attack) របស់ស្ថាបនិកក្រុមហ៊ុន Huawei លោក Ren Zhengfei។\n'
          '• បញ្ឈប់ការបែងចែកថវិកា និងធនធានបែប «ព្រួចទឹកលើខ្សាច់» (Scattered Resources)។\n'
          '• ប្រមូលផ្តុំកម្លាំងមនុស្ស ថវិកា និងពេលវេលា វាយទម្លុះចំណុចយុទ្ធសាស្ត្រតែមួយគត់ដើម្បីដណ្តើមឧត្តមភាពទីផ្សារ។',
      shortExplanation: 'ស្ថាបនិកក្រុមហ៊ុន Huawei លោក Ren Zhengfei តែងតែលើកឡើងថា៖ «ក្រុមហ៊ុនទន់ខ្សោយស្លាប់ដោយសារការពង្រាយកម្លាំងគ្រប់ទិសទី រីឯក្រុមហ៊ុនខ្លាំងឈ្នះដោយសារការប្រមូលផ្តុំកម្លាំង»។ ទ្រឹស្តី «Saturated Attack» (ការវាយលុកឆ្អែតឆ្អន់) បង្រៀនឱ្យប្រធាននាយកដ្ឋាន (HOD) មិនត្រូវបែងចែកធនធានស្មើៗគ្នាលើគម្រោងតូចតាចរាប់សិបនោះទេ ប៉ុន្តែត្រូវកំណត់ «ច្រកទ្វារយុទ្ធសាស្ត្រតែមួយគត់» ហើយបាញ់កម្លាំងធនធានលើសពីគូប្រជែង ៥ ទៅ ១០ ដង ដើម្បីវាយទម្លាយឱ្យខានតែបាន។',
      workplaceStory: '«នៅពេលក្រុមហ៊ុនចែកចាយទំនិញប្រើប្រាស់មួយចង់ពង្រីកទីផ្សារទៅកាន់បណ្តាខេត្ត ប្រធានផ្នែកទីផ្សារចាស់ចង់ពង្រាយថវិកា \$50,000 ទៅគ្រប់ ២៤ ខេត្តស្មើៗគ្នា (ប្រហែល \$2,000/ខេត្ត) ដែលជាលទ្ធផលគ្មានខេត្តណាមួយស្គាល់ម៉ាកយីហោក្រុមហ៊ុនឡើយ។ \n'
          'លោក វិទ្យា ដែលទើបឡើងជា HOD បានលុបចោលផែនការនោះភ្លាមៗ។ ដោយអនុវត្តក្បួន Saturated Attack របស់ Huawei គាត់បានប្រមូលថវិកា \$50,000 ទាំងអស់ និងបុគ្គលិកឆ្នើម ៨០% មកវាយលុកផ្តាច់មុខតែលើខេត្តសៀមរាបតែមួយគត់។ ពួកគេបានគ្របដណ្តប់ស្លាកប៉ាណូ ផ្សារទំនើប ភោជនីយដ្ឋាន និងបណ្តាញសង្គមទូទាំងខេត្ត។ ត្រឹមតែ ៣ ខែ ក្រុមហ៊ុនបានដណ្តើមចំណែកទីផ្សារ ៦៥% នៅសៀមរាប និងបង្កើតប្រាក់ចំណេញយ៉ាងច្រើន ដែលអនុញ្ញាតឱ្យពួកគេយកចំណេញនោះទៅវាយលុកខេត្តបន្ទាប់។»',
      practicalExample: '✅ របៀបអនុវត្ត Saturated Attack ក្នុងនាយកដ្ឋាន៖\n'
          '១. [Identify the Linchpin]៖ កំណត់គម្រោង ឬផលិតផលតែមួយគត់ដែលមានសក្តានុពលបង្កើតផលប៉ះពាល់ ៨០% ដល់ក្រុមហ៊ុន (80/20 Rule)។\n'
          '②. [Over-Concentrate Talent]៖ ដាក់បុគ្គលិកកំពូលៗ និងថវិកាច្រើនលើសលប់ទៅលើគម្រោងនោះ (Saturate resources)។\n'
          '៣. [Relentless Execution]៖ បន្តវាយលុកឥតឈប់ឈររហូតដល់សម្រេចបានជោគជ័យដាច់ខាត មុននឹងប្តូរទៅគម្រោងបន្ទាប់។',
      practicalExercise: 'ពិនិត្យមើលបញ្ជីគម្រោងទាំងអស់របស់នាយកដ្ឋានអ្នកនៅឆ្នាំនេះ។ ជ្រើសរើសគម្រោងកំពូលតែមួយគត់ ហើយរៀបចំផែនការផ្ទេរធនធាន ៦០% ទៅផ្តោតលើវា។',
      quizQuestions: [
        QuestionModel(
          id: 'q-hod-3',
          promptKh: 'តើអ្វីជាគ្រោះថ្នាក់ធំបំផុតនៃការបែងចែកធនធាននាយកដ្ឋានតាមបែប «ព្រួចទឹកលើខ្សាច់» (Scattering resources equally)?',
          promptEn: 'What is the greatest risk of scattering departmental resources equally across all initiatives?',
          optionsKh: [
            'A. ធ្វើឱ្យបុគ្គលិកសប្បាយចិត្តពេក។',
            'B. ធនធានត្រូវពង្រាយស្តើងពេក ធ្វើឱ្យគ្មានគម្រោងណាមួយសម្រេចបានជោគជ័យដាច់ស្រេច ហើយងាយនឹងត្រូវគូប្រជែងកម្ទេច។',
            'C. ធ្វើឱ្យនាយកដ្ឋានសន្សំប្រាក់បានច្រើនពេក។',
          ],
          optionsEn: [
            'A. Making employees overly happy.',
            'B. Resources are spread too thin, causing every project to achieve mediocre results and leaving the firm vulnerable to competitors.',
            'C. Accumulating too much surplus cash.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ ការបែងចែកធនធានស្តើងពេកធ្វើឱ្យបាត់បង់អំណាចវាយលុក។ ក្បួន Huawei Saturated Attack ទាមទារការប្រមូលផ្តុំកម្លាំងដើម្បីបង្កើតជ័យជម្នះដាច់ខាត។',
          explanationEn: 'Explanation: Spreading resources thin guarantees mediocrity; saturated attacks concentrate force to secure decisive breakthrough.',
        ),
      ],
      reflection: 'តើនាយកដ្ឋានរបស់អ្នកកំពុងធ្វើគម្រោងច្រើនពេករហូតដល់គ្មានគម្រោងណាមួយលេចធ្លោពិតប្រាកដដែរឬទេ?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ កោះប្រជុំគណៈគ្រប់គ្រងនាយកដ្ឋាន ដើម្បីកាត់បន្ថយគម្រោងអាទិភាពទាបចោល ៣០% ហើយផ្ទេរធនធានទៅគម្រោងស្នូល។',
    ),

    // Lesson 4: Transforming Cost Center to Profit Center
    LessonModel(
      id: 'lesson-hod-4',
      courseId: 'course-hod-strategy',
      moduleId: 'mod-1',
      titleKh: '៤. ការប្រែក្លាយនាយកដ្ឋានពីកន្លែងចាយលុយទៅជាកន្លែងបង្កើតចំណូល (Cost Center to Profit Center)',
      titleEn: 'Strategic Value Creation: Transforming Cost Centers into Profit Drivers',
      type: LessonType.text,
      orderIndex: 4,
      learningObjectives: '• យល់ដឹងពីផ្នត់គំនិតខុសគ្នារវាង Cost Center (ផ្នែកដែលក្រុមហ៊ុនគិតថាគ្រាន់តែស៊ីលុយ) និង Profit Center (ផ្នែកដែលបង្កើតតម្លៃ)។\n'
          '• បង្ហាញពីផលចំណេញលើការវិនិយោគ (ROI) នៃនាយកដ្ឋានគាំទ្រដូចជា HR, IT, Legal, និង Operations។\n'
          '• កសាងប្រព័ន្ធសេវាកម្មផ្ទៃក្នុង (Internal Commercialization) ដែលនាយកដ្ឋានផ្សេងទៀតស្ម័គ្រចិត្តបង់ថ្លៃសេវា។',
      shortExplanation: 'នៅក្នុងក្រសែភ្នែករបស់ Board of Directors នាយកដ្ឋានដូចជា HR, IT, Admin, និង Compliance តែងតែត្រូវបានចាត់ទុកថាជា «Cost Center» (បន្ទុកចំណាយដែលត្រូវកាត់បន្ថយរាល់ពេលសេដ្ឋកិច្ចធ្លាក់ចុះ)។ HOD កម្រិតយុទ្ធសាស្ត្រត្រូវតែផ្លាស់ប្តូររូបភាពនេះ ដោយបង្ហាញឱ្យឃើញច្បាស់ថាតើនាយកដ្ឋានរបស់ខ្លួនជួយបង្កើនប្រាក់ចំណេញ កាត់បន្ថយការខាតបង់ ឬបង្កើតឱកាសធុរកិច្ចថ្មីៗដោយរបៀបណា។',
      workplaceStory: '«នាយកដ្ឋាន IT របស់ក្រុមហ៊ុនលក់រាយមួយ តែងតែត្រូវ CEO ស្តីបន្ទោសរាល់ពេលស្នើសុំថវិកា Server ព្រោះ CEO គិតថា IT គ្រាន់តែជាកន្លែងជួសជុលកុំព្យូទ័រដែលស៊ីលុយច្រើន។ \n'
          'លោក សម្បត្តិ ដែលទើបឡើងជា Head of IT បានប្តូរយុទ្ធសាស្ត្រទាំងស្រុង៖ គាត់បានបង្កើតប្រព័ន្ធវិភាគទិន្នន័យទម្លាប់ទិញទំនិញរបស់អតិថិជន (Automated Recommendation Engine) សម្រាប់ផ្នែកលក់។ មុខងារនេះបានជួយឱ្យផ្នែកលក់អាចលក់ទំនិញបន្ថែម (Cross-selling) បានទឹកប្រាក់ \$350,000 ក្នុងរយៈពេល ៦ ខែ។ នៅក្នុងកិច្ចប្រជុំ Board សម្បត្តិបានបង្ហាញរបាយការណ៍ថា៖ រាល់ \$1 ដែលវិនិយោគលើ IT បានបង្កើតចំណូលត្រឡប់មកវិញ \$7 ដល់ក្រុមហ៊ុន។ ចាប់ពីពេលនោះមក CEO លែងចាត់ទុក IT ជាបន្ទុកចំណាយទៀតហើយ ប៉ុន្តែជាក្បាលម៉ាស៊ីនបង្កើតប្រាក់ចំណេញ។»',
      practicalExample: '✅ របៀបបង្ហាញតម្លៃនាយកដ្ឋានបែប Profit-Driven Metrics៖\n'
          '• HR Department៖ មិនរាយការណ៍ត្រឹម "បានជ្រើសរើសបុគ្គលិក ២០ នាក់" -> ត្រូវរាយការណ៍ "បានកាត់បន្ថយអត្រាលាលែង ១០% ដែលជួយសន្សំថ្លៃបណ្តុះបណ្តាល និងជ្រើសរើសថ្មីបាន \$45,000"។\n'
          '• Legal & Compliance៖ "បានចរចាកិច្ចសន្យាផ្គត់ផ្គង់ដែលជួយការពារហានិភ័យផ្លូវច្បាប់ និងសន្សំថ្លៃពិន័យ \$80,000"។\n'
          '• Admin & Procurement៖ "បានដេញថ្លៃអ្នកផ្គត់ផ្គង់ថ្មីដែលកាត់បន្ថយថ្លៃដើមប្រតិបត្តិការ ៨% ដោយរក្សាគុណភាពដដែល"។',
      practicalExercise: 'សរសេរសេចក្តីសង្ខេប ១ ទំព័រដែលបង្ហាញពីតម្លៃហិរញ្ញវត្ថុ ឬការសន្សំថ្លៃដើមដែលនាយកដ្ឋានរបស់អ្នកបានបង្កើតជូនក្រុមហ៊ុនក្នុងរយៈពេល ៦ ខែកន្លងមក។',
      quizQuestions: [
        QuestionModel(
          id: 'q-hod-4',
          promptKh: 'តើធ្វើដូចម្តេចដើម្បីកុំឱ្យនាយកដ្ឋានគាំទ្រ (ដូចជា HR ឬ IT) ត្រូវបាន CEO កាត់បន្ថយថវិការាល់ពេលសេដ្ឋកិច្ចជួបវិបត្តិ?',
          promptEn: 'How can support departments (like HR or IT) protect themselves from budget cuts during downturns?',
          optionsKh: [
            'A. អង្វរករ និងរៀបរាប់ពីការលំបាកផ្ទាល់ខ្លួនរបស់បុគ្គលិក។',
            'B. បង្ហាញទិន្នន័យជាក់ស្តែងថាតើសកម្មភាពរបស់នាយកដ្ឋានបានជួយរកចំណូលផ្ទាល់ ការពារហានិភ័យ ឬសន្សំថ្លៃដើមដល់ក្រុមហ៊ុនកម្រិតណា (Demonstrating ROI)។',
            'C. លាក់បាំងតួលេខចំណាយទាំងអស់កុំឱ្យ CEO ដឹង។',
          ],
          optionsEn: [
            'A. Plead emotionally about staff hardships.',
            'B. Quantify how departmental initiatives directly generate revenue, mitigate enterprise risks, or cut operating costs (Demonstrating ROI).',
            'C. Conceal operational expenses.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ ថ្នាក់ដឹកនាំកំពូលសម្រេចចិត្តលើតួលេខ ROI។ នៅពេលនាយកដ្ឋានអាចបង្ហាញថារាល់ការចំណាយបង្កើតផលចំណេញត្រឡប់មកវិញ ពួកគេនឹងត្រូវបានគាំទ្រជានិច្ច។',
          explanationEn: 'Explanation: Quantifying business impact and cost-savings converts perceived overhead into strategic value.',
        ),
      ],
      reflection: 'តើ Board of Directors មើលឃើញនាយកដ្ឋានរបស់អ្នកជា «បន្ទុកចំណាយដែលត្រូវកាត់បន្ថយ» ឬជា «ដៃគូយុទ្ធសាស្ត្រដែលបង្កើតតម្លៃ»?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ គណនាផលចំណេញជាប្រាក់ដុល្លារដែលនាយកដ្ឋានរបស់អ្នកបានជួយក្រុមហ៊ុនសន្សំ ឬរកបានក្នុងខែនេះ។',
    ),

    // Lesson 5: OKRs Cascading & Alignment
    LessonModel(
      id: 'lesson-hod-5',
      courseId: 'course-hod-strategy',
      moduleId: 'mod-1',
      titleKh: '៥. ការតម្រឹមគោលដៅ OKR ពីថ្នាក់លើមកថ្នាក់ក្រោម (Cascading OKRs for Department Alignment)',
      titleEn: 'Strategic OKR Cascading: Aligning Departmental Key Results with Corporate Vision',
      type: LessonType.text,
      orderIndex: 5,
      learningObjectives: '• យល់ដឹងពីភាពខុសគ្នារវាង KPI (រង្វាស់ប្រតិបត្តិការទម្លាប់) និង OKR (គោលដៅលោតផ្លោះយុទ្ធសាស្ត្រ)។\n'
          '• ចេះបំបែក Company OKR មកជា Department OKR និង Team OKR ដោយរក្សាភាពស៊ីសង្វាក់គ្នា ១០០%។\n'
          '• រៀបចំវដ្តត្រួតពិនិត្យ OKR ប្រចាំត្រីមាស (Quarterly OKR Review & Grading)។',
      shortExplanation: 'បញ្ហាធំបំផុតរបស់ក្រុមហ៊ុនជាច្រើនគឺ «ភាពមិនស៊ីសង្វាក់គ្នា» (Misalignment)៖ ក្រុមហ៊ុនចង់ដើរទៅទិសខាងកើត ប៉ុន្តែនាយកដ្ឋាននីមួយៗរត់ទៅទិសខាងជើង ត្បូង លិច តាមការយល់ឃើញរៀងៗខ្លួន។ វិធីសាស្ត្រ OKR (Objectives and Key Results) ដែលប្រើប្រាស់ដោយ Intel, Google និង ByteDance ជួយធានាថា រាល់សកម្មភាពទាំងអស់របស់សមាជិកក្នុងនាយកដ្ឋានសុទ្ធតែរុញច្រានឆ្ពោះទៅរកគោលដៅធំបំផុតរបស់ក្រុមហ៊ុន។',
      workplaceStory: '«ក្នុងត្រីមាសទី ២ ក្រុមហ៊ុន FinTech មួយបានដាក់ចេញនូវ Company Objective ថា៖ "ក្លាយជាកម្មវិធីទូទាត់ប្រាក់ដែលពេញនិយមបំផុតសម្រាប់អាជីវកម្មខ្នាតតូច"។ \n'
          'លោកស្រី ចាន់ថា ដែលជា Head of Customer Support មិនបានរង់ចាំឱ្យគេប្រាប់ទេ។ នាងបានកោះប្រជុំក្រុមការងារដើម្បីបំប្លែង Objective នោះមកជា Department OKR យ៉ាងច្បាស់៖ \n'
          '• Objective នាយកដ្ឋាន៖ បង្កើតបទពិសោធន៍ដោះស្រាយបញ្ហាដ៏ល្អឥតខ្ចោះសម្រាប់អាជីវករខ្នាតតូច។\n'
          '• Key Result 1: កាត់បន្ថយពេលវេលារង់ចាំដោះស្រាយ (Resolution Time) ពី ២៤ ម៉ោងមកត្រឹម ៤ ម៉ោង។\n'
          '• Key Result 2: បង្កើនអត្រាពេញចិត្តរបស់អាជីវករ (Merchant CSAT) ពី ៧៥% ឡើងដល់ ៩៥%។\n'
          '• Key Result 3: បង្កើតវីដេអូបង្រៀនខ្លីៗចំនួន ១០ សម្រាប់ជួយអាជីវករប្រើប្រាស់ App ដោយខ្លួនឯង។ \n'
          'លទ្ធផល៖ ត្រឹមចុងត្រីមាស អាជីវករជាង ៥,០០០ ហាងបានចុះឈ្មោះប្រើប្រាស់ ហើយនាយកដ្ឋាន Support ត្រូវបាន CEO កោតសរសើរថាជាគំរូនៃការតម្រឹមគោលដៅល្អបំផុតក្នុងស្ថាប័ន។»',
      practicalExample: '✅ រូបមន្តបង្កើត OKR កម្រិតស្តង់ដារ៖\n'
          '• Objective (O)៖ "តើយើងចង់ទៅដល់ណា?" (មានមហិច្ឆតា ជំរុញទឹកចិត្ត មិនបាច់ដាក់លេខ)\n'
          '• Key Results (KRs)៖ "តើយើងដឹងថាយើងទៅដល់ដោយរបៀបណា?" (ត្រូវតែមានតួលេខវាស់វែងច្បាស់លាស់ ៣-៥ ចំណុច)\n'
          '• ក្បួនមាស៖ "ប្រសិនបើយើងសម្រេច KRs ទាំងអស់បាន ១០០% នោះ Objective នឹងសម្រេចបានដោយស្វ័យប្រវត្តិ"។',
      practicalExercise: 'យក Objective ធំមួយរបស់ក្រុមហ៊ុនអ្នកសម្រាប់ត្រីមាសបន្ទាប់ ហើយសរសេរ Department OKR (O មួយ និង KRs ចំនួន ៣) សម្រាប់នាយកដ្ឋានរបស់អ្នក។',
      quizQuestions: [
        QuestionModel(
          id: 'q-hod-5',
          promptKh: 'តើលក្ខណៈវិនិច្ឆ័យដ៏សំខាន់បំផុតនៃ Key Results (KRs) នៅក្នុងប្រព័ន្ធ OKR គឺជាអ្វី?',
          promptEn: 'What is the most critical criteria for Key Results (KRs) in the OKR framework?',
          optionsKh: [
            'A. ត្រូវតែមានភាពស្រពេចស្រពិលដើម្បីកុំឱ្យមានសម្ពាធ។',
            'B. ត្រូវតែអាចវាស់វែងជាតួលេខជាក់ស្តែង (Measurable & Quantifiable) និងមានកាលបរិច្ឆេទកំណត់ច្បាស់លាស់។',
            'C. ត្រូវតែដូចគ្នាទៅនឹង Job Description ប្រចាំថ្ងៃ។',
          ],
          optionsEn: [
            'A. Kept vague to avoid pressure.',
            'B. Strictly measurable, numeric, and bound by time milestones.',
            'C. Identical to routine daily job descriptions.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ Key Results ត្រូវតែមានតួលេខជាក់លាក់ (លេខភាគរយ ឬចំនួនប្រាក់) ដើម្បីឱ្យដឹងច្បាស់ថាសម្រេចបានឬអត់ ដោយគ្មានការលម្អៀង។',
          explanationEn: 'Explanation: Key Results must be unequivocally quantifiable to measure progress without subjectivity.',
        ),
      ],
      reflection: 'តើសមាជិកគ្រប់រូបក្នុងនាយកដ្ឋានរបស់អ្នកដឹងច្បាស់ទេថា OKR របស់ពួកគេភ្ជាប់ទៅនឹងជោគជ័យរបស់ក្រុមហ៊ុនដោយរបៀបណា?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ពិនិត្យមើល KRs របស់នាយកដ្ឋានអ្នក ហើយធានាថាគ្រប់ចំណុចសុទ្ធតែមានលេខវាស់វែងច្បាស់លាស់។',
    ),

    // Lesson 6: Haier Rendanheyi & Cross-Functional SLAs (人单合一)
    LessonModel(
      id: 'lesson-hod-6',
      courseId: 'course-hod-strategy',
      moduleId: 'mod-1',
      titleKh: '៦. កិច្ចព្រមព្រៀងកម្រិតសេវាកម្មផ្ទៃក្នុងតាមគំរូ Haier (Haier Rendanheyi & Internal SLAs)',
      titleEn: 'Haier Rendanheyi Model: Internal Service Level Agreements (SLAs) & Zero Bureaucracy',
      type: LessonType.text,
      orderIndex: 6,
      learningObjectives: '• យល់ដឹងពីគំរូគ្រប់គ្រងដ៏ល្បីល្បាញរបស់ Haier «人单合一» (Rendanheyi: Zero distance between employee and customer)។\n'
          '• បង្កើតកិច្ចសន្យាសេវាកម្មផ្ទៃក្នុង (Internal SLA) រវាងនាយកដ្ឋាននីមួយៗដើម្បីលុបបំបាត់ការរង់ចាំយឺតយ៉ាវ។\n'
          '• បំប្លែងនាយកដ្ឋានឱ្យដំណើរការដូចជា «សហគ្រាសខ្នាតតូច» (Micro-Enterprise) ដែលមានភាពស្វាហាប់ខ្ពស់។',
      shortExplanation: 'នៅក្រុមហ៊ុនយក្ស Haier ស្ថាបនិក Zhang Ruimin បានរំលាយថ្នាក់ដឹកនាំកណ្តាលរាប់ពាន់នាក់ចោល ហើយបំប្លែងស្ថាប័នទាំងមូលឱ្យក្លាយជាបណ្តាញនៃ «សហគ្រាសខ្នាតតូចរាប់ពាន់» (Micro-Enterprises) ក្រោមទស្សនវិជ្ជា «人单合一» (មនុស្ស និងគោលដៅរួមបញ្ចូលគ្នាតែមួយ)។ នាយកដ្ឋានគាំទ្រមិនមែនជាស្ថាប័នរដ្ឋបាលដែលអង្គុយចាំបញ្ជានោះទេ ប៉ុន្តែត្រូវចុះកិច្ចសន្យា SLA ជាមួយផ្នែកជួរមុខ៖ ប្រសិនបើនាយកដ្ឋានគាំទ្រជួយឱ្យផ្នែកជួរមុខលក់ដាច់ ពួកគេទទួលបានរង្វាន់ ប៉ុន្តែបើពួកគេយឺតយ៉ាវ ពួកគេត្រូវទទួលខុសត្រូវ។',
      workplaceStory: '«នៅក្រុមហ៊ុនអភិវឌ្ឍន៍អចលនទ្រព្យមួយ នាយកដ្ឋានច្បាប់ (Legal) តែងតែចំណាយពេល ២ សប្តាហ៍ដើម្បីពិនិត្យកិច្ចសន្យាទិញលក់ ដែលធ្វើឱ្យអតិថិជនជាច្រើនប្តូរចិត្តមិនទិញ។ ផ្នែកលក់តែងតែខឹង ប៉ុន្តែផ្នែកច្បាប់ឆ្លើយតបថា "ការងារខ្ញុំត្រូវតែម៉ត់ចត់!"។ \n'
          'លោក វិចិត្រ ដែលទើបឡើងជា Head of Operations បានយកគំរូ Haier Rendanheyi មកអនុវត្ត៖ គាត់បានសម្របសម្រួលឱ្យផ្នែកច្បាប់ និងផ្នែកលក់ចុះហត្ថលេខាលើ Internal SLA ផ្លូវការ៖ កិច្ចសន្យាស្តង់ដារត្រូវតែពិនិត្យចប់ក្នុងរយៈពេល ៤៨ ម៉ោង។ ប្រសិនបើផ្នែកច្បាប់សម្រេចបានទាន់ពេល ហើយការលក់កើនឡើង ផ្នែកច្បាប់នឹងទទួលបានប្រាក់លើកទឹកចិត្ត (Performance Bonus) ស្មើនឹង ២% នៃកម្រៃជើងសារលក់។ \n'
          'ភ្លាមៗនោះ ផ្នែកច្បាប់បានរៀបចំ Template កិច្ចសន្យាស្វ័យប្រវត្តិ ហើយពេលវេលាពិនិត្យបានធ្លាក់ចុះមកត្រឹមតែ ៤ ម៉ោង! ការលក់បានកើនឡើងយ៉ាងសម្បើម ហើយទំនាក់ទំនងរវាងផ្នែកទាំងពីរប្រែជាស្និទ្ធស្នាលដូចបងប្អូន។»',
      practicalExample: '✅ ធាតុផ្សំ ៤ នៃ Internal SLA (កិច្ចព្រមព្រៀងកម្រិតសេវាកម្មផ្ទៃក្នុង)៖\n'
          '១. [Service Scope]៖ តើការងារណាខ្លះដែលនាយកដ្ឋាន A ត្រូវផ្តល់ឱ្យនាយកដ្ឋាន B?\n'
          '②. [Turnaround Time (TAT)]៖ ពេលវេលាឆ្លើយតបអតិបរមា (ឧ. ពិនិត្យសំណើ IT ក្នុងរយៈពេល ២ ម៉ោង, អនុម័ត PO ក្នុងរយៈពេល ២៤ ម៉ោង)។\n'
          '៣. [Quality Metric]៖ ស្តង់ដារគុណភាពអប្បបរមា (ឧ. ភាពត្រឹមត្រូវនៃទិន្នន័យ ៩៩%)។\n'
          '៤. [Escalation Protocol]៖ ប្រសិនបើមានការពន្យារពេល តើត្រូវរាយការណ៍ទៅអ្នកណាភ្លាមៗ?',
      practicalExercise: 'បង្កើតសេចក្តីព្រាង Internal SLA មួយទំព័ររវាងនាយកដ្ឋានរបស់អ្នក និងនាយកដ្ឋានមួយទៀតដែលអ្នកឧស្សាហ៍ធ្វើការជាមួយបំផុត។',
      quizQuestions: [
        QuestionModel(
          id: 'q-hod-6',
          promptKh: 'តើអ្វីជាអត្ថន័យស្នូលនៃទស្សនវិជ្ជា Haier Rendanheyi (人单合一) ក្នុងការកាត់បន្ថយការិយាធិបតេយ្យស្មុគស្មាញ?',
          promptEn: 'What is the core principle of the Haier Rendanheyi model in eliminating bureaucratic inertia?',
          optionsKh: [
            'A. បង្កើនចំនួនកិច្ចប្រជុំ និងឯកសាររដ្ឋបាលឱ្យកាន់តែច្រើន។',
            'B. តភ្ជាប់បុគ្គលិកគ្រប់រូបដោយផ្ទាល់ទៅនឹងតម្រូវការទីផ្សារ និងអតិថិជន (Zero distance to user) ដោយលុបបំបាត់ការិយាធិបតេយ្យកណ្តាល។',
            'C. បិទក្រុមហ៊ុនចោលហើយចាប់ផ្តើមថ្មី។',
          ],
          optionsEn: [
            'A. Proliferate administrative meetings and paperwork.',
            'B. Connect every employee directly to market outcomes and user needs (Zero distance to user), eliminating bureaucratic layers.',
            'C. Dissolve the enterprise entirely.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ Rendanheyi លុបបំបាត់បន្ទាយការិយាធិបតេយ្យ ដោយភ្ជាប់បុគ្គលិកគ្រប់ផ្នែកទៅនឹងលទ្ធផលទីផ្សារផ្ទាល់តាមរយៈ Internal SLA និងស្វ័យភាពប្រតិបត្តិការ។',
          explanationEn: 'Explanation: Rendanheyi smashes bureaucracy by aligning every worker directly with market value delivery.',
        ),
      ],
      reflection: 'តើនាយកដ្ឋានរបស់អ្នកមាននីតិវិធីស្មុគស្មាញណាខ្លះដែលកំពុងធ្វើឱ្យផ្នែកដទៃរង់ចាំយូរ និងធ្វើឱ្យអតិថិជនខកចិត្ត?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ជួបពិភាក្សាជាមួយ HOD នៃផ្នែកដៃគូ ដើម្បីព្រមព្រៀងលើ Turnaround Time (TAT) ច្បាស់លាស់សម្រាប់ឯកសារបន្ទាន់។',
    ),

    // Lesson 7: Leading Organizational Change (Kotter 8-Step adapted to Asian Enterprise)
    LessonModel(
      id: 'lesson-hod-7',
      courseId: 'course-hod-strategy',
      moduleId: 'mod-1',
      titleKh: '៧. ការដឹកនាំការផ្លាស់ប្តូរស្ថាប័ន និងការយកឈ្នះលើការប្រឆាំង (Leading Organizational Change)',
      titleEn: 'Change Leadership: Overcoming Resistance & Institutional Inertia (Kotter 8-Step)',
      type: LessonType.text,
      orderIndex: 7,
      learningObjectives: '• យល់ដឹងពីគំរូដឹកនាំការផ្លាស់ប្តូរ ៨ ជំហានរបស់ John Kotter សម្របតាមបរិបទក្រុមហ៊ុនអាស៊ី។\n'
          '• បង្កើតអារម្មណ៍បន្ទាន់ពិតប្រាកដ (Sense of Urgency) ដោយមិនបង្កឱ្យមានការភ័យស្លន់ស្លោ។\n'
          '• គ្រប់គ្រង និងបំប្លែងបុគ្គលិកដែលប្រឆាំងនឹងការផ្លាស់ប្តូរ (Resistors) ឱ្យក្លាយជាអ្នកគាំទ្រ។',
      shortExplanation: 'មនុស្សភាគច្រើនមិនប្រឆាំងនឹង «ការផ្លាស់ប្តូរ» នោះទេ ប៉ុន្តែពួកគេប្រឆាំងនឹង «ការដែលត្រូវបានគេបង្ខំឱ្យផ្លាស់ប្តូរដោយមិនដឹងមូលហេតុ»។ នៅពេល HOD ដាក់ចេញនូវប្រព័ន្ធថ្មី (ដូចជា ប្រព័ន្ធ ERP ថ្មី ឬរចនាសម្ព័ន្ធការងារថ្មី) បុគ្គលិកចាស់ៗច្រើនតែបង្កើតការតវ៉ាស្ងប់ស្ងាត់ (Passive Resistance)។ មេដឹកនាំយុទ្ធសាស្ត្រមិនប្រើអំណាចបង្ខិតបង្ខំឡើយ ប៉ុន្តែពួកគេកសាង «អារម្មណ៍បន្ទាន់» បង្កើត «ក្រុមសម្ព័ន្ធភាពស្នូល» និងបង្កើត «ជ័យជម្នះរយៈពេលខ្លី (Short-Term Wins)» ដើម្បីទាក់ទាញចិត្តមនុស្ស។',
      workplaceStory: '«លោក សុផាត ជា Head of Operations នៅរោងចក្រកាត់ដេរមួយ។ គាត់ចង់ដាក់ឱ្យប្រើប្រាស់ប្រព័ន្ធឌីជីថលស្កេនបាកូដជំនួសការកត់ត្រាលើក្រដាស។ មេជាងចាស់ៗបានប្រឆាំងយ៉ាងខ្លាំង ដោយធ្វើពុតជាស្កេនមិនកើត និងរអ៊ូរទាំថាពិបាកប្រើជាងក្រដាស។ \n'
          'ជំនួសឱ្យការដាក់ទណ្ឌកម្ម សុផាតបានអនុវត្តក្បួន Kotter៖ \n'
          '១. បង្កើត Sense of Urgency: គាត់បានបង្ហាញតួលេខជាក់ស្តែងថា ដោយសារកត់ត្រាក្រដាសយឺត រោងចក្រត្រូវគេផាកពិន័យ \$20,000 កាលពីខែមុន ហើយបើបន្តបែបនេះ រោងចក្រអាចត្រូវបិទទ្វារ។\n'
          '②. រក Guiding Coalition: គាត់បានជ្រើសរើសមេជាងវ័យក្មេង ២ នាក់ដែលរហ័សរហួនមកបណ្តុះបណ្តាលឱ្យស្ទាត់ជំនាញមុនគេ។\n'
          '៣. បង្កើត Short-Term Win: ក្រុមរបស់មេជាងទាំងពីរបានបញ្ចប់ការងារលឿនជាងមុន ២ ម៉ោង និងទទួលបានប្រាក់រង្វាន់លើកទឹកចិត្ត។ ឃើញលទ្ធផលល្អបែបនេះ មេជាងចាស់ៗដែលធ្លាប់ប្រឆាំង បានស្ម័គ្រចិត្តមករៀនប្រើប្រព័ន្ធថ្មីដោយខ្លួនឯង។»',
      practicalExample: '✅ ផែនទី ៤ ដំណាក់កាលនៃការដឹកនាំការផ្លាស់ប្តូរ៖\n'
          '• ដំណាក់កាល ១ [ភ្ញាក់រលឹក]៖ បង្ហាញពីគ្រោះថ្នាក់នៃការនៅស្ងៀម (The Burning Platform)។\n'
          '• ដំណាក់កាល ២ [ទស្សនវិស័យ]៖ គូររូបភាពអនាគតឱ្យច្បាស់ថា តើជីវិតការងារនឹងស្រួលជាងមុនកម្រិតណាពេលផ្លាស់ប្តូររួច។\n'
          '• ដំណាក់កាល ៣ [ជ័យជម្នះដំបូង]៖ អនុវត្តសាកល្បងលើក្រុមតូច (Pilot Project) និងអបអរសាទរជោគជ័យដំបូងជាសាធារណៈ។\n'
          '• ដំណាក់កាល ៤ [ចាក់ឫស]៖ បញ្ចូលដំណើរការថ្មីនេះទៅក្នុងគោលការណ៍ផ្លូវការរបស់ក្រុមហ៊ុន។',
      practicalExercise: 'ជ្រើសរើសការផ្លាស់ប្តូរថ្មីមួយដែលអ្នកចង់អនុវត្តក្នុងនាយកដ្ឋាន ហើយកំណត់ឈ្មោះបុគ្គលិកគន្លឹះ ៣ នាក់ដែលអ្នកត្រូវទាក់ទាញឱ្យក្លាយជា «ក្រុមសម្ព័ន្ធភាពស្នូល» (Guiding Coalition)។',
      quizQuestions: [
        QuestionModel(
          id: 'q-hod-7',
          promptKh: 'ហេតុអ្វីបានជាការបង្កើត «ជ័យជម្នះរយៈពេលខ្លី» (Short-Term Wins) មានសារៈសំខាន់បំផុតក្នុងដំណើរការផ្លាស់ប្តូរស្ថាប័ន?',
          promptEn: 'Why is generating Short-Term Wins critical during organizational change initiatives?',
          optionsKh: [
            'A. ដើម្បីឱ្យបុគ្គលិកឈប់ធ្វើការងារបន្ត។',
            'B. ដើម្បីផ្តល់ភស្តុតាងជាក់ស្តែងថាការផ្លាស់ប្តូរពិតជាផ្តល់ផលល្អ កសាងទំនុកចិត្ត និងបំបាក់សំឡេងអ្នករិះគន់ប្រឆាំង។',
            'C. ដើម្បីចំណាយថវិកាឱ្យអស់ពីគម្រោង។',
          ],
          optionsEn: [
            'A. To encourage staff to stop working early.',
            'B. To provide tangible proof that the new way works, building momentum and disarming cynical critics.',
            'C. To exhaust project budget allocations.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ ជ័យជម្នះរយៈពេលខ្លី (Short-term wins) បង្ហាញភស្តុតាងជាក់ស្តែងដល់មនុស្សដែលកំពុងសង្ស័យ និងផ្តល់ថាមពលដល់ក្រុមការងារដើម្បីបន្តដំណើរទៅមុខទៀត។',
          explanationEn: 'Explanation: Early quick wins validate the strategic direction and disarm cynical resistance.',
        ),
      ],
      reflection: 'តើគម្រោងផ្លាស់ប្តូរកន្លងមករបស់អ្នកធ្លាប់បរាជ័យដោយសារកង្វះការរៀបចំចិត្តសាស្ត្ររបស់បុគ្គលិកដែរឬទេ?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ កំណត់គម្រោងសាកល្បងខ្នាតតូច (Pilot Project) មួយសម្រាប់ការផ្លាស់ប្តូរបន្ទាប់ ដើម្បីបង្កើតជ័យជម្នះដំបូងក្នុងរយៈពេល ៣០ ថ្ងៃ។',
    ),

    // Lesson 8: Talent Pipeline & Leadership Bench Strength
    LessonModel(
      id: 'lesson-hod-8',
      courseId: 'course-hod-strategy',
      moduleId: 'mod-1',
      titleKh: '៨. ការកសាងកៅអីបម្រុងថ្នាក់ដឹកនាំ និងជួរអ្នកបន្តវេន (Talent Pipeline & Bench Strength)',
      titleEn: 'Building Leadership Bench Strength: Talent Pipelines & Succession Planning for HODs',
      type: LessonType.text,
      orderIndex: 8,
      learningObjectives: '• យល់ដឹងពីម៉ាទ្រីស 9-Box Talent Grid សម្រាប់ការវាយតម្លៃសក្តានុពល និងលទ្ធផលការងាររបស់បុគ្គលិក។\n'
          '• បង្កើតកៅអីបម្រុងថ្នាក់ដឹកនាំ (Bench Strength) ធានាថារាល់តំណែង Supervisor/Manager សុទ្ធតែមានអ្នកត្រៀមខ្លួនជំនួស។\n'
          '• កាត់បន្ថយហានិភ័យអាជីវកម្មនៅពេលមានបុគ្គលិកសំខាន់លាលែងពីការងារភ្លាមៗ (Single Point of Failure Risk)។',
      shortExplanation: 'ភាពខ្លាំងរបស់នាយកដ្ឋានមិនត្រូវបានវាស់វែងត្រឹមតែលើទិន្នផលបច្ចុប្បន្ននោះទេ ប៉ុន្តែត្រូវបានវាស់វែងលើ «ជម្រៅនៃកៅអីបម្រុងថ្នាក់ដឹកនាំ» (Leadership Bench Strength)។ ប្រសិនបើនាយកដ្ឋានរបស់អ្នកមាន Manager ឬ Supervisor ម្នាក់លាលែងពីការងារ ហើយនាយកដ្ឋានទាំងមូលត្រូវគាំងស្ទះអស់រយៈពេល ៣ ខែ នោះមានន័យថា HOD បានបរាជ័យក្នុងការគ្រប់គ្រងធនធានមនុស្ស។ HOD ឆ្នើមតែងតែដឹងច្បាស់ថានរណាជាអ្នកត្រៀមខ្លួនឡើងជំនួសតំណែងសំខាន់ៗជានិច្ច។',
      workplaceStory: '«នៅក្នុងក្រុមហ៊ុនធានារ៉ាប់រងមួយ ស្រាប់តែ Finance Manager និង Senior Tax Accountant បានសម្រេចចិត្តលាលែងពីការងារដំណាលគ្នាក្នុងខែធ្នូ ដែលជាខែត្រូវបិទបញ្ជីប្រចាំឆ្នាំ។ \n'
          'សំណាងល្អ លោក គង់ សម្បត្តិ ដែលជា Head of Finance & Strategy បានអនុវត្តប្រព័ន្ធ 9-Box Grid តាំងពីមួយឆ្នាំមុន។ គាត់បានកំណត់ទុកជាមុននូវ Junior Manager ម្នាក់ និង Senior Analyst ម្នាក់ជា "High Potential Talent (HiPo)" ហើយបានបង្វឹកពួកគេឱ្យកាន់ការងារស្នូល ៣០% រួចជាស្រេច។ នៅពេលអ្នកចាស់ចាកចេញ គាត់បានតែងតាំងអ្នកទាំងពីរឡើងកាន់តំណែងភ្លាមៗដោយគ្មានការរអាក់រអួលសូម្បីតែមួយថ្ងៃ។ របាយការណ៍បិទបញ្ជីឆ្នាំត្រូវបានបញ្ចប់ទាន់ពេល ១០០% ហើយ Board of Directors បានកោតសរសើរសម្បត្តិជាខ្លាំងចំពោះការរៀបចំទុកជាមុនដ៏អស្ចារ្យនេះ។»',
      practicalExample: '✅ របៀបប្រើប្រាស់ 9-Box Talent Matrix៖\n'
          '• អ័ក្ស X៖ លទ្ធផលការងារ (Performance: ទាប, មធ្យម, ខ្ពស់)\n'
          '• អ័ក្ស Y៖ សក្តានុពលរីកចម្រើន (Potential: ទាប, មធ្យម, ខ្ពស់)\n'
          '• ប្រអប់កំពូលស្តាំ (High Performance + High Potential)៖ នេះជា Star Talent ដែលត្រូវរៀបចំផែនការឡើងជា Leader ក្នុងរយៈពេល ៦-១២ ខែខាងមុខ។\n'
          '• ច្បាប់ការពារហានិភ័យ៖ រាល់តួនាទីគន្លឹះ (Key Roles) ត្រូវតែមានបេក្ខជនបម្រុងយ៉ាងហោចណាស់ ១ នាក់ (Ready Now) និង ១ នាក់ទៀត (Ready in 1-2 years)។',
      practicalExercise: 'គូរតារាង 9-Box Talent Matrix សម្រាប់ក្រុមការងារគ្រប់គ្រងរបស់អ្នក ហើយកំណត់ថាតើនរណាខ្លះជាបេក្ខជន Ready-Now សម្រាប់តំណែងសំខាន់ៗ។',
      quizQuestions: [
        QuestionModel(
          id: 'q-hod-8',
          promptKh: 'តើអ្វីជាគោលបំណងចម្បងនៃការកសាង Bench Strength ក្នុងនាយកដ្ឋាន?',
          promptEn: 'What is the primary strategic purpose of building leadership bench strength?',
          optionsKh: [
            'A. ដើម្បីជួលមនុស្សឱ្យច្រើនលើសតម្រូវការ។',
            'B. ដើម្បីការពារកុំឱ្យនាយកដ្ឋានគាំងស្ទះនៅពេលមានការលាលែង និងធានាថាមានថ្នាក់ដឹកនាំជំនាន់ក្រោយត្រៀមខ្លួនបន្តវេនជានិច្ច។',
            'C. ដើម្បីកាត់បន្ថយប្រាក់ខែរបស់អ្នកចាស់។',
          ],
          optionsEn: [
            'A. To overhire redundant staff.',
            'B. To insulate the organization from disruption when key talent departs and ensure a continuous pipeline of vetted future leaders.',
            'C. To depress senior salaries.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ Bench Strength ការពារស្ថាប័នពីហានិភ័យនៃការបាត់បង់បុគ្គលិកគន្លឹះភ្លាមៗ (Continuity of Leadership)។',
          explanationEn: 'Explanation: Bench strength eliminates single-point-of-failure talent dependencies across critical business workflows.',
        ),
      ],
      reflection: 'ប្រសិនបើ Manager ឬអ្នកជំនាញសំខាន់បំផុតក្នុងនាយកដ្ឋានរបស់អ្នកលាលែងពីការងារនៅថ្ងៃស្អែក តើអ្នកមានអ្នកណាដែលអាចឡើងជំនួសបានភ្លាមៗដែរឬទេ?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ កំណត់តួនាទីគន្លឹះចំនួន ២ ក្នុងនាយកដ្ឋានរបស់អ្នកដែលងាយរងគ្រោះបំផុត ហើយចាប់ផ្តើមផែនការបង្វឹកអ្នកបន្តវេន។',
    ),

    // Lesson 9: Crisis Communication & Executive Stakeholder Alignment
    LessonModel(
      id: 'lesson-hod-9',
      courseId: 'course-hod-strategy',
      moduleId: 'mod-1',
      titleKh: '៩. ការទំនាក់ទំនងក្នុងគ្រាអាសន្ន និងការតម្រឹមម្ចាស់ភាគហ៊ុន (Crisis Management & Alignment)',
      titleEn: 'Crisis Leadership & Executive Stakeholder Management under Pressure',
      type: LessonType.text,
      orderIndex: 9,
      learningObjectives: '• យល់ដឹងពីក្បួនគ្រប់គ្រងវិបត្តិ (Crisis Management Protocol) ក្នុងនាមជាប្រធាននាយកដ្ឋាន។\n'
          '• រក្សាភាពស្ងប់ស្ងាត់ និងទំនាក់ទំនងប្រកបដោយតម្លាភាពជាមួយ C-Suite និងអតិថិជនក្នុងគ្រាអាសន្ន។\n'
          '• បង្កើត War Room សម្រាប់ការសម្រេចចិត្តរហ័ស និងកាត់បន្ថយការខូចខាតកេរ្តិ៍ឈ្មោះស្ថាប័ន។',
      shortExplanation: 'ក្នុងគ្រាធម្មតា មនុស្សគ្រប់គ្នាសុទ្ធតែអាចធ្វើជាមេដឹកនាំបាន ប៉ុន្តែនៅក្នុង «គ្រាអាសន្ន» (ដូចជា ប្រព័ន្ធទិន្នន័យត្រូវ Hack, ផលិតផលមានបញ្ហាសុខភាព, ឬវិបត្តិហិរញ្ញវត្ថុ) ទើបតម្លៃពិតរបស់ HOD ត្រូវបានលាតត្រដាង។ មេដឹកនាំទន់ខ្សោយនឹងភ័យស្លន់ស្លោ លាក់បាំងការពិត ឬបន្ទោសបុគ្គលិកជួរមុខ។ រីឯ HOD កម្រិតខ្ពស់នឹងបង្កើត War Room ភ្លាមៗ គ្រប់គ្រងលំហូរព័ត៌មាន និងរាយការណ៍ជូន C-Suite ដោយភាពស្មោះត្រង់ រឹងមាំ និងមានដំណោះស្រាយច្បាស់លាស់។',
      workplaceStory: '«នៅធនាគារមួយ ប្រព័ន្ធ Core Banking បានជួបបញ្ហាគាំងនៅថ្ងៃបើកប្រាក់ខែចុងខែ ធ្វើឱ្យអតិថិជនរាប់ម៉ឺននាក់មិនអាចដកលុយបាន ហើយបណ្តាញសង្គមចាប់ផ្តើមផ្ទុះកំហឹងយ៉ាងខ្លាំង។ \n'
          'លោក សុវណ្ណារិទ្ធ ជា Head of Technology មិនបានភ័យស្លន់ស្លោឡើយ។ គាត់បានបង្កើត War Room ក្នុងរយៈពេល ១៥ នាទី៖ \n'
          '១. គាត់ចាត់តាំងក្រុមវិស្វករជំនាញឱ្យផ្តោតតែលើការជួសជុលកូដដោយគ្មានការរំខាន។\n'
          '②. គាត់បានទូរស័ព្ទរាយការណ៍ផ្ទាល់ជូន CEO រៀងរាល់ ៣០ នាទីម្តងជាមួយនឹងទិន្នន័យពិតប្រាកដ និងពេលវេលារំពឹងទុក។\n'
          '៣. គាត់បានសហការជាមួយផ្នែក PR ចេញសេចក្តីថ្លែងការណ៍សុំទោសជាសាធារណៈភ្លាមៗ និងធានាសុវត្ថិភាពសមតុល្យលុយ ១០០%។ \n'
          'ប្រព័ន្ធត្រូវបានជួសជុលរួចរាល់ក្នុងរយៈពេល ៣ ម៉ោង។ ដោយសារភាពជាអ្នកដឹកនាំដ៏ស្ងប់ស្ងាត់ និងតម្លាភាពរបស់សុវណ្ណារិទ្ធ ធនាគារមិនត្រឹមតែមិនបាត់បង់ទំនុកចិត្តពីអតិថិជនទេ ថែមទាំងទទួលបានការកោតសរសើរពីធនាគារជាតិនៃកម្ពុជាចំពោះការគ្រប់គ្រងវិបត្តិដ៏មានវិជ្ជាជីវៈ។»',
      practicalExample: '✅ ច្បាប់មាស ៤ យ៉ាងក្នុងការគ្រប់គ្រងវិបត្តិ (Crisis Communication Rules)៖\n'
          '១. [Tell it Fast]៖ រាយការណ៍ដំណឹងពិតឱ្យបានលឿនបំផុត កុំលាក់បាំង។\n'
          '២. [Tell it All]៖ និយាយការពិតទាំងអស់ កុំឱ្យគេដឹងតាមរយៈអ្នកខាងក្រៅ។\n'
          '៣. [Tell it with Empathy]៖ បង្ហាញការសោកស្តាយ និងការយល់ចិត្តចំពោះអ្នករងផលប៉ះពាល់ជាមុនសិន។\n'
          '៤. [Show the Fix]៖ បង្ហាញសកម្មភាពជាក់ស្តែងដែលកំពុងដោះស្រាយ និងវិធានការការពារកុំឱ្យកើតឡើងម្តងទៀត។',
      practicalExercise: 'បង្កើតផែនការឆ្លើយតបគ្រាអាសន្ន (Emergency Action Plan) មួយទំព័រសម្រាប់ហានិភ័យធំបំផុតដែលអាចកើតឡើងក្នុងនាយកដ្ឋានរបស់អ្នក។',
      quizQuestions: [
        QuestionModel(
          id: 'q-hod-9',
          promptKh: 'នៅពេលមានវិបត្តិធ្ងន់ធ្ងរកើតឡើងក្នុងនាយកដ្ឋាន តើកំហុសដ៏ធំបំផុតដែល HOD មិនត្រូវប្រព្រឹត្តជាដាច់ខាតគឺជាអ្វី?',
          promptEn: 'During a major departmental crisis, what is the gravest mistake an HOD must strictly avoid?',
          optionsKh: [
            'A. រៀបចំកិច្ចប្រជុំបន្ទាន់ដើម្បីដោះស្រាយ។',
            'B. លាក់បាំងដំណឹងអាក្រក់ពី CEO/Board ដោយសង្ឃឹមថាអាចដោះស្រាយស្ងាត់ៗបានមុនពេលគេដឹង។',
            'C. ចេញមុខសុំទោសអតិថិជន។',
          ],
          optionsEn: [
            'A. Convening an urgent response team.',
            'B. Concealing bad news from executive leadership hoping to resolve it quietly before detection.',
            'C. Issuing a public apology.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ គ្មានអ្វីបំផ្លាញទំនុកចិត្តរបស់ C-Suite និង Board លឿនជាងការលាក់បាំងដំណឹងអាក្រក់ក្នុងគ្រាវិបត្តិនោះឡើយ។ តម្លាភាព និងល្បឿនគឺជាគន្លឹះ។',
          explanationEn: 'Explanation: Concealing severity forfeits leadership credibility; early transparency maintains executive trust.',
        ),
      ],
      reflection: 'តើអ្នកមានប្រតិកម្មបែបណាពេលមានរឿងបន្ទាន់កើតឡើង? តើអ្នកមានភាពស្ងប់ស្ងាត់គ្រប់គ្រាន់ដើម្បីដឹកនាំអ្នកដទៃដែរឬទេ?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ពិនិត្យមើលបញ្ជីទំនាក់ទំនងបន្ទាន់ (Crisis Contact Tree) របស់នាយកដ្ឋានអ្នក ដើម្បីធានាថាអាចទាក់ទងគ្នាបាន ២៤/៧។',
    ),

    // Lesson 10: Long-Term Departmental Vision & Innovation Incubation
    LessonModel(
      id: 'lesson-hod-10',
      courseId: 'course-hod-strategy',
      moduleId: 'mod-1',
      titleKh: '១០. ការបង្កើតទស្សនវិស័យរយៈពេលវែង និងការបណ្តុះការច្នៃប្រឌិត (Long-Term Vision & Innovation)',
      titleEn: 'Long-Term Strategic Vision & Innovation Incubation: Preparing for Industry Disruption',
      type: LessonType.text,
      orderIndex: 10,
      learningObjectives: '• យល់ដឹងពីរបៀបបង្កើតទស្សនវិស័យរយៈពេល ៣ ទៅ ៥ ឆ្នាំសម្រាប់នាយកដ្ឋាន (Vision 2030)។\n'
          '• បង្កើតប្រព័ន្ធបណ្តុះគំនិតច្នៃប្រឌិតថ្មីៗ (Innovation Sandbox & 20% Time)។\n'
          '• ត្រៀមខ្លួនទប់ទល់នឹងរលកនៃការផ្លាស់ប្តូរបច្ចេកវិទ្យា (AI, Automation, Market Disruption)។',
      shortExplanation: 'នាយកដ្ឋានដែលរវល់តែ «ពន្លត់ភ្លើង» នឹងការងារប្រតិបត្តិការប្រចាំថ្ងៃ ដោយមិនបានមើលទៅអនាគត នឹងត្រូវសាបរលាប ឬត្រូវជំនួសដោយបច្ចេកវិទ្យាស្វ័យប្រវត្តិនាពេលខាងមុខ។ HOD ឆ្នើមត្រូវតែបែងចែកខួរក្បាលជាពីរ៖ ៨០% សម្រាប់គ្រប់គ្រងប្រតិបត្តិការបច្ចុប្បន្នឱ្យរឹងមាំ និង ២០% សម្រាប់ «សម្លឹងមើលទៅអនាគត» — សាកល្បងឧបករណ៍ថ្មីៗ ស្រាវជ្រាវគំរូអាជីវកម្មថ្មី និងបណ្តុះបណ្តាលបុគ្គលិកឱ្យមានជំនាញនៃអនាគត។',
      workplaceStory: '«លោកស្រី មុនីរ័ត្ន ជា Head of Finance នៅក្រុមហ៊ុនផ្គត់ផ្គង់ចំណីអាហារ។ កាលពី ៣ ឆ្នាំមុន ខណៈដែលក្រុមហ៊ុនដទៃទៀតនៅតែប្រើប្រាស់ការកត់ត្រាវិក្កយបត្រក្រដាស នាងបានមើលឃើញពីទិសដៅនៃបច្ចេកវិទ្យា AI OCR និង E-Invoicing។ \n'
          'នាងបានបង្កើតគម្រោងសាកល្បងតូចមួយ (Innovation Sandbox) ដោយចាត់តាំងគណនេយ្យករវ័យក្មេង ២ នាក់ឱ្យស្រាវជ្រាវ និងសាកល្បងប្រើប្រាស់ AI ក្នុងការស្កេនវិក្កយបត្រស្វ័យប្រវត្តិ។ នៅពេលរដ្ឋាភិបាលប្រកាសដាក់ឱ្យអនុវត្តច្បាប់វិក្កយបត្រអេឡិចត្រូនិកជាផ្លូវការ ក្រុមហ៊ុនរបស់នាងបានត្រៀមខ្លួនរួចរាល់ ១០០% ស្រេចទៅហើយ ខណៈដែលគូប្រជែងត្រូវចំណាយពេល ៦ ខែរញ៉េរញ៉ៃ។ ភាពមើលឃើញវែងឆ្ងាយនេះបានជួយឱ្យនាងត្រូវបានតែងតាំងជា Chief Financial Officer (CFO) របស់ក្រុមហ៊ុន។»',
      practicalExample: '✅ របៀបរៀបចំ Innovation Sandbox ក្នុងនាយកដ្ឋាន៖\n'
          '១. [Allocate 10% Time]៖ អនុញ្ញាតឱ្យបុគ្គលិកចំណាយពេលកន្លះថ្ងៃក្នុងមួយសប្តាហ៍ដើម្បីស្រាវជ្រាវបច្ចេកវិទ្យា ឬវិធីសាស្ត្រថ្មីៗ។\n'
          '②. [Safe to Fail]៖ បង្កើតគម្រោងតូចៗដែលអនុញ្ញាតឱ្យមានការបរាជ័យបានដោយមិនមានការពិន័យ។\n'
          '៣. [Scale Successes]៖ គម្រោងណាដែលជោគជ័យ ត្រូវពង្រីកឱ្យក្លាយជាស្តង់ដារអនុវត្តទូទាំងនាយកដ្ឋាន។',
      practicalExercise: 'សរសេរសេចក្តីព្រាងទស្សនវិស័យ ៣ ឆ្នាំសម្រាប់នាយកដ្ឋានរបស់អ្នក៖ តើនាយកដ្ឋានរបស់អ្នកនឹងមានការផ្លាស់ប្តូរមុខមាត់បែបណាក្នុងរយៈពេល ៣ ឆ្នាំខាងមុខ?',
      quizQuestions: [
        QuestionModel(
          id: 'q-hod-10',
          promptKh: 'ហេតុអ្វីបានជា HOD ត្រូវតែបែងចែកពេលវេលាខ្លះសម្រាប់ស្រាវជ្រាវការច្នៃប្រឌិតថ្មីៗ (Innovation) ទោះបីជានាយកដ្ឋានកំពុងមមាញឹកខ្លាំងក៏ដោយ?',
          promptEn: 'Why must an HOD allocate bandwidth for innovation even while current operations are fully stretched?',
          optionsKh: [
            'A. ដើម្បីកុំឱ្យបុគ្គលិកមានអារម្មណ៍ថាទំនេរពេក។',
            'B. ដើម្បីការពារកុំឱ្យនាយកដ្ឋាន និងក្រុមហ៊ុនត្រូវហួសសម័យ ឬត្រូវកម្ទេចដោយការផ្លាស់ប្តូរបច្ចេកវិទ្យា និងគូប្រជែងថ្មីៗនាពេលអនាគត។',
            'C. ដើម្បីទាក់ទាញការចាប់អារម្មណ៍ពីអ្នកកាសែត។',
          ],
          optionsEn: [
            'A. To keep staff looking occupied.',
            'B. To future-proof the department against sudden technological disruption, obsolescence, and aggressive emerging market competitors.',
            'C. To attract press attention.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ បើមិនបង្កើតថ្មី នឹងត្រូវស្លាប់ (Innovate or Die)។ HOD ត្រូវតែរៀបចំស្ថាប័នឱ្យរួចរាល់សម្រាប់អនាគត មិនមែនគ្រាន់តែរស់នៅជាមួយអតីតកាលនោះទេ។',
          explanationEn: 'Explanation: Proactive innovation shields the enterprise against external obsolescence and disruption.',
        ),
      ],
      reflection: 'តើបច្ចេកវិទ្យាថ្មីៗ (ដូចជា AI) អាចជំនួសការងារ ៥០% នៃនាយកដ្ឋានរបស់អ្នកក្នុងរយៈពេល ៣ ឆ្នាំខាងមុខដែរឬទេ? តើអ្នកបានរៀបចំបណ្តុះបណ្តាលបុគ្គលិកហើយឬនៅ?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ កំណត់ឧបករណ៍បច្ចេកវិទ្យាថ្មីមួយ (ឧ. AI tool) ហើយសាកល្បងឱ្យក្រុមការងារយកមកប្រើសាកល្បងក្នុងកិច្ចការតូចមួយនៅសប្តាហ៍នេះ។',
    ),
  ];
}
