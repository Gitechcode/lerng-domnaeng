import '../domain/course_model.dart';

class ExtraLessonsPart3 {
  // =========================================================================
  // 8. DIRECTOR EXTRA LESSONS (Lessons 3 to 10)
  // =========================================================================
  static final List<LessonModel> directorLessons = [
    // Lesson 3: Sun Tzu's Strategic Terrain & Market Selection (孙子兵法：九地篇)
    LessonModel(
      id: 'lesson-director-3',
      courseId: 'course-director-governance',
      moduleId: 'mod-1',
      titleKh: '៣. សិល្បៈយុទ្ធសាស្ត្រជ្រើសរើសសមរភូមិទីផ្សារ (Sun Tzu: Strategic Terrain & Market Selection)',
      titleEn: 'Sun Tzu Art of War: Selecting Strategic Market Terrains (The Nine Terrains)',
      type: LessonType.text,
      orderIndex: 3,
      learningObjectives: '• យល់ដឹងពីទស្សនវិជ្ជាស៊ុនអ៊ូ (Sun Tzu) ជំពូក «ក្បួនដីទាំង ៩ (九地篇)» សម្រាប់ការវាយលុកទីផ្សារថ្មី។\n'
          '• ចៀសវាងការប្រយុទ្ធលើ «សមរភូមិសមុទ្រក្រហម» (Red Ocean) ដែលពោរពេញដោយសង្គ្រាមកាត់ថ្លៃ។\n'
          '• កំណត់ទីតាំងទីផ្សារដែលជា «ដីយុទ្ធសាស្ត្រគន្លឹះ» (Strategic High Ground) មុនពេលគូប្រជែងដឹងខ្លួន។',
      shortExplanation: 'ទស្សនវិទូយុទ្ធសាស្ត្រ ស៊ុនអ៊ូ បានបង្រៀនថា ជោគជ័យនៃសង្គ្រាមមិនមែនអាស្រ័យលើភាពក្លាហាននោះទេ ប៉ុន្តែអាស្រ័យលើ «ការជ្រើសរើសសមរភូមិ»។ នាយកប្រតិបត្តិការ (Director) ដែលមានចក្ខុវិស័យខ្ពស់មិនដែលរុញក្រុមហ៊ុនឱ្យចូលទៅប្រយុទ្ធក្នុងទីផ្សារដែលគូប្រជែងកំពុងកាន់កាប់រឹងមាំនោះទេ (Do not attack uphill)។ ពួកគេចេះវាយលុកលើចំណុចដែលគូប្រជែងធ្វេសប្រហែស (Attack where they are unprepared) និងដណ្តើមយកទីតាំងយុទ្ធសាស្ត្រដែលចំណេញថ្លៃដើម និងងាយស្រួលការពារ។',
      workplaceStory: '«ក្នុងអំឡុងពេលដែលទីផ្សារភេសជ្ជៈប៉ូវកម្លាំងនៅរាជធានីភ្នំពេញពោរពេញដោយការប្រកួតប្រជែងតម្លៃយ៉ាងសាហាវ លោកស្រី ជា សុភាព ជា Commercial Director នៃក្រុមហ៊ុនផលិតភេសជ្ជៈថ្មីមួយ បានបដិសេធមិនព្រមចំណាយលុយរាប់សែនដុល្លារប្រកួតប្រជែងនៅភ្នំពេញឡើយ។ \n'
          'នាងបានអនុវត្តក្បួនស៊ុនអ៊ូ «ចៀសកន្លែងរឹងមាំ វាយកន្លែងទន់ខ្សោយ» (避实击虚)៖ នាងបានដឹកនាំក្រុមការងារទៅវាយលុកផ្តាច់មុខនៅតំបន់ចម្ការកៅស៊ូ និងតំបន់កសិកម្មនៅខេត្តកំពង់ចាម និងត្បូងឃ្មុំ ដែលជាកន្លែងកសិករត្រូវការកម្លាំងពលកម្មធ្ងន់ធ្ងរ ប៉ុន្តែគ្មានក្រុមហ៊ុនណាទៅផ្សព្វផ្សាយផ្ទាល់។ ក្រុមហ៊ុនបានបង្កើតបណ្តាញចែកចាយរឹងមាំនៅជនបទ និងរកប្រាក់ចំណេញរាប់លានដុល្លារ មុនពេលគូប្រជែងនៅភ្នំពេញដឹងខ្លួន។ ក្រោយមក នាងបានយកទុនចំណេញនោះត្រឡប់មកវាយលុកភ្នំពេញដោយជោគជ័យ។»',
      practicalExample: '✅ ម៉ាទ្រីស ៣ ជំហានក្នុងការជ្រើសរើសសមរភូមិទីផ្សារ៖\n'
          '១. [Avoid Stronghold]៖ កុំចូលទៅប្រកួតប្រជែងតម្លៃជាមួយក្រុមហ៊ុនធំដែលកំពុងក្តោបទីផ្សារ ៨០%។\n'
          '②. [Find the Blindspot]៖ ស្វែងរកក្រុមអតិថិជនដែលគេមើលរំលង (Underserved Segments)។\n'
          '៣. [Fortify the Position]៖ នៅពេលដណ្តើមបានទីតាំងហើយ ត្រូវបង្កើតរនាំងការពារ (Moat) ដូចជា បណ្តាញចែកចាយផ្តាច់មុខ ឬកិច្ចសន្យារយៈពេលវែង។',
      practicalExercise: 'វិភាគផែនទីទីផ្សារបច្ចុប្បន្នរបស់ក្រុមហ៊ុនអ្នក ហើយកំណត់តំបន់ ឬចន្លោះប្រហោងទីផ្សារ (Market White Space) មួយដែលគូប្រជែងកំពុងមើលរំលង។',
      quizQuestions: [
        QuestionModel(
          id: 'q-director-3',
          promptKh: 'តាមទស្សនវិជ្ជាស៊ុនអ៊ូ «ក្បួនដីទាំង ៩» តើយុទ្ធសាស្ត្រដ៏ឆ្លាតវៃបំផុតរបស់ Director ក្នុងការជ្រើសរើសទីផ្សារគឺជាអ្វី?',
          promptEn: 'According to Sun Tzu Nine Terrains, what is the most brilliant market entry strategy?',
          optionsKh: [
            'A. បោះទុនទាំងអស់ប្រកួតប្រជែងតម្លៃជាមួយគូប្រជែងធំបំផុតនៅលើសមរភូមិកណ្តាល។',
            'B. ចៀសវាងកន្លែងដែលគូប្រជែងរឹងមាំ ហើយវាយលុកលើកន្លែងដែលទន់ខ្សោយ ឬខ្វះការការពារ (避实击虚 - Avoid strength, strike weakness)។',
            'C. រង់ចាំរហូតដល់គូប្រជែងទាំងអស់ដួលរលំដោយខ្លួនឯង។',
          ],
          optionsEn: [
            'A. Pour all capital into direct price wars against entrenched market leaders on their home turf.',
            'B. Avoid entrenched competitor strongholds and strike unoccupied, underserved market niches (Avoid strength, strike weakness).',
            'C. Passively wait for competitors to collapse on their own.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ ស៊ុនអ៊ូបង្រៀនឱ្យ «ចៀសកន្លែងរឹងមាំ វាយកន្លែងទន់ខ្សោយ» ដើម្បីដណ្តើមជ័យជម្នះដោយចំណាយកម្លាំងតិចបំផុត និងការពារការខាតបង់ធនធាន។',
          explanationEn: 'Explanation: Masterful strategy avoids frontal assaults on entrenched incumbents, capturing uncontested market terrain.',
        ),
      ],
      reflection: 'តើក្រុមហ៊ុនរបស់អ្នកកំពុងប្រកួតប្រជែងនៅលើសមរភូមិដែលអ្នកមានប្រៀប ឬកំពុងជាប់ផុងក្នុងសង្គ្រាមកាត់ថ្លៃដែលគ្មានអ្នកឈ្នះ?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ពិនិត្យមើលទិន្នន័យអតិថិជនដើម្បីស្វែងរកចន្លោះប្រហោងទីផ្សារថ្មីមួយដែលគ្មានគូប្រជែងយកចិត្តទុកដាក់។',
    ),

    // Lesson 4: Enterprise Risk Management (ERM & Black Swan Preparedness)
    LessonModel(
      id: 'lesson-director-4',
      courseId: 'course-director-governance',
      moduleId: 'mod-1',
      titleKh: '៤. ការគ្រប់គ្រងហានិភ័យស្ថាប័ន និងការត្រៀមទប់ទល់នឹងហេតុការណ៍មិននឹកស្មានដល់ (Enterprise Risk & Black Swan)',
      titleEn: 'Enterprise Risk Management (ERM) & Building Antifragile Corporate Defenses',
      type: LessonType.text,
      orderIndex: 4,
      learningObjectives: '• យល់ដឹងពីក្របខ័ណ្ឌគ្រប់គ្រងហានិភ័យស្ថាប័ន COSO ERM Framework។\n'
          '• បង្កើតផែនការបន្តនិរន្តរភាពអាជីវកម្ម (Business Continuity Plan - BCP) សម្រាប់ទប់ទល់នឹងព្រឹត្តិការណ៍ Black Swan។\n'
          '• ធ្វើតេស្តសាកល្បងភាពធន់នៃស្ថាប័ន (Stress Testing) ចំពោះវិបត្តិសាច់ប្រាក់ និងការរអាក់រអួលនៃខ្សែច្រវាក់ផ្គត់ផ្គង់។',
      shortExplanation: 'នៅក្នុងពិភពលោកដែលពោរពេញដោយភាពមិនប្រាកដប្រជា (VUCA World) ក្រុមហ៊ុនភាគច្រើនមិនដួលរលំដោយសារកង្វះប្រាក់ចំណេញនោះទេ ប៉ុន្តែដួលរលំដោយសារ «ព្រឹត្តិការណ៍ Black Swan» (ហេតុការណ៍កម្រកើតឡើង តែពេលកើតឡើងបង្កមហន្តរាយធ្ងន់ធ្ងរ ដូចជា ជំងឺរាតត្បាត សង្គ្រាម ឬវិបត្តិហិរញ្ញវត្ថុ)។ Director ត្រូវតែជាស្ថាបត្យករនៃភាពធន់ (Antifragility) — រៀបចំទុនបម្រុង ប្រព័ន្ធការពារសុវត្ថិភាព និងផែនការ BCP មុនពេលព្យុះមកដល់។',
      workplaceStory: '«ក្នុងអំឡុងពេលវិបត្តិសេដ្ឋកិច្ចសកល ក្រុមហ៊ុនសំណង់ជាច្រើននៅកម្ពុជាត្រូវក្ស័យធនដោយសារជាប់បំណុលធនាគារ និងគ្មានសាច់ប្រាក់បង្វិល។ \n'
          'ផ្ទុយទៅវិញ ក្រុមហ៊ុនអភិវឌ្ឍន៍មួយដែលដឹកនាំដោយលោក វីរៈ ជា Risk Director បានរួចផុតពីវិបត្តិនេះយ៉ាងអស្ចារ្យ។ កាលពី ២ ឆ្នាំមុន វីរៈបានជំរុញឱ្យ Board អនុវត្តគោលការណ៍ Stress Testing៖ គាត់បានទាមទារឱ្យក្រុមហ៊ុនរក្សាសាច់ប្រាក់បម្រុងសុទ្ធ (Cash Buffer) ស្មើនឹង ៩ ខែនៃថ្លៃប្រតិបត្តិការ និងបានចរចាកាត់បន្ថយបំណុលរយៈពេលខ្លីទាំងអស់។ \n'
          'នៅពេលវិបត្តិបានផ្ទុះឡើង ខណៈដែលគូប្រជែងត្រូវបញ្ឈប់គម្រោង ក្រុមហ៊ុនរបស់វីរៈមិនត្រឹមតែមិនកាត់បន្ថយបុគ្គលិកប៉ុណ្ណោះទេ ថែមទាំងឆ្លៀតឱកាសទិញដីធ្លី និងសម្ភារសំណង់ពីគូប្រជែងក្នុងតម្លៃបញ្ចុះ ៥០%។ ភាពធន់នេះបានធ្វើឱ្យក្រុមហ៊ុនកើនទ្រព្យសម្បត្តិ ៣ ដងក្រោយវិបត្តិបញ្ចប់។»',
      practicalExample: '✅ ម៉ាទ្រីសគ្រប់គ្រងហានិភ័យស្ថាប័ន (The ERM Risk Register)៖\n'
          '• អ័ក្ស ១ [លទ្ធភាពកើតឡើង]៖ ទាប, មធ្យម, ខ្ពស់\n'
          '• អ័ក្ស ២ [ទំហំនៃផលប៉ះពាល់]៖ ស្រាល, មធ្យម, មហន្តរាយ\n'
          '• ហានិភ័យកម្រិតក្រហម (Impact ធ្ងន់ធ្ងរ ទោះលទ្ធភាពទាប)៖ ត្រូវតែមាន Business Continuity Plan (BCP) និងទុនបម្រុងដាច់ខាត។',
      practicalExercise: 'បង្កើត Risk Register សម្រាប់ស្ថាប័នរបស់អ្នក ដោយកំណត់ហានិភ័យធំបំផុត ៣ (ហិរញ្ញវត្ថុ ប្រតិបត្តិការ ច្បាប់) និងវិធានការការពារជាមុន។',
      quizQuestions: [
        QuestionModel(
          id: 'q-director-4',
          promptKh: 'តើអ្វីជាគោលបំណងចម្បងនៃផែនការនិរន្តរភាពអាជីវកម្ម (Business Continuity Plan - BCP)?',
          promptEn: 'What is the primary objective of a Business Continuity Plan (BCP)?',
          optionsKh: [
            'A. ដើម្បីបំពេញឯកសារចោលឱ្យសវនករមើល។',
            'B. ដើម្បីធានាថាប្រតិបត្តិការស្នូលរបស់ក្រុមហ៊ុននៅតែអាចដំណើរការបានជាបន្តបន្ទាប់នៅពេលមានមហន្តរាយ ឬវិបត្តិធ្ងន់ធ្ងរកើតឡើង។',
            'C. ដើម្បីកាត់បន្ថយការបង់ពន្ធរដ្ឋ។',
          ],
          optionsEn: [
            'A. To satisfy formal audit paperwork checklists.',
            'B. To guarantee that critical operational workflows persist without interruption during systemic catastrophes or economic shocks.',
            'C. To evade corporate taxes.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ BCP ធានាការរស់រានមានជីវិតរបស់ស្ថាប័នក្នុងគ្រាអាសន្ន ការពារទ្រព្យសម្បត្តិ និងកេរ្តិ៍ឈ្មោះរបស់ក្រុមហ៊ុន។',
          explanationEn: 'Explanation: BCP guarantees organizational survival and continuous core value delivery during catastrophic shocks.',
        ),
      ],
      reflection: 'ប្រសិនបើស្ថាប័នរបស់អ្នកគ្មានចំណូលសូម្បីតែ ១ ដុល្លារក្នុងរយៈពេល ៦ ខែខាងមុខ តើសាច់ប្រាក់បម្រុងបច្ចុប្បន្នអាចទប់ទល់បានដែរឬទេ?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ពិនិត្យឡើងវិញនូវទំហំសាច់ប្រាក់បម្រុងបន្ទាន់ (Emergency Cash Reserves) របស់ក្រុមហ៊ុនជាមួយ CFO។',
    ),

    // Lesson 5: Board Committee Oversight & Corporate Governance
    LessonModel(
      id: 'lesson-director-5',
      courseId: 'course-director-governance',
      moduleId: 'mod-1',
      titleKh: '៥. អភិបាលកិច្ចស្ថាប័ន និងការគ្រប់គ្រងគណៈកម្មាធិការក្រុមប្រឹក្សាភិបាល (Board Committee Governance)',
      titleEn: 'Corporate Governance & Board Oversight: Audit, Remuneration, and Nomination',
      type: LessonType.text,
      orderIndex: 5,
      learningObjectives: '• យល់ដឹងពីរចនាសម្ព័ន្ធអភិបាលកិច្ចស្តង់ដារអន្តរជាតិ (OECD Principles of Corporate Governance)។\n'
          '• ស្គាល់ពីតួនាទីគន្លឹះនៃគណៈកម្មាធិការទាំង ៣៖ សវនកម្ម (Audit), ជ្រើសរើសតាំង (Nomination), និងបំណាច់ (Remuneration)។\n'
          '• ការពារទំនាស់ផលប្រយោជន៍ (Conflict of Interest) រវាងម្ចាស់ភាគហ៊ុន និងគណៈគ្រប់គ្រង។',
      shortExplanation: 'ក្រុមហ៊ុនគ្រួសារជាច្រើនមិនអាចពង្រីកខ្លួនឱ្យធំបាន ឬមិនអាចចូលផ្សារហ៊ុន (IPO) បានឡើយ ដោយសារកង្វះប្រព័ន្ធអភិបាលកិច្ច (Corporate Governance)៖ ម្ចាស់ក្រុមហ៊ុនដកលុយតាមតែចិត្ត គ្មានសវនកម្មឯករាជ្យ និងតែងតាំងសាច់ញាតិដោយគ្មានសមត្ថភាព។ Director ត្រូវតែកសាងប្រព័ន្ធអភិបាលកិច្ចរឹងមាំ ដែលញែកឱ្យដាច់រវាង «កម្មសិទ្ធិរបស់ម្ចាស់ (Ownership)» និង «ការគ្រប់គ្រងអាជីវកម្ម (Management)» ដើម្បីកសាងទំនុកចិត្តដល់អ្នកវិនិយោគអន្តរជាតិ។',
      workplaceStory: '«ក្រុមហ៊ុនពាណិជ្ជកម្មខ្នាតធំមួយនៅភ្នំពេញចង់ទាក់ទាញទុនវិនិយោគ \$20,000,000 ពីមូលនិធិវិនិយោគជប៉ុន។ ទោះបីជាក្រុមហ៊ុនលក់ដាច់ខ្លាំងក៏ដោយ ប៉ុន្តែអ្នកវិនិយោគជប៉ុនបានបដិសេធមិនព្រមដាក់ទុនទេ ព្រោះរកឃើញថា ប្រធានក្រុមហ៊ុនតែងតែចុះហត្ថលេខាផ្ទេរប្រាក់ក្រុមហ៊ុនចូលគណនីផ្ទាល់ខ្លួន ហើយគណៈកម្មាធិការសវនកម្មផ្ទៃក្នុងគ្មានអំណាចឯករាជ្យ។ \n'
          'លោក សុខុន ដែលត្រូវបានតែងតាំងជា Governance Director បានធ្វើការកែទម្រង់ប្រព័ន្ធអភិបាលកិច្ចទាំងស្រុង៖ គាត់បានបង្កើតគណៈកម្មាធិការសវនកម្មឯករាជ្យ (Independent Audit Committee) ជួលក្រុមហ៊ុនសវនកម្ម Big 4 មកធ្វើសវនកម្មប្រចាំឆ្នាំ និងបង្កើតគោលការណ៍តឹងរ៉ឹងស្តីពីទំនាស់ផលប្រយោជន៍។ មួយឆ្នាំក្រោយមក ក្រុមហ៊ុនជប៉ុនបានយល់ព្រមបណ្តាក់ទុន \$25,000,000 ដោយផ្តល់តម្លៃក្រុមហ៊ុន (Valuation) ខ្ពស់ជាងមុន ៤០%។»',
      practicalExample: '✅ សសរស្តម្ភ ៣ នៃអភិបាលកិច្ចស្ថាប័នកម្រិតស្តង់ដារ៖\n'
          '១. [Audit Committee]៖ ត្រួតពិនិត្យភាពត្រឹមត្រូវនៃរបាយការណ៍ហិរញ្ញវត្ថុ និងប្រព័ន្ធគ្រប់គ្រងផ្ទៃក្នុង។\n'
          '②. [Nomination Committee]៖ ជ្រើសរើសតែងតាំងថ្នាក់ដឹកនាំជាន់ខ្ពស់ដោយឈរលើសមត្ថភាព និងគុណសម្បត្តិ មិនមែនបក្សពួកនិយម។\n'
          '៣. [Remuneration Committee]៖ កំណត់ប្រាក់បំណាច់ និងភាគហ៊ុនលើកទឹកចិត្តដល់ C-Suite ដោយផ្អែកលើលទ្ធផលការងារជាក់ស្តែង។',
      practicalExercise: 'ពិនិត្យមើលរចនាសម្ព័ន្ធអភិបាលកិច្ចបច្ចុប្បន្នរបស់ក្រុមហ៊ុនអ្នក ហើយកំណត់ចំណុចខ្វះខាតធំៗ ២ ដែលត្រូវការកែសម្រួលដើម្បីត្រៀមទាក់ទាញទុនវិនិយោគ។',
      quizQuestions: [
        QuestionModel(
          id: 'q-director-5',
          promptKh: 'ហេតុអ្វីបានជាអ្នកវិនិយោគស្ថាប័នអន្តរជាតិ (Institutional Investors) តែងតែទាមទារឱ្យមានប្រព័ន្ធអភិបាលកិច្ចឯករាជ្យ (Good Governance)?',
          promptEn: 'Why do international institutional investors mandate robust independent corporate governance?',
          optionsKh: [
            'A. ដើម្បីធ្វើឱ្យដំណើរការការងារមានភាពស្មុគស្មាញ និងយឺតយ៉ាវ។',
            'B. ដើម្បីការពារទ្រព្យសម្បត្តិវិនិយោគ កាត់បន្ថយហានិភ័យក្លែងបន្លំ និងធានាតម្លាភាពហិរញ្ញវត្ថុយូរអង្វែង។',
            'C. ដើម្បីដណ្តើមយកអាជីវកម្មពីម្ចាស់ដើម។',
          ],
          optionsEn: [
            'A. To deliberately slow down operations.',
            'B. To protect investor capital, prevent fraud, and ensure long-term fiduciary transparency and fair returns.',
            'C. To forcefully seize the business.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ អភិបាលកិច្ចល្អការពារទ្រព្យសម្បត្តិម្ចាស់ភាគហ៊ុន ការពារការក្លែងបន្លំ និងបង្កើនតម្លៃក្រុមហ៊ុននៅក្នុងទីផ្សារទុន។',
          explanationEn: 'Explanation: Robust governance reduces fraud risk, protects minority shareholders, and unlocks valuation premiums.',
        ),
      ],
      reflection: 'តើការសម្រេចចិត្តក្នុងស្ថាប័នរបស់អ្នកកំពុងពឹងផ្អែកលើ «អារម្មណ៍របស់បុគ្គលម្នាក់» ឬលើ «ប្រព័ន្ធអភិបាលកិច្ច និងច្បាប់ច្បាស់លាស់»?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ រៀបចំសេចក្តីព្រាងគោលការណ៍ទំនាស់ផលប្រយោជន៍ (Conflict of Interest Policy) សម្រាប់ថ្នាក់ដឹកនាំស្ថាប័ន។',
    ),

    // Lesson 6: M&A, Joint Ventures & Cultural Due Diligence
    LessonModel(
      id: 'lesson-director-6',
      courseId: 'course-director-governance',
      moduleId: 'mod-1',
      titleKh: '៦. ការទិញ-ច្របាច់បញ្ចូលអាជីវកម្ម និងការត្រួតពិនិត្យវប្បធម៌ (M&A & Cultural Due Diligence)',
      titleEn: 'Mergers & Acquisitions (M&A): Financial, Legal & Cultural Integration Mastery',
      type: LessonType.text,
      orderIndex: 6,
      learningObjectives: '• យល់ដឹងពីដំណើរការទិញ-ច្របាច់បញ្ចូលអាជីវកម្ម (M&A Process: Screening, Due Diligence, Valuation, Integration)។\n'
          '• ចៀសវាងមូលហេតុលេខ ១ នៃការបរាជ័យ M&A៖ ភាពមិនស៊ីគ្នានៃវប្បធម៌ (Cultural Rejection)។\n'
          '• រៀបចំផែនការច្របាច់បញ្ចូលក្រោយការទិញ (Post-Merger Integration - PMI) ក្នុងរយៈពេល ១០០ ថ្ងៃដំបូង។',
      shortExplanation: 'ការសិក្សាផ្នែកហិរញ្ញវត្ថុបង្ហាញថា ជាង ៧០% នៃកិច្ចព្រមព្រៀងទិញ-ច្របាច់បញ្ចូលអាជីវកម្ម (M&A) ជុំវិញពិភពលោកត្រូវបរាជ័យក្នុងការបង្កើតតម្លៃ។ មូលហេតុមិនមែនដោយសារតួលេខហិរញ្ញវត្ថុខុសនោះទេ ប៉ុន្តែដោយសារ «ការច្រានចោលខាងវប្បធម៌» (Culture Clash) រវាងស្ថាប័នទាំងពីរ។ Director ឆ្នើមត្រូវតែធ្វើការត្រួតពិនិត្យវប្បធម៌ (Cultural Due Diligence) ឱ្យបានម៉ត់ចត់ស្មើនឹងការពិនិត្យបញ្ជីគណនេយ្យ និងច្បាប់។',
      workplaceStory: '«ក្រុមហ៊ុនផ្គត់ផ្គង់ភស្តុភារកម្ម (Logistics) ធំមួយបានចំណាយប្រាក់ \$8,000,000 ទិញយកក្រុមហ៊ុនដឹកជញ្ជូនរហ័សបែបបច្ចេកវិទ្យាវ័យក្មេងមួយ។ ក្រុមហិរញ្ញវត្ថុបានគណនាថាក្រុមហ៊ុននឹងចំណេញយ៉ាងសម្បើម។ \n'
          'ប៉ុន្តែក្រោយទិញរួច ក្រុមហ៊ុនមេបានបង្ខំឱ្យបុគ្គលិកបច្ចេកវិទ្យាវ័យក្មេងស្លៀកពាក់ឯកសណ្ឋានតឹងរ៉ឹង ស្កេនមេដៃម៉ោង ៧:៣០ ព្រឹក និងបំពេញឯកសាររដ្ឋបាលរាប់សិបទំព័ររាល់ពេលចង់កែកូដ។ ត្រឹមតែ ៤ ខែ ក្រុមវិស្វករសំខាន់ៗ ៨០% បាននាំគ្នាលាលែងពីការងារ ធ្វើឱ្យប្រព័ន្ធ App គាំងដំណើរការ ហើយក្រុមហ៊ុនមេត្រូវខាតបង់ប្រាក់វិនិយោគទាំងស្រុង។ ក្រោយមក ក្រុមហ៊ុនទើបយល់ថា "ការទិញក្រុមហ៊ុន គឺការទិញមនុស្ស និងវប្បធម៌ បើកម្ទេចវប្បធម៌របស់គេ នោះអ្វីៗដែលទិញបាននឹងក្លាយជាធូលីដី"។»',
      practicalExample: '✅ បញ្ជីត្រួតពិនិត្យ Post-Merger Integration (PMI 100-Day Plan)៖\n'
          '• ថ្ងៃ ១-៣០ [Retain Key Talent]៖ ចុះកិច្ចសន្យារក្សាបុគ្គលិកគន្លឹះ (Golden Handcuffs / Retention Bonus)។\n'
          '• ថ្ងៃ ៣១-៦០ [Align Communications]៖ រៀបចំកិច្ចប្រជុំ Town Hall ពន្យល់ពីទស្សនវិស័យរួម និងបំបាត់ការភ័យខ្លាច។\n'
          '• ថ្ងៃ ៦១-១០០ [Harmonize Systems]៖ ភ្ជាប់ប្រព័ន្ធហិរញ្ញវត្ថុ និងប្រព័ន្ធប្រតិបត្តិការបន្តិចម្តងៗដោយមិនបង្ខិតបង្ខំ។',
      practicalExercise: 'គិតអំពីអាជីវកម្ម ឬដៃគូមួយដែលក្រុមហ៊ុនអ្នកអាចទិញយក ឬបង្កើត Joint Venture ហើយសរសេរចំណុចខុសគ្នានៃវប្បធម៌ធំៗ ៣ ដែលត្រូវត្រៀមសម្របសម្រួល។',
      quizQuestions: [
        QuestionModel(
          id: 'q-director-6',
          promptKh: 'តើមូលហេតុចម្បងបំផុតដែលធ្វើឱ្យកិច្ចព្រមព្រៀង M&A ភាគច្រើនលើពិភពលោកបរាជ័យក្រោយការទិញរួចគឺជាអ្វី?',
          promptEn: 'What is the primary root cause behind the failure of most global M&A transactions?',
          optionsKh: [
            'A. អតិថិជនឈប់ប្រើប្រាស់លុយ។',
            'B. ភាពមិនចុះសម្រុងគ្នានៃវប្បធម៌ស្ថាប័ន (Culture Clash) និងការចាកចេញរបស់បុគ្គលិកជំនាញគន្លឹះ។',
            'C. មេធាវីគិតថ្លៃសេវាថ្លៃពេក។',
          ],
          optionsEn: [
            'A. Customers ceasing to use currency.',
            'B. Institutional culture clash, toxic integration friction, and the mass exodus of essential talent.',
            'C. Excessive legal advisory fees.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ វប្បធម៌ស្ថាប័នដែលមិនត្រូវគ្នានឹងកម្ទេចតម្លៃនៃកិច្ចព្រមព្រៀង M&A។ ការគ្រប់គ្រងការផ្លាស់ប្តូរវប្បធម៌ និងការរក្សាមនុស្សសំខាន់គឺជាគន្លឹះ។',
          explanationEn: 'Explanation: Culture clash and talent flight erode projected synergies, ruining M&A returns.',
        ),
      ],
      reflection: 'ប្រសិនបើស្ថាប័នរបស់អ្នកត្រូវច្របាច់បញ្ចូលជាមួយក្រុមហ៊ុនមួយទៀត តើវប្បធម៌បច្ចុប្បន្នរបស់អ្នកមានភាពបត់បែនគ្រប់គ្រាន់ដើម្បីសម្របខ្លួនដែរឬទេ?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ រៀបចំក្របខ័ណ្ឌ Cultural Due Diligence Checklist ខ្លីមួយសម្រាប់ប្រើប្រាស់ក្នុងការវាយតម្លៃដៃគូសហការ។',
    ),

    // Lesson 7: Multi-Branch Geographic Expansion & Replicating DNA
    LessonModel(
      id: 'lesson-director-7',
      courseId: 'course-director-governance',
      moduleId: 'mod-1',
      titleKh: '៧. ការពង្រីកសាខាភូមិសាស្ត្រ និងការចម្លង DNA ស្ថាប័ន (Geographic Expansion & DNA Replication)',
      titleEn: 'Scaling Multi-Branch Operations: Replicating Core Corporate DNA Without Dilution',
      type: LessonType.text,
      orderIndex: 7,
      learningObjectives: '• យល់ដឹងពីយុទ្ធសាស្ត្រពង្រីកសាខា (Hub-and-Spoke vs. Cluster Expansion Model)។\n'
          '• បង្កើត «កញ្ចប់ដំណើរការសាខាថ្មី» (Branch-in-a-Box Playbook) សម្រាប់ការបើកសាខាយ៉ាងរហ័ស។\n'
          '• ការពារកុំឱ្យគុណភាពសេវាកម្ម និងវប្បធម៌ស្ថាប័នរលាយសាបសូន្យនៅពេលពង្រីកសាខាច្រើន។',
      shortExplanation: 'ការបើកសាខាទី ១ គឺជាការបង្កើតសិល្បៈ ប៉ុន្តែការពង្រីកពីសាខាទី ៥ ទៅសាខាទី ៥០ គឺជាវិទ្យាសាស្ត្រ និងប្រព័ន្ធ (Standardization)។ បញ្ហាធំបំផុតរបស់ក្រុមហ៊ុនដែលពង្រីកសាខាលឿនពេកគឺ «ការរលាយបាត់ DNA» (Cultural Dilution)៖ សាខាកាន់តែឆ្ងាយ ការបម្រើសេវាកាន់តែខ្សោយ ហើយអតិថិជនចាប់ផ្តើមខកចិត្ត។ Director ត្រូវបង្កើតប្រព័ន្ធ Playbook ដែលអនុញ្ញាតឱ្យសាខាថ្មីអាចដំណើរការបានស្តង់ដារដូចគ្នាបេះបិទក្នុងរយៈពេលតែ ២ សប្តាហ៍។',
      workplaceStory: '«បណ្តាញហាងកាហ្វេ និងនំប៉័ងក្នុងស្រុកមួយបានពង្រីកសាខាពី ៣ ទៅ ២០ សាខាក្នុងរយៈពេលតែមួយឆ្នាំ។ ប៉ុន្តែនៅពេលម្ចាស់ដើរពិនិត្យសាខានៅបាត់ដំបង និងកំពត គាត់បានភ្ញាក់ផ្អើលយ៉ាងខ្លាំង៖ រសជាតិកាហ្វេជូរខុសធម្មតា បុគ្គលិកមិនញញឹមដាក់ភ្ញៀវ ហើយអនាម័យក្នុងបន្ទប់ទឹកមានសភាពកខ្វក់។ \n'
          'លោក វិទូ ជា Operations Director បានចូលមកដោះស្រាយបញ្ហានេះជាបន្ទាន់៖ គាត់បានបង្កើតប្រព័ន្ធ "Branch-in-a-Box": \n'
          '១. រាល់គ្រឿងផ្សំទាំងអស់ត្រូវតែផលិតចេញពីផ្ទះបាយកណ្តាល (Central Kitchen) តែមួយគត់ដើម្បីធានារសជាតិ ១០០%។\n'
          '②. រាល់អ្នកគ្រប់គ្រងសាខាថ្មីទាំងអស់ត្រូវតែចូលហ្វឹកហាត់នៅសាខាមេយ៉ាងតិច ៤៥ ថ្ងៃមុនចេញទៅកាន់កាប់សាខា។\n'
          '៣. បង្កើតប្រព័ន្ធសវនករសម្ងាត់ (Mystery Shopper) ចុះពិនិត្យពិន្ទុគុណភាពរៀងរាល់សប្តាហ៍។ \n'
          'តាមរយៈប្រព័ន្ធនេះ គ្រប់សាខាទាំងអស់ទទួលបានពិន្ទុគុណភាពស្មើគ្នាឡើងវិញ ហើយម៉ាកយីហោបានក្លាយជាបណ្តាញកាហ្វេដ៏គួរឱ្យទុកចិត្តបំផុត។»',
      practicalExample: '✅ ធាតុផ្សំ ៤ នៃ Branch-in-a-Box Playbook៖\n'
          '• [Facility & Design Manual]៖ ប្លង់ស្ថាបត្យកម្មស្តង់ដារ ការរៀបចំតុ និងឧបករណ៍បច្ចេកវិទ្យា។\n'
          '• [Operations SOP]៖ សៀវភៅណែនាំការងារប្រចាំថ្ងៃតាំងពីបើកហាង រហូតដល់បិទទ្វារហាង។\n'
          '• [HR & Training Kit]៖ កម្មវិធីបណ្តុះបណ្តាលបុគ្គលិកថ្មីរយៈពេល ១៤ ថ្ងៃ និងស្គ្រីបបម្រើភ្ញៀវ។\n'
          '• [Audit & Compliance KPI]៖ បញ្ជីត្រួតពិនិត្យពិន្ទុគុណភាព និងសុវត្ថិភាពប្រចាំខែ។',
      practicalExercise: 'ជ្រើសរើសផ្នែកសំខាន់បំផុតមួយនៃអាជីវកម្មរបស់អ្នក ហើយសរសេរសេចក្តីព្រាង Playbook ស្តង់ដារដើម្បីឱ្យសាខាថ្មីអាចយកទៅអនុវត្តបានភ្លាមៗ។',
      quizQuestions: [
        QuestionModel(
          id: 'q-director-7',
          promptKh: 'តើអ្វីជាគន្លឹះសំខាន់បំផុតក្នុងការធានាថាគុណភាព និងវប្បធម៌ក្រុមហ៊ុនមិនរលាយសាបសូន្យនៅពេលពង្រីកសាខាច្រើន?',
          promptEn: 'What is the critical mechanism to prevent cultural and quality dilution during multi-branch scaling?',
          optionsKh: [
            'A. អនុញ្ញាតឱ្យសាខានីមួយៗធ្វើអ្វីតាមចិត្តដោយគ្មានច្បាប់ទម្លាប់។',
            'B. ការបង្កើតប្រព័ន្ធស្តង់ដាររួម (Centralized Playbook & SOP) រួមជាមួយការបណ្តុះបណ្តាល DNA មេដឹកនាំសាខា និងប្រព័ន្ធត្រួតពិនិត្យគុណភាពជាប្រចាំ (Audits)។',
            'C. កាត់បន្ថយចំនួនបុគ្គលិកនៅគ្រប់សាខាឱ្យនៅតិចបំផុត។',
          ],
          optionsEn: [
            'A. Allowing autonomous branch practices without standardized guidelines.',
            'B. Robust standardized playbooks (Branch-in-a-Box), intensive leadership DNA immersion, centralized quality control, and rigorous audits.',
            'C. Starving branch headcount.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ ការពង្រីកអាជីវកម្មជោគជ័យទាមទារប្រព័ន្ធស្តង់ដារូបនីយកម្ម (Standardization) និងការបណ្តុះបណ្តាល DNA វប្បធម៌ឱ្យច្បាស់លាស់។',
          explanationEn: 'Explanation: Institutional standardization via playbooks paired with leadership culture-immersion protects brand equity at scale.',
        ),
      ],
      reflection: 'តើសាខា ឬក្រុមការងារនៅឆ្ងាយពីការិយាល័យកណ្តាលរបស់អ្នក កំពុងដំណើរការតាមស្តង់ដារដូចគ្នា ឬកំពុងធ្វើតាមទម្លាប់រៀងៗខ្លួន?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ចុះទៅពិនិត្យ ឬវីដេអូខលជាមួយសាខាដែលនៅឆ្ងាយបំផុត ដើម្បីត្រួតពិនិត្យការអនុវត្តស្តង់ដារ SOP ជាក់ស្តែង។',
    ),

    // Lesson 8: Regulatory Compliance, Anti-Corruption & Ethical Standards
    LessonModel(
      id: 'lesson-director-8',
      courseId: 'course-director-governance',
      moduleId: 'mod-1',
      titleKh: '៨. អនុលោមភាពផ្លូវច្បាប់ ការប្រឆាំងអំពើពុករលួយ និងស្តង់ដារសីលធម៌ (Compliance & Ethics)',
      titleEn: 'Corporate Compliance, Anti-Corruption & Institutional Ethical Standards',
      type: LessonType.text,
      orderIndex: 8,
      learningObjectives: '• យល់ដឹងពីសារៈសំខាន់នៃច្បាប់ស្តីពីការប្រឆាំងការលាងលុយកខ្វក់ (AML) និងច្បាប់ពន្ធដារកម្ពុជា។\n'
          '• បង្កើតប្រព័ន្ធរាយការណ៍អនាមិកការពារអ្នកផ្តល់ដំណឹង (Whistleblower Protection Policy)។\n'
          '• ការពារស្ថាប័នពីហានិភ័យផ្លូវច្បាប់ និងការខូចខាតកេរ្តិ៍ឈ្មោះធ្ងន់ធ្ងរ។',
      shortExplanation: 'នៅក្នុងសម័យមុន ក្រុមហ៊ុនខ្លះអាចឆ្លៀតឱកាសកិបកេងពន្ធ ឬផ្តល់ប្រាក់ក្រោមតុដើម្បីសម្រួលការងារ ប៉ុន្តែនៅក្នុងសេដ្ឋកិច្ចទំនើប និងច្បាប់តឹងរ៉ឹង ការអនុវត្តបែបនេះគឺជា «គ្រាប់បែកពេលវេលា» (Ticking Time Bomb)។ ក្រុមហ៊ុនលំដាប់អន្តរជាតិ និងស្ថាប័នហិរញ្ញវត្ថុធំៗនឹងមិនសហការជាមួយក្រុមហ៊ុនដែលខ្វះតម្លាភាពឡើយ។ Director ត្រូវតែកសាងវប្បធម៌អនុលោមភាព (Culture of Compliance) ដែលប្រកាន់ខ្ជាប់នូវភាពស្មោះត្រង់ និងច្បាប់ជាចម្បង។',
      workplaceStory: '«ក្រុមហ៊ុននាំចេញកសិផលមួយត្រូវបានមន្ត្រីលទ្ធកម្មម្នាក់ឃុបឃិតជាមួយអ្នកផ្គត់ផ្គង់ដើម្បីស៊ីថ្លៃកម្រៃជើងសារក្រោមតុ (Kickbacks) អស់រយៈពេល ៣ ឆ្នាំ ដែលធ្វើឱ្យក្រុមហ៊ុនខាតបង់ប្រាក់រាប់សែនដុល្លារ។ \n'
          'លោកស្រី មុនីកា ជា Compliance Director បានដាក់ចេញនូវប្រព័ន្ធ Whistleblower System តាមរយៈប្រអប់សារសម្ងាត់អនាមិក និងលេខទូរស័ព្ទពិសេស។ ត្រឹមតែមួយខែ នាងបានទទួលព័ត៌មានលម្អិត និងភស្តុតាងពីបុគ្គលិកស្មោះត្រង់ម្នាក់។ ករណីកិបកេងត្រូវបានលាតត្រដាង ហើយជនល្មើសត្រូវបានបញ្ជូនទៅកាន់ផ្លូវច្បាប់។ លើសពីនេះ នាងបានរៀបចំគោលការណ៍ "Zero Tolerance for Bribery" និងប្រព័ន្ធពិនិត្យអ្នកផ្គត់ផ្គង់ប្រកបដោយតម្លាភាព ដែលជួយឱ្យក្រុមហ៊ុនទទួលបានវិញ្ញាបនបត្រស្តង់ដារអន្តរជាតិ ISO 37001 (Anti-Bribery Management) ដំបូងគេក្នុងវិស័យ។»',
      practicalExample: '✅ ធាតុផ្សំ ៣ នៃប្រព័ន្ធការពារសីលធម៌ស្ថាប័ន៖\n'
          '១. [Whistleblower Channel]៖ បង្កើតបណ្តាញរាយការណ៍សម្ងាត់អនាមិកដែលគ្មានអ្នកណាអាចតាមដានអត្តសញ្ញាណអ្នករាយការណ៍បាន។\n'
          '②. [Gift & Entertainment Policy]៖ កំណត់ច្បាប់ច្បាស់លាស់៖ បុគ្គលិកមិនត្រូវទទួលកាដូ ឬប្រាក់ពីអ្នកផ្គត់ផ្គង់លើសពី \$20 ឡើយ (លើសពីនេះត្រូវប្រកាសជាសាធារណៈ)។\n'
          '៣. [Independent Audit]៖ ធ្វើសវនកម្មដំណើរការទិញ-លក់ និងហិរញ្ញវត្ថុដោយមិនប្រាប់ឱ្យដឹងមុន (Surprise Audits)។',
      practicalExercise: 'ពិនិត្យមើលគោលការណ៍ Whistleblower Policy និងច្បាប់ស្តីពីការទទួលអំណោយរបស់ក្រុមហ៊ុនអ្នក ហើយកែសម្រួលវាឱ្យស្របតាមស្តង់ដារអន្តរជាតិ។',
      quizQuestions: [
        QuestionModel(
          id: 'q-director-8',
          promptKh: 'តើអ្វីជាការធានាដ៏សំខាន់បំផុតដើម្បីឱ្យប្រព័ន្ធរាយការណ៍អំពើពុករលួយ (Whistleblower System) ដំណើរការបានជោគជ័យ?',
          promptEn: 'What is the absolute prerequisite for a successful corporate Whistleblower System?',
          optionsKh: [
            'A. តម្រូវឱ្យអ្នករាយការណ៍សរសេរឈ្មោះ និងលេខទូរស័ព្ទជាសាធារណៈ។',
            'B. ការរក្សាការសម្ងាត់ និងការការពារអនាមិក ១០០% ដល់អ្នកផ្តល់ដំណឹង ដើម្បីការពារកុំឱ្យមានការសងសឹក ឬធ្វើបាប (Protection from retaliation)។',
            'C. មិនបាច់បើកមើលសាររាយការណ៍នោះទេ។',
          ],
          optionsEn: [
            'A. Requiring whistleblowers to publicly state their personal phone numbers.',
            'B. Ironclad anonymity, strict confidentiality, and formal anti-retaliation legal protections for informants.',
            'C. Ignoring incoming reports.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ ប្រសិនបើគ្មានការការពារអនាមិក និងសុវត្ថិភាពដល់អ្នករាយការណ៍ទេ គ្មានបុគ្គលិកណាម្នាក់ហ៊ានលាតត្រដាងការពិតនោះឡើយ។',
          explanationEn: 'Explanation: Uncompromising anonymity and anti-retaliation protections are essential for surfacing internal corruption.',
        ),
      ],
      reflection: 'តើបុគ្គលិកក្នុងស្ថាប័នរបស់អ្នកហ៊ានរាយការណ៍ពីភាពមិនប្រក្រតី ឬអំពើពុករលួយដែលពួកគេបានឃើញដែរឬទេ?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ផ្ញើអ៊ីមែលរំលឹកដល់បុគ្គលិកទាំងអស់អំពីក្រមសីលធម៌អាជីវកម្ម និងបណ្តាញរាយការណ៍សម្ងាត់របស់ស្ថាប័ន។',
    ),

    // Lesson 9: Strategic Brand Equity & Crisis Safeguarding
    LessonModel(
      id: 'lesson-director-9',
      courseId: 'course-director-governance',
      moduleId: 'mod-1',
      titleKh: '៩. ការកសាងតម្លៃយីហោជាយុទ្ធសាស្ត្រ និងការការពារកេរ្តិ៍ឈ្មោះ (Brand Equity & PR Defense)',
      titleEn: 'Strategic Brand Equity: Building Institutional Trust and Reputational Moats',
      type: LessonType.text,
      orderIndex: 9,
      learningObjectives: '• យល់ដឹងពីរបៀបវាស់វែង និងកសាងតម្លៃយីហោស្ថាប័ន (Brand Equity & Goodwill) លើតារាងតុល្យការ។\n'
          '• បង្កើតរនាំងការពារកេរ្តិ៍ឈ្មោះ (Reputational Moat) ក្នុងចំណោមសាធារណជន និងអ្នកសារព័ត៌មាន។\n'
          '• គ្រប់គ្រងវិបត្តិព័ត៌មានមិនពិត (Fake News & Smear Campaigns) លើបណ្តាញសង្គមក្នុងរយៈពេល ២ ម៉ោងដំបូង។',
      shortExplanation: 'មហាសេដ្ឋី Warren Buffett ធ្លាប់បានមានប្រសាសន៍ថា៖ «វាត្រូវការពេល ២០ ឆ្នាំដើម្បីកសាងកេរ្តិ៍ឈ្មោះ ប៉ុន្តែត្រូវការពេលត្រឹមតែ ៥ នាទីដើម្បីបំផ្លាញវាចោល»។ នៅក្នុងយុគសម័យបណ្តាញសង្គម ព័ត៌មានអវិជ្ជមាន ឬការយល់ច្រឡំមួយអាចរីករាលដាលពេញប្រទេសក្នុងរយៈពេលតែប៉ុន្មានម៉ោង។ Director ត្រូវតែកសាងទ្រព្យសម្បត្តិយីហោ (Brand Goodwill) ឱ្យរឹងមាំ និងមានក្រុមឆ្លើយតបព័ត៌មានវិទ្យា (Rapid PR Defense Team) ២៤/៧។',
      workplaceStory: '«ម៉ាកយីហោទឹកដោះគោក្នុងស្រុកដ៏ល្បីមួយ ត្រូវបានគេបង្ហោះវីដេអូក្លែងក្លាយលើ TikTok ដោយចោទប្រកាន់ថាទឹកដោះគោមានជាតិគីមីពុល ធ្វើឱ្យអតិថិជនរាប់ពាន់នាក់ទាមទារសងប្រាក់វិញ។ \n'
          'លោក សម្បត្តិ ជា Marketing & Public Affairs Director មិនបាននៅស្ងៀម ឬគំរាមប្តឹងតវ៉ាឡើយ។ ក្នុងរយៈពេលតែ ២ ម៉ោង៖ \n'
          '១. គាត់បានផ្សាយផ្ទាល់ (Facebook Live) បង្ហាញពីរោងចក្រស្អាតស្អំស្តង់ដារអន្តរជាតិ និងមន្ទីរពិសោធន៍តេស្តគុណភាព។\n'
          '②. គាត់បានអញ្ជើញអ្នកសារព័ត៌មានកំពូលៗ និងតំណាងក្រសួងសុខាភិបាលមកត្រួតពិនិត្យ និងយកសំណាកតេស្តដោយផ្ទាល់នៅព្រឹកស្អែក។\n'
          '៣. ក្រសួងបានចេញលិខិតបញ្ជាក់សុវត្ថិភាពជាផ្លូវការក្នុងរយៈពេល ២៤ ម៉ោង។ \n'
          'ភាពរហ័សរហួន តម្លាភាព និងភាពក្លាហានរបស់សម្បត្តិ មិនត្រឹមតែបំបាត់ពាក្យចចាមអារ៉ាមនោះទេ ប៉ុន្តែបានធ្វើឱ្យសាធារណជនកាន់តែមានទំនុកចិត្តលើគុណភាពផលិតផល ហើយការលក់បានកើនឡើង ៣០% លើសកាលពីមុន។»',
      practicalExample: '✅ ច្បាប់មាស ៣ ក្នុងការការពារកេរ្តិ៍ឈ្មោះយីហោលើបណ្តាញសង្គម (Social Media Crisis Protocol)៖\n'
          '• ម៉ោងទី ១ [Verify & Contain]៖ ផ្ទៀងផ្ទាត់ប្រភព និងស្វែងយល់ពីឫសគល់នៃបញ្ហា (កុំប្រញាប់ប្រកែកដោយគ្មានទិន្នន័យ)។\n'
          '• ម៉ោងទី ២ [Transparent First Response]៖ ចេញសេចក្តីថ្លែងការណ៍ខ្លីបញ្ជាក់ថា ស្ថាប័នបានដឹងរឿង និងកំពុងស៊ើបអង្កេតយ៉ាងយកចិត្តទុកដាក់។\n'
          '• ម៉ោងទី ២៤ [Factual Resolution]៖ បង្ហាញភស្តុតាងវិទ្យាសាស្ត្រ ឬរបាយការណ៍សវនកម្មផ្លូវការ និងដំណោះស្រាយជាក់ស្តែង។',
      practicalExercise: 'បង្កើតសេចក្តីព្រាងពិធីសារការពារកេរ្តិ៍ឈ្មោះយីហោ (Brand Crisis Response Protocol) សម្រាប់ករណីអតិថិជនរិះគន់ធ្ងន់ធ្ងរលើបណ្តាញសង្គម។',
      quizQuestions: [
        QuestionModel(
          id: 'q-director-9',
          promptKh: 'នៅពេលស្ថាប័នរងការចោទប្រកាន់អវិជ្ជមានលើបណ្តាញសង្គម តើកំហុសដ៏ធំបំផុតដែលមិនត្រូវធ្វើជាដាច់ខាតគឺជាអ្វី?',
          promptEn: 'When an organization faces viral social media backlash, what is the gravest mistake to avoid?',
          optionsKh: [
            'A. ការចេញមុខបកស្រាយដោយតម្លាភាព និងភស្តុតាង។',
            'B. ការលុប Comment ចោល រារាំង (Block) អតិថិជន និងការរក្សាភាពស្ងៀមស្ងាត់យូរថ្ងៃដោយគ្មានការឆ្លើយតប។',
            'C. ការសហការជាមួយអាជ្ញាធរមានសមត្ថកិច្ច។',
          ],
          optionsEn: [
            'A. Responding transparently with verified factual evidence.',
            'B. Deleting comments, blocking critical users, and remaining completely silent for days.',
            'C. Cooperating with regulatory authorities.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ ការលុប Comment និងការស្ងៀមស្ងាត់នឹងធ្វើឱ្យមហាជនកាន់តែខឹងសម្បារ និងជឿជាក់ថាស្ថាប័នពិតជាបានប្រព្រឹត្តខុសមែន។',
          explanationEn: 'Explanation: Censoring comments and stonewalling validates public outrage, converting small issues into PR catastrophes.',
        ),
      ],
      reflection: 'តើយីហោរបស់ស្ថាប័នអ្នកមាន «ដើមទុនទំនុកចិត្ត (Goodwill)» គ្រប់គ្រាន់ដើម្បីទប់ទល់នឹងព្យុះព័ត៌មានអវិជ្ជមានដែរឬទេ?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ត្រួតពិនិត្យប្រព័ន្ធ Social Listening Tools ដើម្បីតាមដានមតិរបស់អតិថិជនលើបណ្តាញសង្គមជាប្រចាំ។',
    ),

    // Lesson 10: ESG & Sustainable Corporate Stewardship
    LessonModel(
      id: 'lesson-director-10',
      courseId: 'course-director-governance',
      moduleId: 'mod-1',
      titleKh: '១០. និរន្តរភាពអាជីវកម្ម ESG និងការទទួលខុសត្រូវសង្គម (ESG & Sustainable Stewardship)',
      titleEn: 'Environmental, Social & Governance (ESG): Building Century-Long Sustainability',
      type: LessonType.text,
      orderIndex: 10,
      learningObjectives: '• យល់ដឹងពីក្របខ័ណ្ឌ ESG (បរិស្ថាន សង្គម និងអភិបាលកិច្ច) ក្នុងការទាក់ទាញទុនវិនិយោគបៃតង (Green Capital)។\n'
          '• បង្កើតគម្រោងទំនួលខុសត្រូវសង្គម (CSR) ដែលផ្សារភ្ជាប់ទៅនឹងយុទ្ធសាស្ត្រអាជីវកម្មស្នូល មិនមែនគ្រាន់តែជាការធ្វើបុណ្យចែកលុយ។\n'
          '• ត្រៀមស្ថាប័នឱ្យស្របតាមស្តង់ដារបញ្ចេញឧស្ម័នសូន្យ (Net Zero) និងការអភិវឌ្ឍប្រកបដោយចីរភាព។',
      shortExplanation: 'កាលពីមុន គោលដៅតែមួយគត់របស់ក្រុមហ៊ុនគឺ «បង្កើនប្រាក់ចំណេញដល់ម្ចាស់ភាគហ៊ុន» (Shareholder Primacy)។ ប៉ុន្តែនៅក្នុងសតវត្សរ៍ទី ២១ ស្ថាប័នហិរញ្ញវត្ថុអន្តរជាតិធំៗ (ដូចជា World Bank, ADB, BlackRock) សម្រេចចិត្តវិនិយោគតែលើក្រុមហ៊ុនណាដែលមានស្តង់ដារ ESG (Environmental, Social, Governance) ខ្ពស់ប៉ុណ្ណោះ។ Director ត្រូវតែកសាងអាជីវកម្មដែលមិនត្រឹមតែចំណេញលុយទេ ប៉ុន្តែថែមទាំងការពារបរិស្ថាន និងលើកកម្ពស់ជីវភាពសហគមន៍។',
      workplaceStory: '«រោងចក្រកែច្នៃផ្លែឈើក្នុងស្រុកមួយចង់ស្នើសុំកម្ចី \$10,000,000 ពីធនាគារអន្តរជាតិដើម្បីពង្រីករោងចក្រ។ ធនាគារបានដាក់លក្ខខណ្ឌថា រោងចក្រត្រូវតែមានរបាយការណ៍ ESG ស្តង់ដារ។ \n'
          'លោកស្រី សុភាវី ជា Sustainability Director បានដឹកនាំការផ្លាស់ប្តូរ៖ \n'
          '• Environmental: ដំឡើងផ្ទាំងសូឡាលើដំបូលរោងចក្រដែលកាត់បន្ថយការប្រើប្រាស់អគ្គិសនីជាតិ ៤០% និងប្រព្រឹត្តិកម្មទឹកកខ្វក់មុនបង្ហូរចេញ។\n'
          '• Social: ចុះកិច្ចសន្យាទិញផ្លែស្វាយពីកសិករក្នុងតម្លៃសមរម្យ (Fair Trade) និងបង្កើតមណ្ឌលថែទាំកុមារសម្រាប់កម្មករ។\n'
          '• Governance: តម្លាភាពនៃរបាយការណ៍ហិរញ្ញវត្ថុ និងប្រព័ន្ធគ្រប់គ្រងសុវត្ថិភាពការងារ។ \n'
          'លទ្ធផល៖ ធនាគារបានអនុម័តកម្ចីបៃតង (Green Loan) ជាមួយអត្រាការប្រាក់ទាបជាងទីផ្សារ ៣% ដែលជួយសន្សំប្រាក់រាប់លានដុល្លារដល់ក្រុមហ៊ុន ហើយផលិតផលរបស់រោងចក្រត្រូវបានផ្សារទំនើបនៅអឺរ៉ុបបញ្ជាទិញផ្តាច់មុខ។»',
      practicalExample: '✅ របៀបបង្កើតយុទ្ធសាស្ត្រ ESG ផ្សារភ្ជាប់នឹងអាជីវកម្ម៖\n'
          '• Environmental៖ កាត់បន្ថយការប្រើប្រាស់ប្លាស្ទិក និងប្តូរមកប្រើប្រាស់ថាមពលពន្លឺព្រះអាទិត្យ (សន្សំថ្លៃភ្លើងផ្ទាល់)។\n'
          '• Social៖ វិនិយោគលើការបណ្តុះបណ្តាលសុខភាពបុគ្គលិក (កាត់បន្ថយអវត្តមាន និងបង្កើនទិន្នផល)។\n'
          '• Governance៖ តម្លាភាពក្នុងការបង់ពន្ធជូនរដ្ឋ និងការប្រឆាំងអំពើពុករលួយ (បង្កើនតម្លៃក្រុមហ៊ុន)។',
      practicalExercise: 'វាយតម្លៃស្ថាប័នរបស់អ្នកលើទិដ្ឋភាពទាំង ៣ នៃ ESG (E, S, G) ហើយកំណត់គំនិតផ្តួចផ្តើមបៃតងចំនួន ១ ដែលអាចជួយសន្សំថ្លៃដើម និងជួយសង្គមក្នុងពេលតែមួយ។',
      quizQuestions: [
        QuestionModel(
          id: 'q-director-10',
          promptKh: 'ហេតុអ្វីបានជាយុទ្ធសាស្ត្រ ESG ក្លាយជាកត្តាកំណត់ជោគវាសនារបស់ក្រុមហ៊ុនធំៗនាពេលបច្ចុប្បន្ន?',
          promptEn: 'Why has ESG strategy become a decisive factor for enterprise survival today?',
          optionsKh: [
            'A. ដោយសារតែវាជាម៉ូដទាន់សម័យដែលមិនបាច់អនុវត្តពិតប្រាកដ។',
            'B. ដោយសារស្ថាប័នហិរញ្ញវត្ថុអន្តរជាតិ និងអតិថិជនជំនាន់ថ្មីជ្រើសរើសវិនិយោគ និងទិញទំនិញតែពីក្រុមហ៊ុនណាដែលមានការទទួលខុសត្រូវខ្ពស់ចំពោះបរិស្ថាន សង្គម និងអភិបាលកិច្ច។',
            'C. ដើម្បីចំណាយលុយក្រុមហ៊ុនឱ្យអស់។',
          ],
          optionsEn: [
            'A. It is merely a fashionable PR label with no substance.',
            'B. Global investment funds and modern consumers increasingly direct capital and spending strictly to firms with verified environmental, social, and governance excellence.',
            'C. To exhaust surplus corporate cash.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ ESG មិនមែនជាការងារស្ម័គ្រចិត្តទេ ប៉ុន្តែជាលក្ខខណ្ឌតម្រូវក្នុងការទាក់ទាញទុនវិនិយោគសកល និងការកសាងអាជីវកម្មដែលមានចីរភាពយូរអង្វែង។',
          explanationEn: 'Explanation: Institutional capital increasingly mandates ESG compliance, making it critical for enterprise valuation and financing.',
        ),
      ],
      reflection: 'តើក្រុមហ៊ុនរបស់អ្នកកំពុងធ្វើអាជីវកម្មដោយគិតគូរពីផលប៉ះពាល់បរិស្ថាន និងសហគមន៍ជំនាន់ក្រោយកម្រិតណា?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ កំណត់គម្រោងកាត់បន្ថយការខ្ជះខ្ជាយថាមពល ឬក្រដាសនៅក្នុងការិយាល័យចាប់ពីសប្តាហ៍នេះតទៅ។',
    ),
  ];

  // =========================================================================
  // 9. EXECUTIVE (C-SUITE) EXTRA LESSONS (Lessons 3 to 10)
  // =========================================================================
  static final List<LessonModel> executiveLessons = [
    // Lesson 3: Huawei's Profit-Sharing & Phantom Equity Model (华为分钱机制: TUP)
    LessonModel(
      id: 'lesson-csuite-3',
      courseId: 'course-executive-csuite',
      moduleId: 'mod-1',
      titleKh: '៣. យុទ្ធសាស្ត្របែងចែកភាគលាភ និងភាគហ៊ុននិម្មិតរបស់ Huawei (Huawei Profit-Sharing & TUP Model)',
      titleEn: 'Huawei Incentive Architecture: Phantom Shares (TUP) & Profit-Sharing Mechanisms',
      type: LessonType.text,
      orderIndex: 3,
      learningObjectives: '• យល់ដឹងពីទស្សនវិជ្ជាបែងចែកផលប្រយោជន៍ដ៏ល្បីល្បាញរបស់ Huawei «មិនឱ្យមនុស្សល្អខាតបង់» (不让雷锋吃亏)។\n'
          '• រចនាប្រព័ន្ធភាគហ៊ុននិម្មិត (Time-based Unit Plan - TUP) ដើម្បីចងចិត្តថ្នាក់ដឹកនាំកំពូលដោយមិនបាច់បាត់បង់សិទ្ធិបោះឆ្នោត (Equity Dilution)។\n'
          '• បង្កើតយន្តការ «បែងចែកប្រាក់ចំណេញតាមស្នាដៃ» ដែលជំរុញឱ្យបុគ្គលិកខិតខំដូចជាសហគ្រិនផ្ទាល់។',
      shortExplanation: 'ស្ថាបនិកក្រុមហ៊ុន Huawei លោក Ren Zhengfei កាន់កាប់ភាគហ៊ុនក្រុមហ៊ុនត្រឹមតែប្រហែល ១% ប៉ុណ្ណោះ រីឯ ៩៩% ទៀតត្រូវបានបែងចែកទៅឱ្យបុគ្គលិកតាមរយៈប្រព័ន្ធភាគហ៊ុននិម្មិត (Employee Shareholding Scheme & TUP)។ លោកតែងតែបង្រៀនថា៖ «អាថ៌កំបាំងនៃការដឹកនាំមិនមែនជាការចេះនិយាយទ្រឹស្តីល្អៗនោះទេ ប៉ុន្តែជាសមត្ថភាព "ចេះបែងចែកលុយឱ្យយុត្តិធម៌" (分钱的艺术)»។ នៅពេលផលប្រយោជន៍ត្រូវបានបែងចែកយ៉ាងស័ក្តិសម បុគ្គលិកគ្រប់រូបនឹងប្រែក្លាយជាកងទ័ពចចក (Wolf Pack) ដ៏អង់អាចក្លាហាន។',
      workplaceStory: '«ក្នុងអំឡុងពេលក្រុមហ៊ុនបច្ចេកវិទ្យាហិរញ្ញវត្ថុមួយរីកចម្រើនខ្លាំង ថ្នាក់ដឹកនាំកំពូលៗ (VP & Directors) ចាប់ផ្តើមត្រូវក្រុមហ៊ុនគូប្រជែងទាក់ទាញដោយផ្តល់ប្រាក់ខែខ្ពស់ជាង ២ ដង។ CEO មានការព្រួយបារម្ភយ៉ាងខ្លាំងព្រោះខ្លាចបាត់បង់ក្បាលម៉ាស៊ីនស្នូល។ \n'
          'ដោយរៀនសូត្រពីក្បួន TUP របស់ Huawei គាត់បានរៀបចំប្រព័ន្ធ "Time-based Unit Plan (TUP)": គាត់បានបែងចែកកញ្ចប់ TUP រយៈពេល ៥ ឆ្នាំដល់ថ្នាក់ដឹកនាំកំពូលទាំង ១០ នាក់។ ពួកគេមិនបាច់ចំណាយលុយទិញហ៊ុនទេ ប៉ុន្តែពួកគេទទួលបានភាគលាភ (Cash Dividend) ជារៀងរាល់ឆ្នាំផ្អែកលើកំណើនប្រាក់ចំណេញសុទ្ធរបស់ក្រុមហ៊ុន ហើយនៅឆ្នាំទី ៥ ពួកគេទទួលបានប្រាក់កើនតម្លៃភាគហ៊ុន (Capital Gain) មួយដុំធំ។ \n'
          'លទ្ធផល៖ គ្មានថ្នាក់ដឹកនាំណាម្នាក់ចាកចេញឡើយ។ ពួកគេបានរួបរួមគ្នាធ្វើការទាំងយប់ទាំងថ្ងៃដូចជាម្ចាស់ក្រុមហ៊ុនផ្ទាល់ ហើយបានរុញច្រានចំណូលក្រុមហ៊ុនឱ្យកើនឡើង ៥ ដងក្នុងរយៈពេល ៤ ឆ្នាំ។ ថ្នាក់ដឹកនាំម្នាក់ៗទទួលបានប្រាក់រង្វាន់រាប់សែនដុល្លារដោយយុត្តិធម៌។»',
      practicalExample: '✅ របៀបរៀបចំប្រព័ន្ធភាគហ៊ុននិម្មិត TUP (Huawei 5-Year Cycle)៖\n'
          '• ឆ្នាំទី ១៖ ទទួលបានសិទ្ធិ TUP (មិនទាន់មានភាគលាភ)\n'
          '• ឆ្នាំទី ២៖ ទទួលបានភាគលាភ ១/៣ នៃប្រាក់ចំណេញ\n'
          '• ឆ្នាំទី ៣៖ ទទួលបានភាគលាភ ២/៣ នៃប្រាក់ចំណេញ\n'
          '• ឆ្នាំទី ៤៖ ទទួលបានភាគលាភពេញលេញ ១០០%\n'
          '• ឆ្នាំទី ៥៖ ទទួលបានភាគលាភ ១០០% + ប្រាក់កើនតម្លៃហ៊ុន (Capital Gain) រួចបញ្ចប់វដ្ត ហើយចាប់ផ្តើមវដ្តថ្មី។\n'
          '• អត្ថប្រយោជន៍៖ ម្ចាស់ក្រុមហ៊ុនមិនបាត់បង់សិទ្ធិអំណាចគ្រប់គ្រង (No Voting Rights) ប៉ុន្តែបុគ្គលិកមានអារម្មណ៍ដូចជាម្ចាស់ហ៊ុនពិតប្រាកដ។',
      practicalExercise: 'គណនាទំហំប្រាក់ចំណេញសុទ្ធបម្រុង (Surplus Pool) របស់ក្រុមហ៊ុនអ្នក ដែលអាចយកមកបង្កើតជាកញ្ចប់លើកទឹកចិត្ត TUP សម្រាប់ថ្នាក់ដឹកនាំគន្លឹះនៅឆ្នាំក្រោយ។',
      quizQuestions: [
        QuestionModel(
          id: 'q-csuite-3',
          promptKh: 'តើអ្វីជាអត្ថប្រយោជន៍ដ៏អស្ចារ្យបំផុតនៃប្រព័ន្ធភាគហ៊ុននិម្មិត (TUP / Phantom Shares) ធៀបនឹងការកាត់ភាគហ៊ុនពិតប្រាកដ (Direct Equity)?',
          promptEn: 'What is the greatest strategic advantage of Phantom Shares (TUP) over direct equity dilution?',
          optionsKh: [
            'A. មិនបាច់ផ្តល់លុយដល់បុគ្គលិក។',
            'B. ចងចិត្តបុគ្គលិកឆ្នើមរយៈពេលវែង និងចែករំលែកប្រាក់ចំណេញយ៉ាងច្រើន ដោយមិនធ្វើឱ្យស្ថាបនិកបាត់បង់សិទ្ធិសម្រេចចិត្ត ឬសិទ្ធិបោះឆ្នោតក្នុងក្រុមហ៊ុន (No Voting Dilution)។',
            'C. ដើម្បីគេចវេះពីការបង់ពន្ធរដ្ឋ។',
          ],
          optionsEn: [
            'A. Refusing to compensate staff.',
            'B. Anchoring elite executive talent and sharing windfall profits without diluting voting control or complicating the corporate capitalization table.',
            'C. Evading tax compliance.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ TUP ផ្តល់សិទ្ធិទទួលភាគលាភ និងប្រាក់ចំណេញ ប៉ុន្តែមិនផ្តល់សិទ្ធិបោះឆ្នោត (No Voting Rights) ជួយការពារការបែកបាក់អំណាចរបស់ស្ថាបនិក។',
          explanationEn: 'Explanation: Phantom shares align long-term economic incentives without fragmenting board control or equity cap tables.',
        ),
      ],
      reflection: 'តើប្រព័ន្ធលើកទឹកចិត្តបច្ចុប្បន្នរបស់ក្រុមហ៊ុនអ្នក បានធ្វើឱ្យថ្នាក់ដឹកនាំកំពូលមានអារម្មណ៍ថាខ្លួនឯងជា «ម្ចាស់ក្រុមហ៊ុន» ឬគ្រាន់តែជា «អ្នកស៊ីឈ្នួល»?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ពិភាក្សាជាមួយ CFO និងក្រុមប្រឹក្សាភិបាលអំពីលទ្ធភាពនៃការរចនាគម្រោងលើកទឹកចិត្តបែប Phantom Shares (TUP)។',
    ),

    // Lesson 4: Capital Allocation & Free Cash Flow Compounding
    LessonModel(
      id: 'lesson-csuite-4',
      courseId: 'course-executive-csuite',
      moduleId: 'mod-1',
      titleKh: '៤. សិល្បៈនៃការបង្វិលទុន និងលំហូរសាច់ប្រាក់សេរី (Warren Buffett: Capital Allocation)',
      titleEn: 'Capital Allocation Mastery: Compounding Free Cash Flow and ROIC',
      type: LessonType.text,
      orderIndex: 4,
      learningObjectives: '• យល់ដឹងពីកាតព្វកិច្ចលេខ ១ របស់ C-Suite (CEO/CFO)៖ ការបែងចែកទុន (Capital Allocation)។\n'
          '• ផ្តោតលើលំហូរសាច់ប្រាក់សេរីពិតប្រាកដ (Free Cash Flow) ជំនួសឱ្យប្រាក់ចំណេញគណនេយ្យលើក្រដាស (Accounting Profit)។\n'
          '• ជ្រើសរើសរវាងការបណ្តាក់ទុនពង្រីក (Capex), ការទិញអាជីវកម្ម (M&A), ឬការសងបំណុល ដោយផ្អែកលើ ROIC។',
      shortExplanation: 'មហាសេដ្ឋី Warren Buffett តែងតែលើកឡើងថា៖ CEO ភាគច្រើនឡើងកាន់តំណែងដោយសារពូកែខាងលក់ ឬវិស្វកម្ម ប៉ុន្តែនៅពេលក្លាយជា CEO ភារកិច្ចសំខាន់បំផុតគឺ «ការបែងចែកទុន» ដែលពួកគេមិនដែលបានរៀនសូត្រពីមុនមក។ ប្រសិនបើក្រុមហ៊ុនរកប្រាក់ចំណេញបាន \$1,000,000 តើអ្នកគួរយកលុយនោះទៅទិញម៉ាស៊ីនថ្មី បើកសាខាថ្មី ទិញក្រុមហ៊ុនគូប្រជែង ឬទុកក្នុងធនាគារ? ការសម្រេចចិត្តបង្វិលទុនត្រូវ ក្រុមហ៊ុននឹងក្លាយជាអាណាចក្រយក្ស រីឯការសម្រេចចិត្តខុស ទុនរាប់លាននឹងត្រូវរលាយ។',
      workplaceStory: '«ក្នុងអំឡុងពេលអាជីវកម្មលក់រាយកំពុងកាក់កប CFO ចាស់ចង់យកប្រាក់ចំណេញសល់ \$2,000,000 ទៅសាងសង់អគារការិយាល័យធំមួយកម្ពស់ ៧ ជាន់ដើម្បីបង្ហាញភាពហ៊ឺហារ។ \n'
          'ប៉ុន្តែ CEO ថ្មីដែលយល់ដឹងពីក្បួន Capital Allocation បានជំទាស់។ គាត់បានគណនាថា ការសាងសង់អគារផ្តល់ផលចំណេញត្រឹមតែ ៤% ក្នុងមួយឆ្នាំ (ទាបជាងការប្រាក់ធនាគារ)។ ផ្ទុយទៅវិញ គាត់បានយកលុយ \$2,000,000 នោះទៅវិនិយោគលើប្រព័ន្ធឃ្លាំងទំនិញស្វ័យប្រវត្តិ និងប្រព័ន្ធ E-Commerce ដែលផ្តល់ផលចំណេញលើដើមទុន (ROIC) រហូតដល់ ៣៥% ក្នុងមួយឆ្នាំ។ \n'
          'បីឆ្នាំក្រោយមក ប្រព័ន្ធ E-Commerce បានបង្កើតលំហូរសាច់ប្រាក់បន្ថែម \$1,500,000 ជារៀងរាល់ឆ្នាំ ដែលអនុញ្ញាតឱ្យក្រុមហ៊ុនទិញអគារធំជាងមុន ៣ ដងដោយមិនបាច់ខ្ចីបំណុលធនាគារសូម្បីតែមួយដុល្លារ។»',
      practicalExample: '✅ ជម្រើស ៥ នៃការបែងចែកទុនរបស់ C-Suite (Buffett Framework)៖\n'
          '១. [Reinvest in Organic Growth]៖ វិនិយោគពង្រីកអាជីវកម្មដើម ប្រសិនបើ ROIC > 15%។\n'
          '②. [Acquire Other Businesses (M&A)]៖ ទិញក្រុមហ៊ុនដទៃដែលមានតម្លៃថោកជាងតម្លៃពិត។\n'
          '៣. [Pay Down Debt]៖ សងបំណុលធនាគារដែលមានការប្រាក់ខ្ពស់ដើម្បីកាត់បន្ថយហានិភ័យ។\n'
          '៤. [Share Repurchases / Buybacks]៖ ទិញភាគហ៊ុនក្រុមហ៊ុនខ្លួនឯងត្រឡប់មកវិញ ប្រសិនបើតម្លៃហ៊ុនធ្លាក់ថោក។\n'
          '៥. [Pay Dividends]៖ ចែកភាគលាភជាសាច់ប្រាក់ដល់ម្ចាស់ភាគហ៊ុន ប្រសិនបើគ្មានឱកាសវិនិយោគណាដែលចំណេញ។',
      practicalExercise: 'គណនាអត្រាផលចំណេញលើដើមទុនវិនិយោគ (ROIC = Net Operating Profit / Invested Capital) នៃគម្រោងវិនិយោគធំៗចំនួន ២ របស់ក្រុមហ៊ុនអ្នក។',
      quizQuestions: [
        QuestionModel(
          id: 'q-csuite-4',
          promptKh: 'តើរវាងប្រាក់ចំណេញគណនេយ្យ (Accounting Net Profit) និងលំហូរសាច់ប្រាក់សេរី (Free Cash Flow) តើមួយណាជារង្វាស់នៃតម្លៃពិតប្រាកដរបស់ក្រុមហ៊ុន?',
          promptEn: 'Between Accounting Net Profit and Free Cash Flow, which metric reveals the true economic reality of a business?',
          optionsKh: [
            'A. ប្រាក់ចំណេញគណនេយ្យ ព្រោះវាជាលេខដែលបង្ហាញលើបណ្តាញព័ត៌មាន។',
            'B. លំហូរសាច់ប្រាក់សេរី (Free Cash Flow) ព្រោះវាជាសាច់ប្រាក់សុទ្ធដែលនៅសល់ជាក់ស្តែងដែលអាចយកទៅវិនិយោគ ឬចែកភាគលាភ ដោយមិនអាចក្លែងបន្លំតាមក្បួនគណនេយ្យបាន។',
            'C. តួលេខទាំងពីរមិនសំខាន់ទាំងអស់។',
          ],
          optionsEn: [
            'A. Accounting Net Profit because it headlines press releases.',
            'B. Free Cash Flow because it represents real spendable cash after all capex, immune to accounting gimmickry.',
            'C. Neither metric matters.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ "Cash is King"។ ប្រាក់ចំណេញគណនេយ្យអាចកែច្នៃបានតាមវិធីសាស្ត្ររំលស់ ប៉ុន្តែលំហូរសាច់ប្រាក់សេរី (FCF) គឺជាការពិតជាក់ស្តែងដែលចិញ្ចឹមស្ថាប័ន។',
          explanationEn: 'Explanation: Free cash flow represents unencumbered capital available for compounding; accounting net income can be manipulated.',
        ),
      ],
      reflection: 'តើការសម្រេចចិត្តវិនិយោគទុនរបស់ក្រុមហ៊ុនអ្នកកន្លងមក ត្រូវបានជំរុញដោយ «ផលចំណេញលើដើមទុន (ROIC)» ឬដោយសារ «ចំណង់ចង់បានភាពហ៊ឺហារ»?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ពិនិត្យរបាយការណ៍លំហូរសាច់ប្រាក់សេរី (Free Cash Flow Statement) ជាមួយ CFO សម្រាប់ត្រីមាសនេះ។',
    ),

    // Lesson 5: C-Suite Succession & Cadre Mobility (干部能上能下)
    LessonModel(
      id: 'lesson-csuite-5',
      courseId: 'course-executive-csuite',
      moduleId: 'mod-1',
      titleKh: '៥. យន្តការផ្លាស់ប្តូរតំណែងថ្នាក់ដឹកនាំ «ឡើងបាន ចុះបាន» (Cadre Mobility: 干部能上能下)',
      titleEn: 'Executive Cadre Mobility: The Philosophy of Graceful Demotion & Institutional Renewal',
      type: LessonType.text,
      orderIndex: 5,
      learningObjectives: '• យល់ដឹងពីទស្សនវិជ្ជាគ្រប់គ្រងមន្ត្រីជាន់ខ្ពស់របស់ Huawei «干部能上能下» (ថ្នាក់ដឹកនាំត្រូវតែអាចឡើងបាន និងអាចចុះបានដោយកិត្តិយស)។\n'
          '• លុបបំបាត់ «សិទ្ធិកាន់កាប់តំណែងអស់មួយជីវិត» (Tenure Entitlement) ដែលធ្វើឱ្យថ្នាក់លើខ្ជិលច្រអូស។\n'
          '• បង្កើតវប្បធម៌ដែលការចុះពីតំណែងមិនមែនជាការអាម៉ាស់ ប៉ុន្តែជាការផ្លាស់ប្តូរតួនាទីដើម្បីភាពរស់រវើកនៃស្ថាប័ន។',
      shortExplanation: 'បញ្ហាធំបំផុតរបស់ស្ថាប័នធំៗគឺ «ជំងឺចាស់វស្សា» (Bureaucratic Sclerosis)៖ ថ្នាក់ដឹកនាំជាន់ខ្ពស់ដែលធ្លាប់មានស្នាដៃកាលពី ១០ ឆ្នាំមុន បានក្លាយជាអ្នកអង្គុយកាន់កាប់តំណែងធំ រារាំងផ្លូវយុវជនជំនាន់ក្រោយ និងបាត់បង់ស្មារតីតស៊ូ។ នៅក្រុមហ៊ុន Huawei និង Alibaba គោលការណ៍ដែកគឺ «干部能上能下» (មន្ត្រីត្រូវតែអាចឡើងបាន និងចុះបាន)៖ ប្រសិនបើអ្នកមិនអាចដឹកនាំការច្នៃប្រឌិតថ្មីបានទេ អ្នកត្រូវតែចុះមកធ្វើជាទីប្រឹក្សា ឬធ្វើជាជំនួយការ ដើម្បីបើកផ្លូវឱ្យយុវជនមានសមត្ថភាពឡើងដឹកនាំ។',
      workplaceStory: '«នៅក្រុមហ៊ុនទូរគមនាគមន៍មួយ Vice President ផ្នែកបច្ចេកវិទ្យា គឺជាបុគ្គលិកជើងចាស់ដែលធ្លាប់កសាងប្រព័ន្ធ 2G/3G។ ប៉ុន្តែនៅពេលក្រុមហ៊ុនត្រូវប្តូរទៅប្រព័ន្ធ Cloud និង 5G គាត់មិនព្រមរៀនសូត្រទេ ហើយតែងតែជំទាស់នឹងបច្ចេកវិទ្យាថ្មី ធ្វើឱ្យគម្រោងរបស់ក្រុមហ៊ុនយឺតជាងគូប្រជែង ២ ឆ្នាំ។ \n'
          'CEO មិនបានបណ្តេញគាត់ចេញដោយអយុត្តិធម៌នោះទេ ប៉ុន្តែបានអនុវត្តក្បួន Cadre Mobility៖ គាត់បានតែងតាំងគាត់ជា "Honorary Senior Technical Advisor" ជាមួយប្រាក់បៀវត្សរ៍សមរម្យ និងបានតម្លើងវិស្វករវ័យក្មេងអាយុ ៣៥ ឆ្នាំម្នាក់ដែលពូកែខាង Cloud ឡើងជា Chief Technology Officer (CTO)។ \n'
          'ការផ្លាស់ប្តូរនេះបានធ្វើឡើងដោយកិត្តិយស ដោយគ្មានជម្លោះផ្ទៃក្នុង។ ត្រឹមតែ ៦ ខែ ក្រុមការងារថ្មីបានដាក់ឱ្យដំណើរការប្រព័ន្ធ 5G ទូទាំងប្រទេស និងបានទាក់ទាញអតិថិជនរាប់លាននាក់។ ក្រុមហ៊ុនបានរក្សាទាំងកិត្តិយសចាស់ទុំ និងថាមពលយុវជនក្នុងពេលតែមួយ។»',
      practicalExample: '✅ យន្តការអនុវត្តគោលការណ៍ «ឡើងបាន ចុះបាន» (Executive Mobility System)៖\n'
          '១. [Term Limits & Re-evaluation]៖ កំណត់អាណត្តិដឹកនាំ ៣-៥ ឆ្នាំ និងវាយតម្លៃសមត្ថភាពឡើងវិញជាប្រចាំ។\n'
          '②. [Honorable Exit / Advisory Roles]៖ បង្កើតតួនាទីជាទីប្រឹក្សាជាន់ខ្ពស់ (Senior Advisor / Fellow) សម្រាប់ថ្នាក់ដឹកនាំចាស់វស្សាដើម្បីកុំឱ្យបាត់បង់បទពិសោធន៍។\n'
          '៣. [Promote Hungry Young Talent]៖ បង្កើតកូតាបង្ខំឱ្យមានយុវជនក្រោមអាយុ ៣៥-៤០ ឆ្នាំក្នុងជួរ C-Suite យ៉ាងហោចណាស់ ៣០%។',
      practicalExercise: 'ពិនិត្យមើលជួរថ្នាក់ដឹកនាំ C-Suite និង Director ក្នុងក្រុមហ៊ុនអ្នក តើមានតំណែងណាខ្លះដែលកំពុងជាប់គាំងដោយសារមនុស្សចាស់វស្សាអស់ថាមពល?',
      quizQuestions: [
        QuestionModel(
          id: 'q-csuite-5',
          promptKh: 'តើគោលបំណងចម្បងនៃទស្សនវិជ្ជា Huawei «干部能上能下» (Executive Mobility) គឺជាអ្វី?',
          promptEn: 'What is the primary rationale behind the Huawei executive mobility doctrine (干部能上能下)?',
          optionsKh: [
            'A. ដើម្បីបណ្តេញមនុស្សចាស់ចោលដោយគ្មានកិត្តិយស។',
            'B. ដើម្បីលុបបំបាត់ការក្រអឺតក្រទមនៃតំណែងអចិន្ត្រៃយ៍ បញ្ចូលថាមពលយុវជនថ្មី និងរក្សាភាពស្វាហាប់រស់រវើកនៃស្ថាប័នជាបន្តបន្ទាប់។',
            'C. ដើម្បីកាត់បន្ថយប្រាក់ខែរបស់ថ្នាក់ដឹកនាំ។',
          ],
          optionsEn: [
            'A. To dishonorably purge older employees.',
            'B. To eradicate tenure entitlement, inject dynamic young talent, and sustain institutional vitality and aggressive innovation.',
            'C. To cut executive compensation.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ ស្ថាប័នដែលមិនហ៊ានផ្លាស់ប្តូរថ្នាក់ដឹកនាំចាស់ៗដែលអស់ថាមពល នឹងត្រូវស្លាប់ដោយសារភាពនៅទ្រឹង (Inertia)។ ការចរាចរតំណែងរក្សាភាពរស់រវើក។',
          explanationEn: 'Explanation: Cadre mobility dismantles bureaucratic ossification, ensuring meritocratic leadership renewal.',
        ),
      ],
      reflection: 'ប្រសិនបើថ្ងៃណាមួយមានយុវជនជំនាន់ក្រោយដែលមានសមត្ថភាព និងថាមពលខ្លាំងជាងអ្នក តើអ្នកមានចិត្តទូលាយគ្រប់គ្រាន់ក្នុងការចុះពីតំណែងដើម្បីបើកផ្លូវឱ្យគេដែរឬទេ?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ រៀបចំគោលការណ៍វាយតម្លៃអាណត្តិដឹកនាំ (Executive Tenure Review Policy) សម្រាប់ដាក់ជូន Board ពិចារណា។',
    ),

    // Lesson 6: Managing Investor Relations & Valuation Multiples (PE, EBITDA)
    LessonModel(
      id: 'lesson-csuite-6',
      courseId: 'course-executive-csuite',
      moduleId: 'mod-1',
      titleKh: '៦. ទំនាក់ទំនងអ្នកវិនិយោគ និងការបង្កើនមេគុណតម្លៃក្រុមហ៊ុន (Investor Relations & Valuation Multiples)',
      titleEn: 'Investor Relations & Enterprise Valuation: Mastering Multiples (P/E, EV/EBITDA)',
      type: LessonType.text,
      orderIndex: 6,
      learningObjectives: '• យល់ដឹងពីរបៀបដែលទីផ្សារទុនវាយតម្លៃក្រុមហ៊ុន (EV/EBITDA, P/E Ratio, DCF Valuation)។\n'
          '• បង្កើតរឿងរ៉ាវយុទ្ធសាស្ត្រ (Equity Story) ដ៏ទាក់ទាញសម្រាប់ទាក់ទាញមូលនិធិវិនិយោគ Private Equity (PE) និង Venture Capital (VC)។\n'
          '• គ្រប់គ្រងទំនាក់ទំនងជាមួយអ្នកវិនិយោគ (Investor Relations - IR) ប្រកបដោយភាពស្មោះត្រង់ និងវិជ្ជាជីវៈខ្ពស់។',
      shortExplanation: 'ក្រុមហ៊ុនពីរដែលមានប្រាក់ចំណេញ \$1,000,000 ដូចគ្នា ប៉ុន្តែក្រុមហ៊ុនមួយអាចមានតម្លៃទីផ្សារ \$5,000,000 (មេគុណ 5x) រីឯក្រុមហ៊ុនមួយទៀតមានតម្លៃ \$30,000,000 (មេគុណ 30x)។ ភាពខុសគ្នានេះអាស្រ័យលើ «គុណភាពនៃប្រាក់ចំណូល» (Revenue Quality) ដូចជា ការមានអតិថិជនបង់ប្រាក់ប្រចាំខែ (Recurring Revenue), សមត្ថភាពការពារទីផ្សារ (Moat), និង «ជំនឿទុកចិត្តរបស់អ្នកវិនិយោគ»។ C-Suite ឆ្នើមត្រូវតែយល់ដឹងពីរបៀបជំរុញមេគុណតម្លៃក្រុមហ៊ុន (Multiple Expansion)។',
      workplaceStory: '«ក្រុមហ៊ុនចែកចាយសម្ភារសំណង់មួយរកប្រាក់ចំណេញ EBITDA បាន \$3,000,000 ក្នុងមួយឆ្នាំ ប៉ុន្តែអ្នកវិនិយោគផ្តល់តម្លៃឱ្យត្រឹមតែ 4x EBITDA (ស្មើនឹង \$12,000,000) ព្រោះជាអាជីវកម្មទិញមកលក់ទៅបែបប្រពៃណី។ \n'
          'CEO និង CFO ថ្មីបានរួមគ្នាផ្លាស់ប្តូរគំរូអាជីវកម្ម៖ ពួកគេបានបង្កើតប្រព័ន្ធ B2B Digital Platform ដែលផ្គត់ផ្គង់សម្ភារសំណង់តាមកិច្ចសន្យាប្រចាំឆ្នាំ (Contracted Recurring Supply) និងមានទិន្នន័យបញ្ជាទិញស្វ័យប្រវត្តិ។ ពួកគេបានបង្ហាញរបាយការណ៍ Investor Deck ថ្មីទៅកាន់មូលនិធិវិនិយោគសិង្ហបុរី ដោយបង្ហាញថា ៨០% នៃចំណូលគឺជា Recurring Revenue ដែលអាចទស្សន៍ទាយទុកជាមុនបាន។ \n'
          'អ្នកវិនិយោគបានកែប្រែមេគុណតម្លៃក្រុមហ៊ុនឡើងដល់ 12x EBITDA! តម្លៃក្រុមហ៊ុនបានកើនឡើងពី \$12,000,000 ឡើងដល់ \$36,000,000 ក្នុងរយៈពេលតែ ២ ឆ្នាំ ដោយម្ចាស់ភាគហ៊ុនដើមទទួលបានផលចំណេញមហាសាល។»',
      practicalExample: '✅ កត្តា ៤ យ៉ាងដែលជួយបង្កើនមេគុណតម្លៃក្រុមហ៊ុន (Multiple Drivers)៖\n'
          '១. [Recurring Revenue]៖ ចំណូលកិច្ចសន្យាជាប់លាប់ (Subscription/Retainer) មានតម្លៃខ្ពស់ជាងចំណូលលក់ដាច់មួយដងៗ ៣ ដង។\n'
          '②. [High Gross Margins]៖ អាជីវកម្មដែលមាន Margin លើស ៤០% ទាក់ទាញមេគុណខ្ពស់ជាង។\n'
          '៣. [Low Customer Churn]៖ អត្រាអតិថិជនឈប់ប្រើប្រាស់ទាបជាង ៥% ក្នុងមួយឆ្នាំ។\n'
          '៤. [Predictable Growth Runway]៖ ផែនការលូតលាស់ច្បាស់លាស់ក្នុងទីផ្សារដែលមានទំហំធំ (Large TAM)។',
      practicalExercise: 'វិភាគគំរូចំណូលបច្ចុប្បន្នរបស់ក្រុមហ៊ុនអ្នក តើមានប៉ុន្មានភាគរយជា Recurring Revenue ហើយតើអ្នកអាចបង្កើនវាដោយរបៀបណា?',
      quizQuestions: [
        QuestionModel(
          id: 'q-csuite-6',
          promptKh: 'ហេតុអ្វីបានជាក្រុមហ៊ុនដែលមានចំណូលបែប Recurring Revenue (ចំណូលទៀងទាត់ប្រចាំខែ/ឆ្នាំ) ទទួលបានតម្លៃក្រុមហ៊ុន (Valuation Multiple) ខ្ពស់ជាងក្រុមហ៊ុនលក់ដាច់មួយដងៗ?',
          promptEn: 'Why do companies with recurring revenue command significantly higher valuation multiples than transactional firms?',
          optionsKh: [
            'A. ព្រោះអតិថិជនមិនសូវត្អូញត្អែរ។',
            'B. ព្រោះលំហូរសាច់ប្រាក់នាពេលអនាគតមានស្ថេរភាពខ្ពស់ អាចទស្សន៍ទាយបានច្បាស់លាស់ និងមានហានិភ័យទាបចំពោះអ្នកវិនិយោគ។',
            'C. ព្រោះមិនបាច់ចំណាយថ្លៃផ្សាយពាណិជ្ជកម្ម។',
          ],
          optionsEn: [
            'A. Because recurring customers complain less.',
            'B. Because predictable forward cash flows drastically reduce investment risk, warranting a premium valuation multiple.',
            'C. Because advertising expenses drop to zero.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ ភាពអាចទស្សន៍ទាយបាននៃសាច់ប្រាក់ (Cash Flow Predictability) កាត់បន្ថយហានិភ័យរបស់អ្នកវិនិយោគ ដែលធ្វើឱ្យពួកគេស្ម័គ្រចិត្តបង់ថ្លៃខ្ពស់ជាង។',
          explanationEn: 'Explanation: High visibility and predictability of future cash flows compress discount rates, boosting valuation multiples.',
        ),
      ],
      reflection: 'តើក្រុមហ៊ុនរបស់អ្នកកំពុងរស់នៅដោយពឹងផ្អែកលើ «ការលក់រត់រកភ្ញៀវថ្មីរាល់ខែ» ឬមាន «ប្រព័ន្ធចំណូលស្វ័យប្រវត្តិតាមកិច្ចសន្យា»?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ រៀបចំកិច្ចប្រជុំជាមួយ Chief Commercial Officer (CCO) ដើម្បីពិភាក្សាអំពីការបំប្លែងផលិតផលមួយឱ្យទៅជាទម្រង់ Subscription/Retainer។',
    ),

    // Lesson 7: Ecosystem Building & Platform Strategy (Tencent & Alibaba Model)
    LessonModel(
      id: 'lesson-csuite-7',
      courseId: 'course-executive-csuite',
      moduleId: 'mod-1',
      titleKh: '៧. យុទ្ធសាស្ត្រកសាងប្រព័ន្ធអេកូឡូស៊ី និងបណ្តាញសម្ព័ន្ធភាព (Ecosystem & Platform Strategy)',
      titleEn: 'Platform & Ecosystem Strategy: Transforming Standalone Firms into Symbiotic Networks',
      type: LessonType.text,
      orderIndex: 7,
      learningObjectives: '• យល់ដឹងពីភាពខុសគ្នារវាងគំរូអាជីវកម្មខ្សែបន្ទាត់ (Linear Pipeline Business) និងគំរូបណ្តាញអេកូឡូស៊ី (Platform Ecosystem)។\n'
          '• អនុវត្តទស្សនវិជ្ជារបស់ Tencent «បើកចំហខ្នងបង្អែក ភ្ជាប់អ្វីៗទាំងអស់» (Connect Everything)។\n'
          '• បង្កើតឥទ្ធិពលបណ្តាញ (Network Effects) ដែលធ្វើឱ្យក្រុមហ៊ុនកាន់តែរីកធំ កាន់តែពិបាកសម្រាប់គូប្រជែងផ្តួលរំលំ។',
      shortExplanation: 'នៅក្នុងយុគសម័យទំនើប ក្រុមហ៊ុនទោល (Standalone Products) នឹងត្រូវចាញ់ក្រុមហ៊ុនដែលមាន «ប្រព័ន្ធអេកូឡូស៊ី» (Ecosystems)។ នៅប្រទេសចិន Tencent និង Alibaba មិនមែនគ្រាន់តែជាក្រុមហ៊ុនលក់ទំនិញ ឬផ្ញើសារនោះទេ ប៉ុន្តែជាប្រព័ន្ធអេកូឡូស៊ីដ៏ធំដែលភ្ជាប់ទាំងការទូទាត់ប្រាក់ (WeChat Pay / Alipay) ភស្តុភារកម្ម (Cainiao) កម្សាន្ត និងពពកទិន្នន័យ (Cloud)។ C-Suite ត្រូវចេះគិតលើសពីព្រំដែនផលិតផលរបស់ខ្លួន — បង្កើតសម្ព័ន្ធភាពជាមួយដៃគូខាងក្រៅ ដើម្បីឱ្យគ្រប់គ្នារស់នៅក្នុងប្រព័ន្ធរបស់អ្នក។',
      workplaceStory: '«ធនាគារពាណិជ្ជក្នុងស្រុកមួយតែងតែប្រកួតប្រជែងដណ្តើមអតិថិជនដាក់ប្រាក់សន្សំដោយផ្តល់អត្រាការប្រាក់ខ្ពស់ ដែលធ្វើឱ្យប្រាក់ចំណេញរួមធ្លាក់ចុះ។ \n'
          'CEO ថ្មីបានប្តូរយុទ្ធសាស្ត្រមកជា Platform Ecosystem៖ ជំនួសឱ្យការធ្វើការងារតែម្នាក់ឯង គាត់បានបើកប្រព័ន្ធ Open Banking API ភ្ជាប់ជាមួយសាលារៀន មន្ទីរពេទ្យ ក្រុមហ៊ុនអគ្គិសនី និង App កក់សំបុត្រកុន។ អតិថិជនអាចទូទាត់ប្រាក់គ្រប់យ៉ាងនៅក្នុង App តែមួយគត់។ \n'
          'ក្នុងរយៈពេល ២ ឆ្នាំ ធនាគារបានក្លាយជាបេះដូងនៃជីវិតប្រចាំថ្ងៃរបស់ប្រជាជនជាង ២,០០០,០០០ នាក់។ ចំនួនប្រាក់បញ្ញើគ្មានការប្រាក់ (CASA) បានកើនឡើង ៤០០% ដែលជួយឱ្យធនាគារមានថ្លៃដើមទុនទាបបំផុតក្នុងវិស័យ និងមានប្រៀបឈ្នះដាច់លើគូប្រជែង។»',
      practicalExample: '✅ ជំហាន ៣ នៃការកសាងប្រព័ន្ធអេកូឡូស៊ី (Ecosystem Blueprint)៖\n'
          '១. [Core Anchor]៖ កសាងផលិតផលស្នូលមួយឱ្យខ្លាំងបំផុតដែលមនុស្សប្រើរាល់ថ្ងៃ (Daily High-Frequency Use Case)។\n'
          '②. [Open API & Partnerships]៖ អញ្ជើញដៃគូអាជីវកម្មដទៃទៀតឱ្យចូលមកភ្ជាប់សេវាកម្មរបស់ពួកគេក្នុងប្រព័ន្ធរបស់អ្នក។\n'
          '៣. [Data & Value Sharing]៖ បង្កើតតម្លៃរួមគ្នា (Shared Value) ដោយមិនលេបត្របាក់ដៃគូ ប៉ុន្តែឱ្យដៃគូរីកចម្រើនជាមួយអ្នក។',
      practicalExercise: 'គូរដ្យាក្រាមប្រព័ន្ធអេកូឡូស៊ីជុំវិញអាជីវកម្មរបស់អ្នក៖ តើមានដៃគូខាងក្រៅណាខ្លះ (សាលារៀន មន្ទីរពេទ្យ ភស្តុភារ) ដែលអ្នកអាចភ្ជាប់សម្ព័ន្ធភាពជាមួយបាន?',
      quizQuestions: [
        QuestionModel(
          id: 'q-csuite-7',
          promptKh: 'តើអ្វីជាអត្ថប្រយោជន៍ដ៏ខ្លាំងក្លាបំផុតនៃឥទ្ធិពលបណ្តាញ (Network Effects) នៅក្នុងប្រព័ន្ធអេកូឡូស៊ី?',
          promptEn: 'What constitutes the most formidable competitive advantage of Network Effects in an ecosystem?',
          optionsKh: [
            'A. ចំណាយថ្លៃអគ្គិសនីតិចជាង។',
            'B. រាល់ពេលដែលមានអ្នកប្រើប្រាស់ ឬដៃគូថ្មីម្នាក់ចូលរួមក្នុងប្រព័ន្ធ តម្លៃនៃប្រព័ន្ធទាំងមូលនឹងកើនឡើងសម្រាប់មនុស្សគ្រប់គ្នា ដែលធ្វើឱ្យគូប្រជែងមិនអាចចម្លងតាមបាន (Self-reinforcing moat)។',
            'C. មិនបាច់ជួលបុគ្គលិកផ្នែកលក់។',
          ],
          optionsEn: [
            'A. Lower utility consumption.',
            'B. Every additional user or partner geometrically increases the systemic utility for all participants, engineering an impenetrable, self-reinforcing moat.',
            'C. Eliminating the sales department entirely.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ Network Effects បង្កើតរនាំងការពារដ៏រឹងមាំបំផុត។ នៅពេលមនុស្សគ្រប់គ្នានៅក្នុងប្រព័ន្ធរបស់អ្នក គ្មានអ្នកណាចង់ចាកចេញទៅប្រើប្រព័ន្ធថ្មីឡើយ។',
          explanationEn: 'Explanation: Two-sided network effects create compounding enterprise utility, generating near-monopolistic defensibility.',
        ),
      ],
      reflection: 'តើអាជីវកម្មរបស់អ្នកកំពុងប្រយុទ្ធតែម្នាក់ឯងជាផលិតផលទោល ឬកំពុងកសាងបណ្តាញសម្ព័ន្ធភាពដែលមិនអាចបំបែកបាន?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ កំណត់ដៃគូយុទ្ធសាស្ត្រធំមួយ (Strategic Partner) ហើយផ្តួចផ្តើមការពិភាក្សាអំពីការភ្ជាប់សេវាកម្ម API រួមគ្នា។',
    ),

    // Lesson 8: Macro-Economic Forecasting & Currency/Inflation Hedging
    LessonModel(
      id: 'lesson-csuite-8',
      courseId: 'course-executive-csuite',
      moduleId: 'mod-1',
      titleKh: '៨. ការទស្សន៍ទាយសេដ្ឋកិច្ចម៉ាក្រូ និងការការពារហានិភ័យអតិផរណា (Macroeconomics & FX Hedging)',
      titleEn: 'Macro-Economic Strategy: Currency Hedging, Inflation Defense & ASEAN Geo-Economics',
      type: LessonType.text,
      orderIndex: 8,
      learningObjectives: '• យល់ដឹងពីផលប៉ះពាល់នៃអត្រាការប្រាក់សកល (US Fed Rates) និងគោលនយោបាយរូបិយវត្ថុកម្ពុជា (KHR/USD) លើអាជីវកម្ម។\n'
          '• អនុវត្តយុទ្ធសាស្ត្រការពារហានិភ័យប្តូរប្រាក់ (FX Hedging & Forward Contracts) សម្រាប់អាជីវកម្មនាំចេញ-នាំចូល។\n'
          '• រៀបចំរចនាសម្ព័ន្ធទ្រព្យសម្បត្តិដើម្បីទប់ទល់នឹងរលកអតិផរណា និងការប្រែប្រួលភូមិសាស្ត្រនយោបាយ។',
      shortExplanation: 'ថ្នាក់ដឹកនាំ C-Suite មិនអាចមើលត្រឹមតែប្រតិបត្តិការផ្ទៃក្នុងក្រុមហ៊ុននោះទេ ប៉ុន្តែត្រូវយល់ដឹងពី «ចរន្តទឹកសេដ្ឋកិច្ចម៉ាក្រូសកល» (Macroeconomic Currents)។ ការផ្លាស់ប្តូរអត្រាការប្រាក់របស់ធនាគារកណ្តាលសហរដ្ឋអាមេរិក ឬការប្រែប្រួលតម្លៃប្រេងសកល អាចកម្ទេចប្រាក់ចំណេញរបស់ក្រុមហ៊ុនក្នុងរយៈពេលតែមួយយប់ ប្រសិនបើគ្មានយុទ្ធសាស្ត្រការពារហានិភ័យ (Hedging) ច្បាស់លាស់។ C-Suite ត្រូវចេះអានសញ្ញាសេដ្ឋកិច្ច និងរៀបចំកប៉ាល់ក្រុមហ៊ុនឱ្យរួចរាល់មុនពេលព្យុះសេដ្ឋកិច្ចបោកបក់មកដល់។',
      workplaceStory: '«ក្រុមហ៊ុននាំចូលគ្រឿងចក្រកសិកម្មមួយបានបញ្ជាទិញគ្រឿងចក្រពីប្រទេសជប៉ុនជាប្រាក់យេន (JPY) ប៉ុន្តែលក់ឱ្យកសិករនៅកម្ពុជាជាប្រាក់ដុល្លារ (USD) និងរៀល (KHR) តាមការបង់រំលស់រយៈពេល ៣ ឆ្នាំ។ \n'
          'CFO ដែលមានចក្ខុវិស័យម៉ាក្រូសេដ្ឋកិច្ចបានកត់សម្គាល់ឃើញថារូបិយប័ណ្ណអន្តរជាតិកំពុងជួបការប្រែប្រួលខ្លាំង។ គាត់បានសម្រេចចិត្តប្រើប្រាស់កិច្ចសន្យាការពារហានិភ័យរូបិយប័ណ្ណ (FX Forward Contract) ជាមួយធនាគារ ដើម្បីចាក់សោអត្រាប្តូរប្រាក់ JPY/USD ថេរសម្រាប់រយៈពេល ២ ឆ្នាំ។ \n'
          'មួយឆ្នាំក្រោយមក នៅពេលតម្លៃប្រាក់យេនឡើងថ្លៃ ២៥% ភ្លាមៗ គូប្រជែងដែលមិនបាន Hedging ត្រូវខាតបង់រាប់លានដុល្លារ និងត្រូវបង្ខំចិត្តដំឡើងថ្លៃរហូតដល់លក់មិនដាច់។ រីឯក្រុមហ៊ុនរបស់គាត់នៅតែរក្សាថ្លៃដើមថេរដដែល និងបានឆ្លៀតឱកាសនេះដណ្តើមចំណែកទីផ្សារ ៤០% ទូទាំងប្រទេស។»',
      practicalExample: '✅ វិធាន ៣ យ៉ាងក្នុងការការពារហានិភ័យសេដ្ឋកិច្ចម៉ាក្រូ៖\n'
          '១. [Match Currency Revenue & Debt]៖ ប្រសិនបើចំណូលរបស់អ្នកជារៀល ចូរខ្ចីបំណុលជារៀល កុំខ្ចីបំណុលជាដុល្លារ ឬយេនដែលប្រឈមនឹងហានិភ័យប្តូរប្រាក់។\n'
          '②. [Natural Hedging]៖ ទិញវត្ថុធាតុដើម និងលក់ចេញក្នុងរូបិយប័ណ្ណតែមួយតាមដែលអាចធ្វើទៅបាន។\n'
          '៣. [Dynamic Pricing Contracts]៖ បញ្ចូលខចែងកែសម្រួលតម្លៃតាមអតិផរណា (Inflation Adjustment Clause) ក្នុងកិច្ចសន្យាផ្គត់ផ្គង់រយៈពេលវែង។',
      practicalExercise: 'វិភាគរចនាសម្ព័ន្ធរូបិយប័ណ្ណនៃចំណូល និងចំណាយរបស់ក្រុមហ៊ុនអ្នក តើក្រុមហ៊ុនមានហានិភ័យប្តូរប្រាក់ (FX Exposure) ត្រង់ចំណុចណាខ្លះ?',
      quizQuestions: [
        QuestionModel(
          id: 'q-csuite-8',
          promptKh: 'តើអ្វីជាហានិភ័យដ៏ធំបំផុតសម្រាប់ក្រុមហ៊ុនដែលរកចំណូលជារូបិយប័ណ្ណក្នុងស្រុក ប៉ុន្តែខ្ចីបំណុលធនាគារជារូបិយប័ណ្ណបរទេសដោយមិនបាន Hedging?',
          promptEn: 'What is the greatest risk for a firm earning local currency while holding unhedged foreign-denominated debt?',
          optionsKh: [
            'A. អតិថិជននឹងឈប់ទិញទំនិញ។',
            'B. នៅពេលរូបិយប័ណ្ណក្នុងស្រុកធ្លាក់ថ្លៃ ទំហំបំណុលដែលត្រូវសងនឹងកើនឡើងយ៉ាងសម្បើមភ្លាមៗ ដែលអាចរុញច្រានក្រុមហ៊ុនឱ្យក្ស័យធន (Currency Mismatch Crisis)។',
            'C. ធនាគារនឹងទារបំណុលមុនកាលកំណត់។',
          ],
          optionsEn: [
            'A. Customers will immediately stop buying goods.',
            'B. Local currency depreciation drastically inflates foreign debt servicing burdens in local terms, frequently causing insolvencies.',
            'C. Banks will accelerate early repayment.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ វិបត្តិរូបិយប័ណ្ណមិនស៊ីគ្នា (Currency Mismatch) គឺជាមូលហេតុចម្បងដែលក្រុមហ៊ុនជាច្រើននៅអាស៊ីក្ស័យធនក្នុងអំឡុងពេលវិបត្តិសេដ្ឋកិច្ច។',
          explanationEn: 'Explanation: Unhedged currency mismatches rapidly trigger debt distress during currency devaluation shocks.',
        ),
      ],
      reflection: 'តើកិច្ចសន្យាអាជីវកម្មរយៈពេលវែងរបស់អ្នក បានត្រៀមការពារខ្លួនពីការកើនឡើងនៃអតិផរណា និងការប្រែប្រួលអត្រាការប្រាក់ហើយឬនៅ?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ពិនិត្យបញ្ជីបំណុល និងរូបិយប័ណ្ណទូទាត់ទាំងអស់របស់ក្រុមហ៊ុនជាមួយ CFO ដើម្បីកំណត់ FX Exposure។',
    ),

    // Lesson 9: Executive Presence & High-Stakes Diplomacy
    LessonModel(
      id: 'lesson-csuite-9',
      courseId: 'course-executive-csuite',
      moduleId: 'mod-1',
      titleKh: '៩. ឥទ្ធិពលបុគ្គលិកលក្ខណៈថ្នាក់ដឹកនាំកំពូល និងការទូតធុរកិច្ច (Executive Presence & High-Stakes Diplomacy)',
      titleEn: 'Executive Presence: Gravitas, Strategic Communication & High-Stakes Diplomacy',
      type: LessonType.text,
      orderIndex: 9,
      learningObjectives: '• យល់ដឹងពីសសរស្តម្ភទាំង ៣ នៃ Executive Presence៖ ភាពថ្លៃថ្នូរ (Gravitas), ទំនាក់ទំនង (Communication), និងរូបរាងវិជ្ជាជីវៈ (Appearance)។\n'
          '• ដឹកនាំការចរចាដែលមានសម្ពាធ និងទំហំទឹកប្រាក់រាប់លានដុល្លារ (High-Stakes Negotiation) ដោយភាពស្ងប់ស្ងាត់ដាច់ខាត។\n'
          '• កសាងទំនាក់ទំនងការទូតជាមួយថ្នាក់ដឹកនាំរដ្ឋាភិបាល ស្ថានទូត និងដៃគូអន្តរជាតិ។',
      shortExplanation: 'នៅកម្រិត C-Suite មនុស្សមិនគ្រាន់តែវាយតម្លៃអ្នកលើចំណេះដឹងបច្ចេកទេសនោះទេ ប៉ុន្តែពួកគេសម្រេចចិត្តវិនិយោគ ឬសហការដោយផ្អែកលើ «Executive Presence» — ភាពថ្លៃថ្នូរ ភាពស្ងប់ស្ងាត់ក្នុងគ្រាអាសន្ន និងសមត្ថភាពបញ្ចុះបញ្ចូលដោយគ្មានការស្រែកគំហក។ មេដឹកនាំដែលមាន Gravitas ខ្ពស់ គ្រាន់តែដើរចូលបន្ទប់ប្រជុំ ក៏អាចធ្វើឱ្យបរិយាកាសស្ងប់ស្ងាត់ និងបង្កើតការគោរពដោយស្វ័យប្រវត្តិ។',
      workplaceStory: '«ក្នុងអំឡុងពេលចរចាកិច្ចសន្យារួមទុន \$50,000,000 ជាមួយក្រុមហ៊ុនវិនិយោគបរទេស ភាគីម្ខាងទៀតបានព្យាយាមប្រើវិធីសាស្ត្រគាបសង្កត់ផ្លូវចិត្តយ៉ាងខ្លាំង៖ ពួកគេបានស្រែកតវ៉ា ទម្លាក់ឯកសារលើតុ និងគំរាមដើរចេញពីបន្ទប់ប្រជុំ។ \n'
          'លោកបណ្ឌិត ហេង វណ្ណា (CEO) មិនបានខឹង មិនបានតបតដោយកំហឹង ហើយក៏មិនបានភ័យស្លន់ស្លោឡើយ។ គាត់បានអង្គុយត្រង់ខ្លួន សម្លឹងមើលភ្នែកដៃគូចរចាដោយស្នាមញញឹមដ៏ស្ងប់ស្ងាត់ ហើយបានរង់ចាំឱ្យពួកគេស្រែកចប់។ បន្ទាប់មក គាត់បាននិយាយដោយសំឡេងទាប មួយៗ និងច្បាស់ៗថា៖ "យើងយល់ពីក្តីបារម្ភរបស់លោក។ ប៉ុន្តែភាពជាដៃគូរយៈពេលវែងមិនអាចកសាងឡើងលើការគំរាមកំហែងបានឡើយ។ ប្រសិនបើលោកត្រៀមខ្លួនជជែកលើតួលេខជាក់ស្តែង យើងនឹងបន្ត។ ប្រសិនបើមិនទាន់ទេ យើងអាចសម្រាកពិសាកាហ្វេសិន"។ \n'
          'ភាពស្ងប់ស្ងាត់ និងម៉ឺងម៉ាត់កម្រិតកំពូលនេះបានធ្វើឱ្យភាគីម្ខាងទៀតមានការកោតញញើតជាខ្លាំង។ ពួកគេបានសុំទោស និងត្រឡប់មកចរចាដោយសន្តិវិធីវិញ ហើយកិច្ចសន្យាត្រូវបានចុះហត្ថលេខាដោយផ្តល់លក្ខខណ្ឌអំណោយផលបំផុតដល់ក្រុមហ៊ុនរបស់គាត់។»',
      practicalExample: '✅ សសរស្តម្ភ ៣ នៃ Executive Gravitas៖\n'
          '១. [Grace Under Fire]៖ កាន់តែមានសម្ពាធខ្លាំង កាន់តែត្រូវនិយាយយឺត និងរក្សាដង្ហើមវែងៗ។ កុំបង្ហាញការខឹង ឬភ័យស្លន់ស្លោជាដាច់ខាត។\n'
          '②. [The Power of the Pause]៖ មុននឹងឆ្លើយសំណួរពិបាក ចូរផ្អាកស្ងៀម ៣ វិនាទីសិន។ ភាពស្ងៀមស្ងាត់បង្ហាញពីអំណាច និងការគ្រប់គ្រងស្ថានការណ៍។\n'
          '៣. [Crisp Brevity]៖ និយាយខ្លី ចំចំណុច កុំប្រើពាក្យស្ទាក់ស្ទើរ (Um, Ah, Like)។',
      practicalExercise: 'អនុវត្តការហ្វឹកហាត់កាយវិការ និងការផ្អាក ៣ វិនាទី (The 3-Second Pause) មុននឹងឆ្លើយសំណួរក្នុងកិច្ចប្រជុំបន្ទាប់របស់អ្នក។',
      quizQuestions: [
        QuestionModel(
          id: 'q-csuite-9',
          promptKh: 'នៅក្នុងកិច្ចចរចាដែលមានសម្ពាធខ្ពស់ (High-Stakes Negotiation) តើប្រតិកម្មណាដែលបង្ហាញពី Executive Gravitas ពិតប្រាកដ?',
          promptEn: 'In high-stakes negotiation environments, what reaction demonstrates authentic executive gravitas?',
          optionsKh: [
            'A. ស្រែកតវ៉ា និងជេរតបតវិញដើម្បីកុំឱ្យគេមើលងាយ។',
            'B. រក្សាភាពស្ងប់ស្ងាត់ដាច់ខាត និយាយដោយសំឡេងទាបម៉ឺងម៉ាត់ និងមិនបណ្តោយឱ្យអារម្មណ៍គ្រប់គ្រងការសម្រេចចិត្ត (Grace under pressure)។',
            'C. យល់ព្រមតាមការទាមទាររបស់គេគ្រប់យ៉ាងដើម្បីកុំឱ្យមានជម្លោះ។',
          ],
          optionsEn: [
            'A. Shouting angrily to demonstrate dominance.',
            'B. Maintaining absolute composure, speaking with calm precision, and refusing to allow emotional outbursts to dictate strategic outcomes.',
            'C. Conceding to all demands to avoid confrontation.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ ភាពស្ងប់ស្ងាត់ក្នុងគ្រាអាសន្ន (Grace under fire) គឺជាសញ្ញាសម្គាល់នៃអំណាចពិតប្រាកដ។ អ្នកណាគ្រប់គ្រងអារម្មណ៍បាន អ្នកនោះគ្រប់គ្រងតុចរចា។',
          explanationEn: 'Explanation: Gravitas is marked by unshakeable composure under fire, neutralizing hostility with calm precision.',
        ),
      ],
      reflection: 'តើអ្នកធ្លាប់បាត់បង់ការគ្រប់គ្រងអារម្មណ៍ក្នុងកិច្ចប្រជុំសំខាន់ដែរឬទេ? តើអ្នកអាចហ្វឹកហាត់ចិត្តឱ្យស្ងប់ស្ងាត់ជាងមុនដោយរបៀបណា?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ អនុវត្តទម្លាប់ដកដង្ហើមវែងៗ និងផ្អាក ៣ វិនាទីមុននឹងឆ្លើយតបចំពោះសារ ឬសំណួរដែលធ្វើឱ្យអ្នកខឹង។',
    ),

    // Lesson 10: Century-Old Enterprise Stewardship (Alibaba 102-Year Company Philosophy)
    LessonModel(
      id: 'lesson-csuite-10',
      courseId: 'course-executive-csuite',
      moduleId: 'mod-1',
      titleKh: '១០. ការកសាងអាជីវកម្មរយឆ្នាំ និងកេរដំណែលស្ថាប័ន (Building a 102-Year Enterprise)',
      titleEn: 'Century-Old Enterprise Stewardship: The Alibaba 102-Year Vision & Institutional Legacy',
      type: LessonType.text,
      orderIndex: 10,
      learningObjectives: '• យល់ដឹងពីទស្សនវិជ្ជាអាជីវកម្មរយឆ្នាំរបស់ Alibaba «កសាងក្រុមហ៊ុនដែលរស់នៅឆ្លងកាត់ ៣ សតវត្សរ៍ (១០២ ឆ្នាំ)»។\n'
          '• បង្កើតស្ថាប័នដែលមិនពឹងផ្អែកលើបុគ្គលម្នាក់ (Institutionalization over Personalization)។\n'
          '• ត្រៀមលក្ខណៈផ្ទេរតំណែងកំពូល (CEO Succession) ដើម្បីធានានិរន្តរភាពអាជីវកម្មរាប់ទសវត្សរ៍ខាងមុខ។',
      shortExplanation: 'នៅក្រុមហ៊ុន Alibaba ស្ថាបនិក Jack Ma បានដាក់ទស្សនវិស័យថា ក្រុមហ៊ុនត្រូវតែរស់នៅឱ្យបាន ១០២ ឆ្នាំ (ចាប់ពីឆ្នាំ ១៩៩៩ ឆ្លងកាត់សតវត្សរ៍ទី ២០, ២១ និងចូលដល់សតវត្សរ៍ទី ២២)។ ភាគច្រើននៃក្រុមហ៊ុនបរាជ័យព្រោះវាពឹងផ្អែកតែលើទេពកោសល្យរបស់ស្ថាបនិកម្នាក់ឯង នៅពេលស្ថាបនិកចាស់ជរា ឬចាកចេញ ក្រុមហ៊ុនក៏រលាយសាបសូន្យ។ C-Suite ឆ្នើមមិនគ្រាន់តែជាអ្នករកលុយក្នុងអាណត្តិរបស់ខ្លួននោះទេ ប៉ុន្តែជា «អ្នកថែរក្សា និងបន្តវេន» (The Steward) — កសាងវប្បធម៌ ប្រព័ន្ធ និងគុណតម្លៃដែលនឹងបន្តរស់នៅរាប់ជំនាន់ក្រោយពេលខ្លួនចាកចេញ។',
      workplaceStory: '«នៅពេល Jack Ma សម្រេចចិត្តចុះចេញពីតំណែងជាប្រធានក្រុមហ៊ុន Alibaba ក្នុងឆ្នាំ ២០១៩ មនុស្សជាច្រើនគិតថាក្រុមហ៊ុននឹងជួបវិបត្តិធ្ងន់ធ្ងរ។ ប៉ុន្តែការពិតជាក់ស្តែង Jack Ma បានរៀបចំផែនការបន្តវេននេះតាំងពី ១០ ឆ្នាំមុន (Partnership System)។ គាត់បានបណ្តុះបណ្តាលថ្នាក់ដឹកនាំជំនាន់ថ្មីដូចជា Daniel Zhang និង Eddie Wu ឱ្យយល់ដឹងពី DNA និងវប្បធម៌ក្រុមហ៊ុនយ៉ាងស៊ីជម្រៅ។ \n'
          'នៅថ្ងៃដែល Jack Ma ដើរចេញពីឆាក ក្រុមហ៊ុននៅតែដំណើរការយ៉ាងរលូន និងបន្តរកចំណូលបានរាប់សិបពាន់លានដុល្លារ។ នេះគឺជាភាពខុសគ្នារវាង "ក្រុមហ៊ុនដែលពឹងលើបុគ្គលម្នាក់" និង "ស្ថាប័នដែលពឹងលើប្រព័ន្ធ និងជំនឿរួម"។ ភាពជោគជ័យពិតប្រាកដរបស់មេដឹកនាំ គឺការកសាងស្ថាប័នដែលអាចដំណើរការបានកាន់តែល្អប្រសើរទោះបីជាគ្មានវត្តមានរបស់ខ្លួនក៏ដោយ។»',
      practicalExample: '✅ សសរស្តម្ភ ៣ នៃការកសាងអាជីវកម្មរយឆ្នាំ (The Century-Old Blueprint)៖\n'
          '១. [Core Purpose Beyond Profit]៖ ស្វែងរកបេសកកម្មដែលបម្រើមនុស្សជាតិ (ដូចជា "Make it easy to do business anywhere") មិនមែនគ្រាន់តែរកលុយ។\n'
          '②. [Institutionalized Culture]៖ ចងក្រងគុណតម្លៃស្នូលឱ្យក្លាយជាច្បាប់ និងជាខ្យល់ដង្ហើមរបស់បុគ្គលិកគ្រប់រូប។\n'
          '៣. [Partnership Governance]៖ បង្កើតរចនាសម្ព័ន្ធដៃគូ (Partnership Committee) ដែលជ្រើសរើសអ្នកបន្តវេនដោយផ្អែកលើការការពារបេសកកម្មស្ថាប័ន។',
      practicalExercise: 'សរសេរសេចក្តីប្រកាសកេរដំណែលស្ថាប័ន (Legacy Statement)៖ ប្រសិនបើ ៥០ ឆ្នាំក្រោយ ក្រុមហ៊ុនរបស់អ្នកនៅតែបន្តរីកចម្រើន តើអ្វីជាគុណតម្លៃ និងបេសកកម្មស្នូលដែលអ្នកចង់ឱ្យគេចងចាំបំផុត?',
      quizQuestions: [
        QuestionModel(
          id: 'q-csuite-10',
          promptKh: 'តាមទស្សនវិជ្ជាស្ថាប័ន Alibaba «102-Year Company» តើអ្វីជារង្វាស់នៃភាពជោគជ័យដ៏អស្ចារ្យបំផុតរបស់ CEO ជំនាន់ស្ថាបនិក?',
          promptEn: 'According to Alibaba 102-Year Company doctrine, what is the ultimate measure of an executive founder success?',
          optionsKh: [
            'A. ក្តោបក្តាប់អំណាចរហូតដល់ថ្ងៃស្លាប់។',
            'B. ការកសាងប្រព័ន្ធអភិបាលកិច្ច វប្បធម៌ និងជួរអ្នកបន្តវេនរឹងមាំ ដែលអនុញ្ញាតឱ្យស្ថាប័នបន្តលូតលាស់កាន់តែខ្លាំងក្លា ទោះបីជាគ្មានវត្តមានរបស់ស្ថាបនិកក៏ដោយ។',
            'C. ការដកលុយទាំងអស់ចេញពីក្រុមហ៊ុនមុនពេលចូលនិវត្តន៍។',
          ],
          optionsEn: [
            'A. Hoarding supreme executive power until death.',
            'B. Architecting an institutionalized governance, cultural DNA, and talent pipeline capable of thriving vibrantly long after the founder steps aside.',
            'C. Liquidating enterprise capital before retiring.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ ភាពជោគជ័យពិតប្រាកដរបស់ស្ថាបត្យករអាជីវកម្ម គឺការកសាងស្ថាប័នដែលរស់នៅយូរអង្វែងជាងអាយុកាលរបស់ខ្លួនឯង (Built to Last)។',
          explanationEn: 'Explanation: True greatness is measured by institutional immortality: building an enterprise that prospers without individual dependency.',
        ),
      ],
      reflection: 'ប្រសិនបើអ្នកដើរចេញពីស្ថាប័ននៅថ្ងៃស្អែក តើអ្វីដែលអ្នកបានកសាងនឹងបន្តរីកចម្រើន ឬនឹងរលាយបាត់ទៅជាមួយអ្នក?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ចំណាយពេល ១ ម៉ោងសរសេរទស្សនវិស័យកេរដំណែល ២០ ឆ្នាំ (20-Year Legacy Document) សម្រាប់ស្ថាប័នរបស់អ្នក។',
    ),
  ];

  // =========================================================================
  // 10. FOUNDER & SME EXTRA LESSONS (Lessons 7 to 10)
  // =========================================================================
  static final List<LessonModel> founderLessons = [
    // Lesson 7: Han Feizi & Chinese Statecraft: Law, Art, and Situational Power (法、术、势)
    LessonModel(
      id: 'lesson-founder-7',
      courseId: 'course-founder-sme',
      moduleId: 'mod-1',
      titleKh: '៧. ក្បួនគ្រប់គ្រងធនធានមនុស្សតាមទស្សនវិជ្ជា ហាន ហ្វៃជឺ «ច្បាប់ សិល្បៈ អំណាច» (Han Feizi: Fa, Shu, Shi)',
      titleEn: 'Han Feizi Classical Statecraft for Founders: The Triad of Law, Art, and Strategic Power',
      type: LessonType.text,
      orderIndex: 7,
      learningObjectives: '• យល់ដឹងពីទស្សនវិជ្ជាគ្រប់គ្រងបែបនីតិនិយមរបស់ ហាន ហ្វៃជឺ (Han Feizi): ច្បាប់ (Fa / 法), សិល្បៈ (Shu / 术), និងអំណាចនៃកាលៈទេសៈ (Shi / 势)។\n'
          '• បញ្ឈប់ការគ្រប់គ្រងក្រុមហ៊ុនតាមតែ «អារម្មណ៍ និងការទុកចិត្តខ្វាក់ភ្នែក»។\n'
          '• បង្កើតប្រព័ន្ធគ្រប់គ្រងដែលផ្តល់រង្វាន់យ៉ាងច្បាស់លាស់ដល់អ្នកមានស្នាដៃ និងដាក់ទណ្ឌកម្មលើអ្នកបំពានច្បាប់ (Carrot & Stick System)។',
      shortExplanation: 'ស្ថាបនិកទស្សនវិជ្ជានីតិនិយមចិន ហាន ហ្វៃជឺ (Han Feizi) បានបង្រៀនថា៖ មនុស្សធម្មជាតិធ្វើសកម្មភាពតាមផលប្រយោជន៍ និងការការពារខ្លួន។ ប្រសិនបើស្ថាបនិកក្រុមហ៊ុន SME គ្រប់គ្រងដោយពឹងផ្អែកតែលើ «ភាពជាបងប្អូន និងការទុកចិត្តដោយគ្មានប្រព័ន្ធ» ក្រុមហ៊ុននោះនឹងត្រូវវិនាសដោយសារការក្បត់ និងការកិបកេង។ ដើម្បីដឹកនាំអាជីវកម្មឱ្យរីកធំ ស្ថាបនិកត្រូវក្តោបក្តាប់ក្បួន ៣ យ៉ាង៖ \n'
          '១. ច្បាប់ (Fa / 法)៖ បទបញ្ជាផ្ទៃក្នុង និង SOP ត្រូវតែច្បាស់លាស់ និងអនុវត្តស្មើភាពគ្នា។\n'
          '②. សិល្បៈ (Shu / 术)៖ វិធីសាស្ត្រសម្ងាត់ក្នុងការវាយតម្លៃ និងសាកល្បងចិត្តមនុស្ស។\n'
          '៣. អំណាចកាលៈទេសៈ (Shi / 势)៖ ការក្តោបក្តាប់ធនធានហិរញ្ញវត្ថុ និងសិទ្ធិអំណាចសម្រេចចិត្តដាច់ខាត។',
      workplaceStory: '«លោក វិបុល ជាស្ថាបនិកក្រុមហ៊ុនចែកចាយសម្ភារសំណង់ SME មួយ។ ដោយសារគាត់ជាមនុស្សចិត្តល្អ គាត់បានចាត់ទុកបុគ្គលិកទាំងអស់ដូចជាបងប្អូនសាច់ញាតិ ដោយមិនដែលបង្កើតកិច្ចសន្យាការងារច្បាស់លាស់ មិនដែលឆែកឆេរឃ្លាំងទំនិញ និងមិនដែលដាក់ទោសអ្នកធ្វើខុសឡើយ។ \n'
          'ជាលទ្ធផល បុគ្គលិកផ្នែកលក់បានលួចបង្កើតក្រុមហ៊ុនក្រៅដើម្បីប្រជែងជាមួយគាត់ មេឃ្លាំងបានលួចលក់ទំនិញយកលុយចាយផ្ទាល់ខ្លួន ហើយគណនេយ្យករបានកិបកេងប្រាក់ក្រុមហ៊ុនរាប់ម៉ឺនដុល្លារ។ ក្រុមហ៊ុនស្ទើរតែក្ស័យធន។ \n'
          'ក្រោយពីសិក្សាក្បួន ហាន ហ្វៃជឺ វិបុលបានភ្ញាក់រលឹក៖ គាត់បានដាក់ចេញនូវប្រព័ន្ធ "Fa (法)" យ៉ាងម៉ត់ចត់៖ តម្លើងប្រព័ន្ធកាមេរ៉ាសុវត្ថិភាព ធ្វើសវនកម្មឃ្លាំងរៀងរាល់សប្តាហ៍ បង្កើតកិច្ចសន្យាការងារច្បាស់លាស់ និងដាក់ចេញនូវប្រព័ន្ធរង្វាន់ និងទណ្ឌកម្ម (Two Handles)។ បុគ្គលិកខិលខូចត្រូវបានបណ្តេញចេញ រីឯបុគ្គលិកស្មោះត្រង់ទទួលបានប្រាក់រង្វាន់ខ្ពស់។ ត្រឹមតែ ៦ ខែ ប្រាក់ចំណេញរបស់ក្រុមហ៊ុនបានកើនឡើង ៣ ដង ហើយក្រុមហ៊ុនដំណើរការយ៉ាងរលូន។»',
      practicalExample: '✅ របៀបអនុវត្តក្បួន «法 术 势» ក្នុងអាជីវកម្ម SME៖\n'
          '• Fa (ច្បាប់)៖ បទបញ្ជាផ្ទៃក្នុង សៀវភៅ SOP និងកិច្ចសន្យាការងារត្រូវតែសរសេរជាលាយលក្ខណ៍អក្សរច្បាស់លាស់ (គ្មានការលើកលែងសូម្បីតែបងប្អូនបង្កើត)។\n'
          '• Shu (សិល្បៈ)៖ ប្រើប្រាស់ការផ្ទៀងផ្ទាត់ឆ្លងកាត់ (Cross-Checks) — មិនឱ្យមនុស្សម្នាក់ក្តោបក្តាប់ទាំងការបញ្ជាទិញ និងការទូទាត់លុយឡើយ។\n'
          '• Shi (អំណាច)៖ ស្ថាបនិកត្រូវតែក្តោបក្តាប់ហត្ថលេខាមូលប្បទានប័ត្រ និងទិន្នន័យអតិថិជនស្នូល។',
      practicalExercise: 'ពិនិត្យមើលអាជីវកម្មរបស់អ្នកថ្ងៃនេះ តើមានចំណុចណាខ្លះដែលអ្នកកំពុងពឹងផ្អែកលើ «ការទុកចិត្តបុគ្គល» ដោយគ្មានប្រព័ន្ធត្រួតពិនិត្យ (Fa) ការពារ?',
      quizQuestions: [
        QuestionModel(
          id: 'q-founder-7',
          promptKh: 'តាមទស្សនវិជ្ជា ហាន ហ្វៃជឺ (Han Feizi) ហេតុអ្វីបានជាការគ្រប់គ្រងស្ថាប័នដោយពឹងផ្អែកតែលើ «ភាពជាបងប្អូន និងការទុកចិត្តផ្ទាល់ខ្លួន» តែងតែនាំទៅរកការបរាជ័យ?',
          promptEn: 'According to Han Feizi legalist statecraft, why does managing an enterprise purely on personal trust and brotherly affection lead to ruin?',
          optionsKh: [
            'A. ព្រោះមនុស្សគ្រប់គ្នាសុទ្ធតែជាចោរ។',
            'B. ព្រោះបើគ្មានច្បាប់ និងប្រព័ន្ធត្រួតពិនិត្យរឹងមាំ (Fa) ទេ ធម្មជាតិមនុស្សនឹងងាយរងការល្បួងដោយផលប្រយោជន៍ផ្ទាល់ខ្លួន ដែលបង្កឱ្យមានការកិបកេង និងបក្សពួកនិយម។',
            'C. ព្រោះច្បាប់បុរាណមិនអនុញ្ញាតឱ្យមានមិត្តភាព។',
          ],
          optionsEn: [
            'A. Because all humans are inherently thieves.',
            'B. Because in the absence of explicit institutional laws, transparent metrics, and systemic oversight, self-interest inexorably breeds corruption and betrayal.',
            'C. Because ancient laws forbade personal friendships.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ ហាន ហ្វៃជឺ បង្រៀនឱ្យពឹងផ្អែកលើប្រព័ន្ធ និងច្បាប់ (Fa) មិនមែនពឹងលើចិត្តមនុស្សដែលប្រែប្រួលនោះទេ។ ប្រព័ន្ធល្អការពារមនុស្សកុំឱ្យធ្វើខុស។',
          explanationEn: 'Explanation: Institutional mechanisms (Fa) safeguard against moral frailty far more reliably than blind sentimentality.',
        ),
      ],
      reflection: 'តើនៅក្នុងក្រុមហ៊ុនរបស់អ្នកមាន «មនុស្សដែលមិនអាចប៉ះពាល់បាន» ដោយសារជាបងប្អូន ឬជាមិត្តភក្តិ ដែលកំពុងបំពានច្បាប់ស្ថាប័នដែរឬទេ?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ កំណត់នីតិវិធីត្រួតពិនិត្យហិរញ្ញវត្ថុមួយដែលបច្ចុប្បន្នកំពុងពឹងផ្អែកលើការទុកចិត្ត ហើយដាក់ប្រព័ន្ធ Two-Person Approval ភ្លាមៗ។',
    ),

    // Lesson 8: Cash Flow Survival & The 6-Month Liquidity Rule
    LessonModel(
      id: 'lesson-founder-8',
      courseId: 'course-founder-sme',
      moduleId: 'mod-1',
      titleKh: '៨. ក្បួនសង្គ្រោះសាច់ប្រាក់ និងច្បាប់ទុនបម្រុង ៦ ខែសម្រាប់ SME (SME Cash Flow Survival)',
      titleEn: 'Cash Flow Survival: The 6-Month Liquidity Rule & Working Capital Mastery for SMEs',
      type: LessonType.text,
      orderIndex: 8,
      learningObjectives: '• យល់ដឹងពីមូលហេតុលេខ ១ នៃការក្ស័យធនរបស់ SME៖ «ដាច់សាច់ប្រាក់បង្វិល (Cash Insolvency)» ទោះបីជាអាជីវកម្មមានប្រាក់ចំណេញលើក្រដាសក៏ដោយ។\n'
          '• អនុវត្តច្បាប់ដែក «សាច់ប្រាក់បម្រុង ៦ ខែ» (The 6-Month Runway Rule)។\n'
          '• គ្រប់គ្រងវដ្តបង្វិលសាច់ប្រាក់ (Cash Conversion Cycle - CCC)៖ ទារលុយពីម៉ូយឱ្យលឿន ពន្យារពេលសងអ្នកផ្គត់ផ្គង់ឱ្យស្របច្បាប់។',
      shortExplanation: 'ជាង ៨០% នៃអាជីវកម្ម SME ដែលដួលរលំ មិនមែនដោយសារគ្មានអតិថិជននោះទេ ប៉ុន្តែដោយសារ «ដាច់សាច់ប្រាក់» (Ran Out of Cash)។ ស្ថាបនិកជាច្រើនច្រឡំរវាង «ចំណូលលក់ (Revenue)» និង «សាច់ប្រាក់ក្នុងដៃ (Cash)»។ នៅពេលអ្នកលក់ទំនិញជំពាក់បាន \$50,000 អ្នកមានចំណូលលើក្រដាស ប៉ុន្តែអ្នកគ្មានលុយបើកប្រាក់ខែបុគ្គលិក និងបង់ថ្លៃផ្ទះឡើយ។ ស្ថាបនិកឆ្លាតវៃតែងតែតាមដានរបាយការណ៍សាច់ប្រាក់ប្រចាំថ្ងៃ និងរក្សាទុនបម្រុងសុទ្ធយ៉ាងហោចណាស់ ៦ ខែ។',
      workplaceStory: '«កញ្ញា សុគន្ធា ជាម្ចាស់អាជីវកម្មផ្គត់ផ្គង់សម្ភារការិយាល័យ។ ក្នុងឆ្នាំទី ២ ការលក់របស់នាងបានកើនឡើងដល់ \$100,000 ក្នុងមួយខែ។ ដោយរំភើបនឹងតួលេខ នាងបានយល់ព្រមឱ្យក្រុមហ៊ុនធំៗជំពាក់ប្រាក់រហូតដល់ ៩០ ថ្ងៃ។ \n'
          'ដល់ចុងខែ នាងត្រូវបើកប្រាក់ខែបុគ្គលិក \$15,000 និងបង់ថ្លៃទំនិញឱ្យរោងចក្រ \$40,000 ប៉ុន្តែក្នុងគណនីធនាគាររបស់នាងសល់លុយត្រឹមតែ \$3,000! ក្រុមហ៊ុនធំៗដែលជំពាក់មិនព្រមបើកលុយឱ្យទាន់ពេលឡើយ។ នាងស្ទើរតែត្រូវធនាគាររឹបអូសផ្ទះដោយសារកង្វះសាច់ប្រាក់។ \n'
          'ក្រោយពីដោះស្រាយរួច នាងបានរៀបចំក្បួនសាច់ប្រាក់ឡើងវិញ៖ \n'
          '១. អតិថិជនត្រូវកក់ប្រាក់ ៥០% មុនប្រគល់ទំនិញ។\n'
          '②. កាត់បន្ថយរយៈពេលជំពាក់មកត្រឹមអតិបរមា ៣០ ថ្ងៃ។\n'
          '៣. បង្កើតគណនីបម្រុងដាច់ដោយឡែកមួយដែលមានសាច់ប្រាក់ស្មើនឹង ៦ ខែនៃថ្លៃប្រតិបត្តិការ (OPEX) ដែលដាច់ខាតមិនត្រូវប៉ះពាល់ឡើយ។ ចាប់ពីពេលនោះមក អាជីវកម្មរបស់នាងមានស្ថេរភាពរឹងមាំ និងលែងស្គាល់ពាក្យថាភ័យស្លន់ស្លោទៀតហើយ។»',
      practicalExample: '✅ រូបមន្តគ្រប់គ្រងវដ្តសាច់ប្រាក់ (Cash Conversion Cycle - CCC)៖\n'
          '• CCC = ថ្ងៃស្តុកទំនិញ (DIO) + ថ្ងៃទារលុយពីម៉ូយ (DSO) - ថ្ងៃជំពាក់អ្នកផ្គត់ផ្គង់ (DPO)\n'
          '• គោលដៅ៖ ធ្វើឱ្យ CCC កាន់តែខ្លី ឬអវិជ្ជមាន (ដូចជា ទទួលលុយសុទ្ធពីភ្ញៀវភ្លាមៗ ប៉ុន្តែសងរោងចក្រក្រោយ ៣០ ថ្ងៃ)។\n'
          '• ច្បាប់ទុនបម្រុង ៦ ខែ៖ ប្រសិនបើថ្លៃចំណាយប្រចាំខែ (Rent + Salary + Utilities) = \$5,000 នោះទុនបម្រុងបន្ទាន់ត្រូវតែមាន \$30,000 នៅក្នុងធនាគារជានិច្ច។',
      practicalExercise: 'គណនាថ្លៃចំណាយប្រតិបត្តិការប្រចាំខែ (Monthly Burn Rate) របស់អាជីវកម្មអ្នក ហើយពិនិត្យមើលថាតើសាច់ប្រាក់បច្ចុប្បន្នអាចទប់ទល់បានប៉ុន្មានខែ (Runway Months)។',
      quizQuestions: [
        QuestionModel(
          id: 'q-founder-8',
          promptKh: 'តើអ្វីជាមូលហេតុចម្បងបំផុតដែលធ្វើឱ្យអាជីវកម្ម SME ជាច្រើនក្ស័យធន ទោះបីជាមានការបញ្ជាទិញច្រើនពីអតិថិជនក៏ដោយ?',
          promptEn: 'What is the number one cause of SME bankruptcy despite growing sales orders?',
          optionsKh: [
            'A. ការខ្វះបុគ្គលិកលក់។',
            'B. វិបត្តិដាច់សាច់ប្រាក់បង្វិល (Cash Flow Crisis) ដោយសារឱ្យម៉ូយជំពាក់លុយយូរពេក ខណៈដែលថ្លៃចំណាយប្រចាំខែត្រូវបើកទាន់ពេលវេលា។',
            'C. ការចំណាយលើការបង់ពន្ធច្រើនពេក។',
          ],
          optionsEn: [
            'A. Shortage of frontline salespeople.',
            'B. Cash flow starvation caused by uncollected accounts receivable alongside unavoidable fixed monthly cash outflows.',
            'C. Excessive tax payments.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ "Profit is an opinion, Cash is a fact"។ ការលក់ដាច់តែមិនទារលុយបាន នឹងធ្វើឱ្យក្រុមហ៊ុនក្ស័យធនដោយសារគ្មានសាច់ប្រាក់បើកប្រាក់ខែ និងថ្លៃទំនិញ។',
          explanationEn: 'Explanation: Profit is accounting theory; cash is enterprise oxygen. Over-extended receivables trigger insolvency.',
        ),
      ],
      reflection: 'តើអាជីវកម្មរបស់អ្នកកំពុងមានកូនបំណុលជំពាក់ប្រាក់ច្រើនលើសលប់ដែរឬទេ? តើអ្នកមានវិធានការទារប្រាក់យ៉ាងម៉ត់ចត់កម្រិតណា?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ពិនិត្យបញ្ជីគណនីត្រូវទារ (Accounts Receivable Aging Report) ហើយចាត់តាំងក្រុមការងារទារប្រាក់ដែលជំពាក់លើសពី ៣០ ថ្ងៃជាបន្ទាន់។',
    ),

    // Lesson 9: Overcoming the Founder's Trap (Moving from Founder to CEO)
    LessonModel(
      id: 'lesson-founder-9',
      courseId: 'course-founder-sme',
      moduleId: 'mod-1',
      titleKh: '៩. ការចាកចេញពីអន្ទាក់ស្ថាបនិក «ក្បួនលែងដៃដើម្បីពង្រីកខ្លួន» (Overcoming the Founder’s Trap)',
      titleEn: 'Escaping the Founder’s Trap: Transitioning from Chief Everything Officer to True Leader',
      type: LessonType.text,
      orderIndex: 9,
      learningObjectives: '• យល់ដឹងពីគ្រោះថ្នាក់នៃ «អន្ទាក់ស្ថាបនិក» (The Founder’s Trap: គ្រប់រឿងត្រូវឆ្លងកាត់ដៃស្ថាបនិកទាំងអស់)។\n'
          '• បំប្លែងខ្លួនពី «អ្នកធ្វើការងារជំនាញ (Technician)» មកជា «ស្ថាបត្យករបង្កើតប្រព័ន្ធ (System Architect)» (The E-Myth)។\n'
          '• ផ្ទេរសិទ្ធិអំណាចសម្រេចចិត្ត (Delegation with Boundaries) ដើម្បីឱ្យអាជីវកម្មអាចដំណើរការបានដោយគ្មានវត្តមានស្ថាបនិក។',
      shortExplanation: 'ស្ថាបនិក SME ភាគច្រើនមិនមែនជាម្ចាស់អាជីវកម្មពិតប្រាកដនោះទេ ប៉ុន្តែជា «អ្នកស៊ីឈ្នួលឱ្យអាជីវកម្មខ្លួនឯង» (Self-Employed Trap)៖ ពួកគេធ្វើជាអ្នកលក់ផង រៀបចំទំនិញផង ធ្វើគណនេយ្យផង និងសម្អាតការិយាល័យផង។ ប្រសិនបើពួកគេឈប់សម្រាក ២ ថ្ងៃ អាជីវកម្មនឹងត្រូវគាំង។ ការចាកចេញពីអន្ទាក់ស្ថាបនិកទាមទារការផ្លាស់ប្តូរផ្នត់គំនិត៖ ឈប់ធ្វើការងារ «នៅក្នុងអាជីវកម្ម (Work IN the business)» ហើយប្តូរមកធ្វើការងារ «លើអាជីវកម្ម (Work ON the business)» តាមរយៈការបង្កើត SOP និងប្រព័ន្ធស្វ័យប្រវត្តិ។',
      workplaceStory: '«លោក តារា ជាស្ថាបនិកភោជនីយដ្ឋានដ៏ល្បីមួយ។ អស់រយៈពេល ៥ ឆ្នាំ គាត់ត្រូវភ្ញាក់ពីម៉ោង ៤ ទៀបភ្លឺទៅទិញសាច់នៅផ្សារ និងឈរមើលការខុសត្រូវរហូតដល់ម៉ោង ១១ យប់ជារៀងរាល់ថ្ងៃ។ គាត់មានអារម្មណ៍ហត់នឿយ បាក់កម្លាំង និងគ្មានពេលសម្រាប់ក្រុមគ្រួសារសូម្បីតែបន្តិច។ គាត់ចង់បើកសាខាទី ២ ប៉ុន្តែមិនអាចធ្វើទៅរួច ព្រោះគ្មានអ្នកណាអាចធ្វើការងារជំនួសគាត់បាន។ \n'
          'ក្រោយពីបានអានសៀវភៅ The E-Myth គាត់បានចំណាយពេល ៣ ខែធ្វើការកែទម្រង់៖ \n'
          '១. គាត់បានចងក្រងរូបមន្តធ្វើម្ហូប និងក្បួនទិញទំនិញទាំងអស់ជាឯកសារ SOP ច្បាស់លាស់។\n'
          '②. គាត់បានជួល Restaurant Manager ម្នាក់ និងបង្វឹកឱ្យចេះគ្រប់គ្រងបុគ្គលិក និងគណនេយ្យ។\n'
          '៣. គាត់បានសាកល្បងដើរចេញទៅសម្រាកនៅមាត់សមុទ្រ ៧ ថ្ងៃដោយមិនបើកទូរស័ព្ទ។ \n'
          'លទ្ធផល៖ ភោជនីយដ្ឋានដំណើរការយ៉ាងរលូន ១០០% ដោយគ្មានបញ្ហាអ្វីកើតឡើងឡើយ។ ក្រោយពីដោះលែងខ្លួនឯងពីការងារប្រតិបត្តិការ តារាមានពេលគ្រប់គ្រាន់ដើម្បីរៀបចំយុទ្ធសាស្ត្រ ហើយក្នុងរយៈពេល ២ ឆ្នាំក្រោយមក គាត់បានពង្រីកសាខាបាន ៥ បន្ថែមទៀតដោយជោគជ័យ។»',
      practicalExample: '✅ តេស្តសាកល្បង «តើអ្នកជាប់ក្នុង Founder Trap ដែរឬទេ?»៖\n'
          '• សំណួរ ១៖ តើអាជីវកម្មរបស់អ្នកអាចដំណើរការ និងរកចំណេញបានដែរឬទេ ប្រសិនបើអ្នកទៅវិស្សមកាល ៣០ ថ្ងៃដោយគ្មានទូរស័ព្ទ?\n'
          '• សំណួរ ២៖ តើបុគ្គលិកត្រូវមករកអ្នកដើម្បីសុំការអនុម័តលើការចំណាយក្រោម \$50 ដែរឬទេ?\n'
          '• បើឆ្លើយថា "មិនបាន / ត្រូវមកសុំ" មានន័យថាអ្នកកំពុងជាប់ក្នុងអន្ទាក់ស្ថាបនិក ១០០%។\n'
          '• ដំណោះស្រាយ៖ បង្កើតច្បាប់ផ្ទេរសិទ្ធិ (Delegation Limits)៖ អនុញ្ញាតឱ្យ Manager សម្រេចចិត្តចំណាយក្រោម \$200 ដោយស្វ័យប្រវត្តិ។',
      practicalExercise: 'កំណត់កិច្ចការប្រតិបត្តិការប្រចាំថ្ងៃចំនួន ៣ ដែលអ្នកកំពុងធ្វើដោយផ្ទាល់ដៃ ហើយរៀបចំផ្ទេរវាទៅឱ្យសមាជិកក្រុមក្នុងរយៈពេល ១៤ ថ្ងៃខាងមុខ។',
      quizQuestions: [
        QuestionModel(
          id: 'q-founder-9',
          promptKh: 'តាមទ្រឹស្តី The E-Myth តើអ្វីជាភាពខុសគ្នារវាងការធ្វើការ «Work IN the business» និង «Work ON the business»?',
          promptEn: 'According to The E-Myth, what is the critical difference between working IN versus ON your business?',
          optionsKh: [
            'A. គ្មានភាពខុសគ្នាអ្វីឡើយ។',
            'B. "Work IN" គឺការជាប់រវល់ធ្វើកិច្ចការប្រតិបត្តិការប្រចាំថ្ងៃដូចជាបុគ្គលិកទូទៅ រីឯ "Work ON" គឺការផ្តោតលើការកសាងប្រព័ន្ធ យុទ្ធសាស្ត្រ និងការបណ្តុះបណ្តាលដើម្បីឱ្យអាជីវកម្មដើរដោយស្វ័យប្រវត្តិ។',
            'C. "Work ON" គឺការធ្វើការតែនៅថ្ងៃចុងសប្តាហ៍។',
          ],
          optionsEn: [
            'A. There is no meaningful difference.',
            'B. Working IN means getting trapped executing tactical daily chores; working ON means architecting systems, business models, and leadership capability so the enterprise operates without founder dependency.',
            'C. Working ON means working solely on weekends.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ ស្ថាបនិកដែលចង់ពង្រីកអាជីវកម្មឱ្យធំ ត្រូវតែដោះលែងខ្លួនឯងពីការងារប្រតិបត្តិការតូចតាច (Work IN) មកផ្តោតលើការកសាងប្រព័ន្ធស្ថាប័ន (Work ON)។',
          explanationEn: 'Explanation: Systematizing processes allows founders to elevate from technician roles to enterprise architects.',
        ),
      ],
      reflection: 'តើមានកិច្ចការណាខ្លះដែលអ្នកមិនព្រមលែងដៃឱ្យកូនចៅធ្វើ ដោយសារតែគិតថា «គ្មានអ្នកណាធ្វើបានល្អដូចខ្ញុំ»?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ជ្រើសរើសកិច្ចការទម្លាប់មួយដែលស៊ីពេលអ្នក ២ ម៉ោងក្នុងមួយថ្ងៃ ហើយផ្ទេរវាទៅឱ្យបុគ្គលិកម្នាក់ធ្វើចាប់ពីថ្ងៃស្អែក។',
    ),

    // Lesson 10: Retaining Core Soldiers & Profit/Equity Partnership
    LessonModel(
      id: 'lesson-founder-10',
      courseId: 'course-founder-sme',
      moduleId: 'mod-1',
      titleKh: '១០. សិល្បៈចងចិត្តកងទ័ពដែក និងការបែងចែកភាគហ៊ុនដៃគូ (Retaining Core Soldiers & Partnership)',
      titleEn: 'Retaining the Iron Core: SME Partnership Models, Equity Vesting & Profit Pools',
      type: LessonType.text,
      orderIndex: 10,
      learningObjectives: '• យល់ដឹងពីរបៀបរក្សាកងទ័ពដែក (Core Soldiers) ដែលបានរួមសុខរួមទុក្ខតាំងពីបាតដៃទទេកុំឱ្យចាកចេញ។\n'
          '• អនុវត្តកិច្ចសន្យាបែងចែកភាគហ៊ុនតាមដំណាក់កាល (4-Year Equity Vesting with 1-Year Cliff)។\n'
          '• បង្កើតសម្ព័ន្ធភាពផលប្រយោជន៍ដ៏រឹងមាំរវាងស្ថាបនិក និងបុគ្គលិកស្នូល ដើម្បីរួមគ្នាពង្រីកអាជីវកម្មឱ្យក្លាយជាក្រុមហ៊ុនធំ។',
      shortExplanation: 'សោកនាដកម្មធំបំផុតរបស់ស្ថាបនិក SME គឺ៖ នៅពេលអាជីវកម្មចាប់ផ្តើមមានឈ្មោះបោះសំឡេង បុគ្គលិកពូកែៗ និងសហស្ថាបនិកដែលធ្លាប់តស៊ូជាមួយគ្នាតាំងពីដំបូង បែរជានាំគ្នាលាលែងចេញទៅបើកក្រុមហ៊ុនប្រកួតប្រជែង ឬទៅធ្វើការឱ្យគេ។ មូលហេតុគឺដោយសារស្ថាបនិក «កំណាញ់ភាគហ៊ុន និងប្រាក់ចំណេញ»។ ស្ថាបនិកដែលឆ្លាតវៃយល់ថា៖ «កាន់កាប់ ១០០% នៃក្រុមហ៊ុនដែលស្មើនឹង ០ ដុល្លារ មិនស្មើនឹងកាន់កាប់ ៦០% នៃក្រុមហ៊ុនដែលមានតម្លៃ ១០ លានដុល្លារនោះឡើយ»។ ចូរចេះចែករំលែកដើម្បីប្រមូលផ្តុំកម្លាំង។',
      workplaceStory: '«លោក សុវណ្ណ បានបើកក្រុមហ៊ុនផ្គត់ផ្គង់បច្ចេកវិទ្យាតូចមួយជាមួយសហការីឆ្នើម ២ នាក់ឈ្មោះ វីរៈ (ផ្នែកលក់) និង ដារ៉ា (ផ្នែកបច្ចេកទេស)។ ក្នុងរយៈពេល ៣ ឆ្នាំដំបូង ពួកគេបានខិតខំទាំងយប់ទាំងថ្ងៃរហូតដល់ក្រុមហ៊ុនមានអតិថិជនរាប់រយ។ ប៉ុន្តែ សុវណ្ណបានកាន់កាប់ភាគហ៊ុន ១០០% តែម្នាក់ឯង និងបើកត្រឹមតែប្រាក់ខែធម្មតាដល់អ្នកទាំងពីរ។ \n'
          'នៅដើមឆ្នាំទី ៤ វីរៈ និងដារ៉ាបានជួបគ្នាដោយស្ងាត់ស្ងៀម ហើយគ្រោងនឹងលាលែងទៅបើកក្រុមហ៊ុនថ្មីជាមួយគ្នា។ សុវណ្ណបានដឹងរឿងនេះទាន់ពេល។ គាត់មិនបានខឹងទេ ប៉ុន្តែបានបន្ទោសខ្លួនឯង។ គាត់បានកោះប្រជុំភ្លាមៗ ហើយបានផ្តល់កិច្ចសន្យាភាពជាដៃគូជាផ្លូវការ៖ គាត់បានកាត់ភាគហ៊ុន ១៥% ឱ្យវីរៈ និង ១៥% ឱ្យដារ៉ា (តាមកិច្ចសន្យា Vesting ៤ ឆ្នាំ) និងបង្កើតប្រព័ន្ធបែងចែកប្រាក់ចំណេញសុទ្ធ ២០% ជារៀងរាល់ឆ្នាំ។ \n'
          'វីរៈ និងដារ៉ាមានការរំភើប និងស្មោះត្រង់យ៉ាងខ្លាំង។ ពួកគេបានលុបចោលគម្រោងចាកចេញ ហើយបានប្រឹងប្រែងអស់ពីកម្លាំងកាយចិត្ត។ ប្រាំឆ្នាំក្រោយមក ក្រុមហ៊ុនបានរីកចម្រើនក្លាយជាក្រុមហ៊ុនបច្ចេកវិទ្យាកំពូលមួយដែលមានតម្លៃទីផ្សារជាង \$8,000,000 ហើយអ្នកទាំងបីបានក្លាយជាសេដ្ឋីជាមួយគ្នា។»',
      practicalExample: '✅ គំរូកិច្ចសន្យាភាគហ៊ុនស្ដង់ដារ (4-Year Vesting with 1-Year Cliff)៖\n'
          '• ឆ្នាំទី ១ (The Cliff)៖ បុគ្គលិកស្នូលត្រូវធ្វើការឱ្យគ្រប់ ១ ឆ្នាំពេញ ទើបទទួលបានសិទ្ធិ ២៥% ដំបូងនៃភាគហ៊ុន (ប្រសិនបើឈប់មុន ១ ឆ្នាំ មិនទទួលបានភាគហ៊ុនឡើយ)។\n'
          '• ឆ្នាំទី ២, ៣, ៤៖ ភាគហ៊ុនដែលនៅសល់ ៧៥% នឹងត្រូវផ្ទេរជូនបន្តិចម្តងៗជារៀងរាល់ខែ (Monthly Vesting)។\n'
          '• Buyback Clause៖ ប្រសិនបើបុគ្គលិកចាកចេញ ស្ថាបនិកមានសិទ្ធិទិញភាគហ៊ុននោះត្រឡប់មកវិញតាមតម្លៃទីផ្សារកំណត់ទុកជាមុន ដើម្បីការពារកុំឱ្យភាគហ៊ុនធ្លាក់ទៅលើដៃគូប្រជែង។',
      practicalExercise: 'កំណត់ឈ្មោះបុគ្គលិកគន្លឹះ ២ ទៅ ៣ នាក់ដែលអាជីវកម្មរបស់អ្នកមិនអាចខ្វះបាន ហើយរៀបចំផែនការចែករំលែកប្រាក់ចំណេញ ឬភាគហ៊ុននិម្មិតដើម្បីចងចិត្តពួកគេរយៈពេលវែង។',
      quizQuestions: [
        QuestionModel(
          id: 'q-founder-10',
          promptKh: 'ហេតុអ្វីបានជាកិច្ចសន្យាផ្ទេរភាគហ៊ុនត្រូវតែមានលក្ខខណ្ឌ «1-Year Cliff» នៅក្នុងកិច្ចព្រមព្រៀងដៃគូ (Vesting Agreement)?',
          promptEn: 'Why must equity vesting agreements include a mandatory "1-Year Cliff"?',
          optionsKh: [
            'A. ដើម្បីសន្សំថ្លៃសេវាច្បាប់របស់មេធាវី។',
            'B. ដើម្បីការពារស្ថាប័នកុំឱ្យបាត់បង់ភាគហ៊ុនទៅលើមនុស្សដែលចូលមកធ្វើការតែពីរបីខែហើយលាលែងចេញដោយមិនបានបង្កើតតម្លៃពិតប្រាកដ (Protection from free-riders)។',
            'C. ដើម្បីកុំឱ្យបុគ្គលិកទទួលបានប្រាក់ខែ។',
          ],
          optionsEn: [
            'A. To minimize external legal drafting expenses.',
            'B. To protect the enterprise capitalization table from being permanently fractured by individuals who depart after a few months without delivering real value.',
            'C. To withhold basic salary.',
          ],
          correctOptionIndex: 1,
          explanationKh: 'ការពន្យល់៖ 1-Year Cliff ការពារស្ថាបនិកពីអ្នកដែលចូលមកធ្វើការមួយភ្លែតហើយចាកចេញ។ បេក្ខជនត្រូវតែបង្ហាញការលះបង់យ៉ាងតិច ១ ឆ្នាំទើបចាប់ផ្តើមទទួលបានភាគហ៊ុន។',
          explanationEn: 'Explanation: The one-year cliff prevents equity dilution from short-tenured hires who fail to commit long-term.',
        ),
      ],
      reflection: 'តើអ្នកសុខចិត្តកាន់កាប់ភាគហ៊ុន ១០០% នៃក្រុមហ៊ុនតូចមួយ ឬកាន់កាប់ ៦០% នៃក្រុមហ៊ុនធំដែលមានកងទ័ពដែកដ៏ស្មោះត្រង់នៅក្បែរខ្លួន?',
      workplaceAction: '🎯 សកម្មភាពថ្ងៃនេះ៖ ជួបសន្ទនាស្មោះត្រង់ជាមួយបុគ្គលិកឆ្នើមបំផុតរបស់អ្នក ដើម្បីបង្ហាញពីចក្ខុវិស័យភាពជាដៃគូ និងផលប្រយោជន៍រយៈពេលវែងដែលពួកគេនឹងទទួលបាន។',
    ),
  ];
}
