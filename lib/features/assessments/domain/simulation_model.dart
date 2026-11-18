

class DailyChallengeModel {
  final String id;
  final String titleKh;
  final String targetDuration;
  final String categoryKh;
  final String descriptionKh;
  final String actionStepKh;
  final String reflectionPromptKh;
  final bool isCompleted;

  const DailyChallengeModel({
    required this.id,
    required this.titleKh,
    required this.targetDuration,
    required this.categoryKh,
    required this.descriptionKh,
    required this.actionStepKh,
    required this.reflectionPromptKh,
    this.isCompleted = false,
  });
}

class SimulationOption {
  final String labelKh;
  final String outcomeKh;
  final bool isConstructive;
  final String explanationKh;

  const SimulationOption({
    required this.labelKh,
    required this.outcomeKh,
    required this.isConstructive,
    required this.explanationKh,
  });
}

class RoleplayScenarioModel {
  final String id;
  final String titleKh;
  final String subtitleKh;
  final String settingKh;
  final String yourRoleKh;
  final String peerRoleKh;
  final String situationContextKh;
  final List<SimulationOption> options;

  const RoleplayScenarioModel({
    required this.id,
    required this.titleKh,
    required this.subtitleKh,
    required this.settingKh,
    required this.yourRoleKh,
    required this.peerRoleKh,
    required this.situationContextKh,
    required this.options,
  });
}

class SimulationRepository {
  static const List<DailyChallengeModel> dailyChallenges = [
    DailyChallengeModel(
      id: 'dc-1',
      titleKh: 'សួរបញ្ជាក់ទិសដៅការងារមុនចាប់ផ្តើម (Active Clarification)',
      targetDuration: '៣ នាទី',
      categoryKh: 'ទំនាក់ទំនងការងារ',
      descriptionKh: 'មុនពេលចាប់ផ្តើមកិច្ចការថ្មីនៅថ្ងៃនេះ សូមកុំធ្វើតាមការស្មាន។ សួរទៅកាន់អ្នកប្រគល់ការងារដើម្បីបញ្ជាក់ទម្រង់ និងពេលវេលា។',
      actionStepKh: 'ផ្ញើសារ ឬសួរផ្ទាល់មាត់៖ «ដើម្បីកុំឱ្យខុសទិសដៅ តើបងចង់បានលទ្ធផលចុងក្រោយជាអ្វី និងត្រូវបញ្ជូនត្រឹមម៉ោងប៉ុន្មានដែរ?»',
      reflectionPromptKh: 'តើការសួរបញ្ជាក់នេះជួយសន្សំពេលវេលាកែប្រែឡើងវិញបានកម្រិតណា?',
    ),
    DailyChallengeModel(
      id: 'dc-2',
      titleKh: 'ផ្ដល់ការសរសើរស្មោះត្រង់ដល់សហការី (Genuine Recognition)',
      targetDuration: '២ នាទី',
      categoryKh: 'ការកសាងទំនុកចិត្ត',
      descriptionKh: 'ការទទួលស្គាល់ការខិតខំរបស់មិត្តរួមការងារជួយបង្កើនស្មារតីសាមគ្គី និងបរិយាកាសការងារវិជ្ជមាន។',
      actionStepKh: 'ជ្រើសរើសមិត្តរួមការងារម្នាក់ដែលបានជួយអ្នក ឬធ្វើការបានល្អ ហើយថ្លែងអំណរគុណ ឬសរសើរចំចំណុចជាក់លាក់។',
      reflectionPromptKh: 'តើអ្នកសង្កេតឃើញការផ្លាស់ប្តូរអារម្មណ៍របស់គាត់យ៉ាងដូចម្តេច?',
    ),
    DailyChallengeModel(
      id: 'dc-3',
      titleKh: 'រៀបចំការងារអាទិភាពតាម Eisenhower Matrix',
      targetDuration: '៥ នាទី',
      categoryKh: 'ការគ្រប់គ្រងពេលវេលា',
      descriptionKh: 'បែងចែកការងារថ្ងៃនេះជា ២ ក្រុមធំៗ៖ ការងារបន្ទាន់ខ្លាំង និងការងារសំខាន់វែងឆ្ងាយ។',
      actionStepKh: 'ជ្រើសរើសកិច្ចការសំខាន់បំផុតតែមួយគត់ (Top Priority) ហើយបញ្ចប់វាឱ្យរួចរាល់មុនថ្ងៃត្រង់។',
      reflectionPromptKh: 'តើអារម្មណ៍របស់អ្នកមានភាពស្ងប់ចិត្តជាងមុនទេពេលបញ្ចប់កិច្ចការចម្បងបានមុនគេ?',
    ),
  ];

  static const List<RoleplayScenarioModel> scenarios = [
    RoleplayScenarioModel(
      id: 'sim-raise',
      titleKh: 'ការចរចាសុំដំឡើងប្រាក់ខែប្រកបដោយវិជ្ជាជីវៈ',
      subtitleKh: 'រៀនពីរបៀបបង្ហាញទិន្នន័យសមិទ្ធផល (Merit-based) ដោយមិនប្រើអារម្មណ៍',
      settingKh: 'បន្ទប់ប្រជុំផ្ទាល់ខ្លួន 1-on-1 ជាមួយប្រធានផ្នែក',
      yourRoleKh: 'បុគ្គលិកជាន់ខ្ពស់ (Senior Staff)',
      peerRoleKh: 'ប្រធានផ្នែក (Department Head)',
      situationContextKh: 'អ្នកបានបម្រើការងាររយៈពេល ២ ឆ្នាំមកហើយ សម្រេចបាន KPI លើសគោលដៅ និងបានជួយបណ្តុះបណ្តាលបុគ្គលិកថ្មីៗ។ អ្នកចង់ពិភាក្សាអំពីការកែសម្រួលប្រាក់ខែឱ្យស្របតាមការរីកចម្រើននៃសមត្ថភាពរបស់អ្នក។',
      options: [
        SimulationOption(
          labelKh: '«បង! ខ្ញុំធ្វើការនៅទីនេះយូរហើយ ម្យ៉ាងទៀតទំនិញឡើងថ្លៃខ្លាំង បើមិនឡើងប្រាក់ខែទេ ខ្ញុំអាចពិចារណារកកន្លែងផ្សេង។»',
          outcomeKh: 'ប្រធានមានអារម្មណ៍ថារងការគំរាមកំហែង ហើយការលើកឡើងនេះផ្អែកលើតម្រូវការផ្ទាល់ខ្លួន មិនមែនលើតម្លៃការងារជាក់ស្តែងឡើយ។',
          isConstructive: false,
          explanationKh: 'ការលើកឡើងពីបញ្ហាផ្ទាល់ខ្លួន ឬការគំរាមលាលែង ធ្វើឱ្យប៉ះពាល់ដល់ទំនុកចិត្តវិជ្ជាជីវៈ។ គួរផ្តោតលើតម្លៃ និងសមិទ្ធផលដែលអ្នកបានបង្កើតជូនក្រុមហ៊ុន។',
        ),
        SimulationOption(
          labelKh: '«ជម្រាបសួរបង! ខ្ញុំបានរៀបចំសង្ខេបលទ្ធផលការងារ និងគម្រោងដែលខ្ញុំបានដឹកនាំសម្រេចក្នុងឆ្នាំនេះ។ ផ្អែកលើការរីកចម្រើននៃទំនួលខុសត្រូវទាំងនេះ ខ្ញុំចង់ពិភាក្សាអំពីលទ្ធភាពនៃការកែសម្រួលប្រាក់បៀវត្សរ៍ឱ្យស្របតាមទីផ្សារ និងទិន្នផលការងារ។»',
          outcomeKh: 'ប្រធានកោតសរសើរចំពោះការត្រៀមខ្លួន ភាពចាស់ទុំ និងភស្តុតាងច្បាស់លាស់។ ការសន្ទនាប្រព្រឹត្តទៅដោយវិជ្ជមាន និងមានមូលដ្ឋានពិចារណាត្រឹមត្រូវ។',
          isConstructive: true,
          explanationKh: 'នេះគឺជាវិធីសាស្ត្របែប Merit-based ដែលបង្ហាញពីវិជ្ជាជីវៈខ្ពស់ ផ្តល់ទិន្នន័យជាក់ស្តែង និងគោរពពេលវេលារបស់ថ្នាក់លើ។',
        ),
        SimulationOption(
          labelKh: '«តើបងគិតថានៅពេលណាទើបក្រុមហ៊ុនមានគោលការណ៍ដំឡើងប្រាក់ខែឱ្យខ្ញុំ?»',
          outcomeKh: 'សំណួរនេះអកម្មពេក និងមិនបានផ្តល់ហេតុផលថាហេតុអ្វីបានជាអ្នកស័ក្តិសមនឹងទទួលបានការដំឡើងនោះទេ។',
          isConstructive: false,
          explanationKh: 'សំណួរអកម្មធ្វើឱ្យអ្នកបាត់បង់ឱកាសក្នុងការបង្ហាញពីគុណតម្លៃ និងសមិទ្ធផលដែលខ្លួនបានសាង។',
        ),
      ],
    ),
    RoleplayScenarioModel(
      id: 'sim-conflict',
      titleKh: 'ការដោះស្រាយទំនាស់ការងារជាមួយមិត្តរួមការងារ',
      subtitleKh: 'ការដោះស្រាយការខ្វែងគំនិតដោយមិនធ្វើឱ្យខូចទំនាក់ទំនងផ្ទាល់ខ្លួន',
      settingKh: 'កន្លែងពិភាក្សាការងារ ក្រោយពេលប្រជុំគម្រោង',
      yourRoleKh: 'ប្រធានក្រុម (Team Leader)',
      peerRoleKh: 'សហការីផ្នែកទីផ្សារ',
      situationContextKh: 'សហការីរបស់អ្នកមិនបានប្រគល់ទិន្នន័យទីផ្សារទាន់ពេលកំណត់ ដែលធ្វើឱ្យគម្រោងរួមរបស់អ្នកយឺតយ៉ាវ ២ ថ្ងៃ។ គាត់ឆ្លើយតបថា គាត់រវល់ខ្លាំងពេកជាមួយការងារផ្សេងទៀត។',
      options: [
        SimulationOption(
          labelKh: '«បងធ្វើបែបនេះគឺគ្មានការទទួលខុសត្រូវទាល់តែសោះ! បើគម្រោងនេះបរាជ័យ ខ្ញុំនឹងរាយការណ៍ទៅនាយកប្រតិបត្តិ។»',
          outcomeKh: 'បង្កឱ្យមានជម្លោះផ្ទាល់ខ្លួនកាន់តែខ្លាំង ធ្វើឱ្យបែកបាក់សាមគ្គីភាព និងបាត់បង់ការសហការនៅពេលក្រោយ។',
          isConstructive: false,
          explanationKh: 'ការបន្ទោស និងការវាយប្រហារចំៗលើបុគ្គល នាំឱ្យភាគីម្ខាងទៀតបង្កើតរបាំងការពារខ្លួន (Defensive mode) និងមិនព្រមសហការដោះស្រាយបញ្ហាឡើយ។',
        ),
        SimulationOption(
          labelKh: '«ខ្ញុំយល់ថាបងកំពុងមានបន្ទុកការងារច្រើន។ ប៉ុន្តែនៅពេលទិន្នន័យយឺតយ៉ាវ វាបានជះឥទ្ធិពលឱ្យក្រុមយើងទាំងមូលយឺត ២ ថ្ងៃដែរ។ តើយើងអាចអង្គុយពិនិត្យមើលបញ្ហាប្រឈមជាមួយគ្នា ហើយរកដំណោះស្រាយបែបណាដើម្បីកុំឱ្យកើតឡើងម្តងទៀត?»',
          outcomeKh: 'សហការីមានអារម្មណ៍ថាទទួលបានការយល់ចិត្ត (Empathy) ទទួលស្គាល់កំហុសដោយស្ម័គ្រចិត្ត និងរួមគ្នាបង្កើតកាលវិភាគថ្មីប្រកបដោយប្រសិទ្ធភាព។',
          isConstructive: true,
          explanationKh: 'វិធីសាស្ត្រនេះផ្តោតលើ «បញ្ហា» មិនមែនលើ «បុគ្គល» (Focus on the problem, not the person) ដោយរួមបញ្ចូល Empathy និងភាពម៉ឺងម៉ាត់លើគោលដៅ។',
        ),
      ],
    ),
  ];
}
