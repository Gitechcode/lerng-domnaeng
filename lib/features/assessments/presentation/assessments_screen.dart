import 'package:flutter/material.dart';
import 'package:lerng_domnaeng/core/theme/app_theme.dart';
import '../domain/simulation_model.dart';
import 'simulation_detail_screen.dart';

class AssessmentsScreen extends StatefulWidget {
  const AssessmentsScreen({super.key});

  @override
  State<AssessmentsScreen> createState() => _AssessmentsScreenState();
}

class _AssessmentsScreenState extends State<AssessmentsScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final Set<String> _completedChallenges = {};

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7FAF8),
      appBar: AppBar(
        title: const Text('ការអនុវត្ត & តេស្តសមត្ថភាព (Assessments & Career)'),
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          labelColor: AppColors.primaryGreen,
          unselectedLabelColor: AppColors.subtleGray,
          indicatorColor: AppColors.primaryGreen,
          labelStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
          tabs: const [
            Tab(icon: Icon(Icons.bolt, size: 18), text: 'ការអនុវត្តប្រចាំថ្ងៃ'),
            Tab(icon: Icon(Icons.theater_comedy_outlined, size: 18), text: 'ស្ថានការណ៍គំរូ'),
            Tab(icon: Icon(Icons.psychology_outlined, size: 18), text: 'តេស្ត EQ & IQ'),
            Tab(icon: Icon(Icons.stairs_outlined, size: 18), text: 'ដំណែង SME vs Standard'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildDailyMicroChallengesTab(),
          _buildSituationSimulationTab(),
          _buildStandardAssessmentsTab(),
          _buildCareerLadderMatrixTab(),
        ],
      ),
    );
  }

  // ===========================================================================
  // TAB 1: DAILY MICRO-CHALLENGES
  // ===========================================================================
  Widget _buildDailyMicroChallengesTab() {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: AppColors.primaryGreen.withValues(alpha: 0.08),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.primaryGreen.withValues(alpha: 0.2)),
          ),
          child: const Row(
            children: [
              Icon(Icons.bolt, color: AppColors.restrainedGold, size: 24),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  'Daily Micro-Challenges៖ ការអនុវត្តផ្ទាល់នៅកន្លែងធ្វើការរយៈពេល ៣ ទៅ ៥ នាទី ដើម្បីកសាងទម្លាប់វិជ្ជាជីវៈរឹងមាំជារៀងរាល់ថ្ងៃ។',
                  style: TextStyle(fontSize: 12, color: AppColors.charcoal, height: 1.4),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        ...SimulationRepository.dailyChallenges.map((challenge) {
          final isDone = _completedChallenges.contains(challenge.id);
          return Card(
            elevation: 0,
            margin: const EdgeInsets.only(bottom: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
              side: BorderSide(
                color: isDone ? AppColors.success : const Color(0xFFE5ECE8),
                width: isDone ? 1.5 : 1.0,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                        decoration: BoxDecoration(
                          color: const Color(0xFFEFF5F2),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          challenge.categoryKh,
                          style: const TextStyle(fontSize: 11, color: Color(0xFF0F5A47), fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(Icons.timer_outlined, size: 14, color: AppColors.subtleGray),
                          const SizedBox(width: 4),
                          Text(
                            challenge.targetDuration,
                            style: const TextStyle(fontSize: 12, color: AppColors.subtleGray),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    challenge.titleKh,
                    style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: AppColors.charcoal),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    challenge.descriptionKh,
                    style: const TextStyle(fontSize: 12.5, color: AppColors.charcoal, height: 1.4),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF7FAF8),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(Icons.check_circle_outline, size: 16, color: Color(0xFF0F5A47)),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            challenge.actionStepKh,
                            style: const TextStyle(fontSize: 12, color: AppColors.charcoal, height: 1.4),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        isDone ? '✅ បានអនុវត្តរួចរាល់' : 'មិនទាន់បានអនុវត្ត',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: isDone ? AppColors.success : AppColors.subtleGray,
                        ),
                      ),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: isDone ? AppColors.success : const Color(0xFF0F5A47),
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        ),
                        icon: Icon(isDone ? Icons.check : Icons.task_alt, size: 16),
                        label: Text(isDone ? 'រួចរាល់' : 'កត់ត្រាការអនុវត្ត', style: const TextStyle(fontSize: 12)),
                        onPressed: () {
                          setState(() {
                            if (isDone) {
                              _completedChallenges.remove(challenge.id);
                            } else {
                              _completedChallenges.add(challenge.id);
                            }
                          });
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(isDone ? 'បានដកសកម្មភាពចេញ' : '🎉 ល្អណាស់! អ្នកបានបញ្ចប់សកម្មភាពប្រចាំថ្ងៃមួយទៀតហើយ!'),
                              behavior: SnackBarBehavior.floating,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }),
      ],
    );
  }

  // ===========================================================================
  // TAB 2: SITUATION SIMULATION (PEER ROLE-PLAY)
  // ===========================================================================
  Widget _buildSituationSimulationTab() {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: AppColors.restrainedGold.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.restrainedGold.withValues(alpha: 0.3)),
          ),
          child: const Row(
            children: [
              Icon(Icons.theater_comedy, color: AppColors.restrainedGold, size: 24),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  'Peer Role-Playing & Situation Simulation៖ សាកល្បងឆ្លើយតបក្នុងស្ថានការណ៍លំបាកដូចជា ការចរចាប្រាក់ខែ និងការដោះស្រាយវិវាទជាមួយមិត្តរួមការងារ។',
                  style: TextStyle(fontSize: 12, color: AppColors.charcoal, height: 1.4),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        ...SimulationRepository.scenarios.map((scenario) {
          return Card(
            elevation: 0,
            margin: const EdgeInsets.only(bottom: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
              side: const BorderSide(color: Color(0xFFE5ECE8)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                        decoration: BoxDecoration(
                          color: const Color(0xFFEFF5F2),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          scenario.settingKh,
                          style: const TextStyle(fontSize: 11, color: Color(0xFF0F5A47), fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text('តួនាទី៖ ${scenario.yourRoleKh}', style: const TextStyle(fontSize: 11, color: AppColors.subtleGray)),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    scenario.titleKh,
                    style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: AppColors.charcoal),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    scenario.subtitleKh,
                    style: const TextStyle(fontSize: 12, color: AppColors.subtleGray),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.people_outline, size: 16, color: AppColors.subtleGray),
                          const SizedBox(width: 4),
                          Text('ដៃគូ: ${scenario.peerRoleKh}', style: const TextStyle(fontSize: 11.5, color: AppColors.subtleGray)),
                        ],
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF0F5A47),
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => SimulationDetailScreen(scenario: scenario),
                            ),
                          );
                        },
                        child: const Text('ចូលសាកល្បង', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }),
      ],
    );
  }

  // ===========================================================================
  // TAB 3: INTERACTIVE EQ & IQ ASSESSMENTS
  // ===========================================================================
  Widget _buildStandardAssessmentsTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: AppColors.goldLight.withValues(alpha: 0.35),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColors.restrainedGold),
            ),
            child: const Row(
              children: [
                Icon(Icons.warning_amber_rounded, color: AppColors.restrainedGold),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    'ការវាយតម្លៃទាំងនេះគឺសម្រាប់ការអភិវឌ្ឍជំនាញវិជ្ជាជីវៈ (Educational Development) ផ្អែកលើស្តង់ដារ EQ របស់ Daniel Goleman និងការគិតត្រិះរិះពិចារណា (Critical Thinking)។',
                    style: TextStyle(fontSize: 12, color: AppColors.charcoal, height: 1.4),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          // 1. Workplace EQ Test (Interactive)
          _buildAssessmentCard(
            title: '១. តេស្តស្ទង់កម្រិត EQ នៅកន្លែងធ្វើការ (Workplace Emotional Intelligence)',
            subtitle: 'វាស់ស្ទង់សមត្ថភាពគ្រប់គ្រងសម្ពាធអារម្មណ៍ ការដឹងពីអារម្មណ៍ខ្លួនឯង (Self-Awareness) និងការយល់ចិត្តអ្នកដទៃ (Empathy)។',
            questionsCount: 5,
            durationMinutes: 5,
            icon: Icons.psychology,
            color: const Color(0xFF0F5A47),
            onTap: () => _startEqAssessment(context),
          ),

          const SizedBox(height: 14),

          // 2. Workplace IQ & Critical Reasoning Test (Interactive)
          _buildAssessmentCard(
            title: '២. តេស្ត IQ & ការត្រិះរិះពិចារណាដោះស្រាយបញ្ហា (Problem-Solving & Logical IQ)',
            subtitle: 'លំហាត់អនុវត្តការវិភាគហេតុផល (Deductive Logic) ស្វែងរកឫសគល់នៃបញ្ហា (5 Whys) និងការគណនាតួលេខសម្រេចចិត្ត។',
            questionsCount: 5,
            durationMinutes: 8,
            icon: Icons.lightbulb_outline,
            color: const Color(0xFF1E88E5),
            onTap: () => _startIqAssessment(context),
          ),

          const SizedBox(height: 14),

          // 3. Leadership Readiness Test (Interactive)
          _buildAssessmentCard(
            title: '៣. តេស្តវាយតម្លៃការត្រៀមខ្លួនដឹកនាំ (Leadership & Promotion Readiness)',
            subtitle: 'ពិនិត្យមើលការត្រៀមខ្លួនសម្រាប់តួនាទីជា Team Leader, Supervisor ឬ Manager ក្នុងការចាត់ចែងការងារ និងផ្តល់ Feedback។',
            questionsCount: 5,
            durationMinutes: 6,
            icon: Icons.groups_outlined,
            color: AppColors.restrainedGold,
            onTap: () => _startLeadershipAssessment(context),
          ),
        ],
      ),
    );
  }

  Widget _buildAssessmentCard({
    required String title,
    required String subtitle,
    required int questionsCount,
    required int durationMinutes,
    required IconData icon,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFE5ECE8)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.015),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: color.withValues(alpha: 0.12),
                child: Icon(icon, color: color),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(fontSize: 14.5, fontWeight: FontWeight.bold, color: AppColors.charcoal),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            subtitle,
            style: const TextStyle(fontSize: 12.5, color: AppColors.subtleGray, height: 1.4),
          ),
          const SizedBox(height: 14),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.timer_outlined, size: 15, color: AppColors.subtleGray),
                  const SizedBox(width: 4),
                  Text('$durationMinutes នាទី', style: const TextStyle(fontSize: 12, color: AppColors.subtleGray)),
                  const SizedBox(width: 14),
                  const Icon(Icons.quiz_outlined, size: 15, color: AppColors.subtleGray),
                  const SizedBox(width: 4),
                  Text('$questionsCount សំណួរ', style: const TextStyle(fontSize: 12, color: AppColors.subtleGray)),
                ],
              ),
              ElevatedButton.icon(
                onPressed: onTap,
                style: ElevatedButton.styleFrom(
                  backgroundColor: color,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                icon: const Icon(Icons.play_arrow, size: 16),
                label: const Text('ចាប់ផ្ដើមតេស្ត', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // ===========================================================================
  // INTERACTIVE TEST DIALOGS (EQ, IQ, LEADERSHIP)
  // ===========================================================================
  void _startEqAssessment(BuildContext context) {
    final questions = [
      {
        'q': '១. នៅពេលអតិថិជន VIP ទូរស័ព្ទមកស្រែកបន្ទោសយ៉ាងខឹងសម្បារ តើអ្នកគួរឆ្លើយតបបែបណា?',
        'options': [
          'A. ស្រែកតបតវិញដើម្បីការពារកិត្តិយសខ្លួនឯង។',
          'B. ដកដង្ហើមវែងៗ ស្ដាប់ដោយការយល់ចិត្ត ទទួលស្គាល់ការខកចិត្តរបស់គេ រួចបង្វែរទៅរកដំណោះស្រាយ។',
          'C. បិទទូរស័ព្ទចោលភ្លាមៗ។',
        ],
        'correct': 1,
        'points': 20,
      },
      {
        'q': '២. នៅពេលប្រធានរិះគន់ការងាររបស់អ្នកថាមានកំហុសច្រើន តើប្រតិកម្មវិជ្ជាជីវៈបំផុតគឺជាអ្វី?',
        'options': [
          'A. ស្ងប់អារម្មណ៍ ថ្លែងអំណរគុណចំពោះមតិកែលម្អ និងសួរបញ្ជាក់ចំណុចត្រូវកែតម្រូវ។',
          'B. ដោះសាររកលេសភ្លាមៗថាដោយសារកុំព្យូទ័រយឺត។',
          'C. ខឹងហើយឈប់និយាយស្តីជាមួយប្រធាន។',
        ],
        'correct': 0,
        'points': 20,
      },
      {
        'q': '៣. មិត្តរួមការងារម្នាក់មកត្អូញត្អែរថាគាត់ហត់នឿយ និងមានសម្ពាធច្រើន តើអ្នកគួរធ្វើបែបណា?',
        'options': [
          'A. និយាយកាត់ភ្លាមថា "ប៉ុណ្ណឹងមិនទាន់ហត់ទេ ខ្ញុំធ្វើការច្រើនជាងអ្នកឯងទៅទៀត!"',
          'B. ស្ដាប់ដោយយកចិត្តទុកដាក់ ឆ្លុះបញ្ចាំងការយល់ចិត្ត និងសួរថាតើអាចជួយសម្រាលចំណុចណាខ្លះ។',
          'C. ប្រាប់គាត់ឱ្យលាលែងពីការងារភ្លាមទៅ។',
        ],
        'correct': 1,
        'points': 20,
      },
      {
        'q': '៤. ក្នុងពេលប្រជុំ មានការខ្វែងគំនិតគ្នាយ៉ាងខ្លាំងរវាងផ្នែកលក់ និងទីផ្សារ តើអ្នកគួរធ្វើដូចម្តេច?',
        'options': [
          'A. ជួយស្រែកគាំទ្រភាគីណាដែលជាមិត្តភក្តិជិតស្និទ្ធ។',
          'B. ស្វែងរកចំណុចព្រួយបារម្ភរួម និងជួយសង្ខេបផលប្រយោជន៍ស្ថាប័នដើម្បីរកដំណោះស្រាយកណ្តាល។',
          'C. អង្គុយចុចទូរស័ព្ទមិនខ្វល់ខ្វាយ។',
        ],
        'correct': 1,
        'points': 20,
      },
      {
        'q': '៥. សមាជិកក្រុមម្នាក់ទៀតបានយកស្នាដៃគម្រោងរបស់អ្នកទៅរាយការណ៍ថាជារបស់គាត់ តើអ្នកគួរដោះស្រាយបែបណា?',
        'options': [
          'A. ទៅឈ្លោះប្រកែកគ្នាជាសាធារណៈនៅកណ្តាលបន្ទប់ធ្វើការ។',
          'B. ជួបសន្ទនាឯកជនជាមួយគាត់ដោយត្រង់ទៅត្រង់មក និងផ្ញើរបាយការណ៍សង្ខេបផ្លូវការដែលមានភស្តុតាងច្បាស់លាស់។',
          'C. ស្ងៀមស្ងាត់ហើយទ្រាំឈឺចាប់តែម្នាក់ឯង។',
        ],
        'correct': 1,
        'points': 20,
      },
    ];

    _runAssessmentModal(context, title: 'តេស្តកម្រិត EQ នៅកន្លែងធ្វើការ', questions: questions, type: 'EQ');
  }

  void _startIqAssessment(BuildContext context) {
    final questions = [
      {
        'q': '១. (Logic & Deductive) ប្រសិនបើគម្រោង A ត្រូវបញ្ចប់មុនគម្រោង B ហើយគម្រោង C ត្រូវចាប់ផ្តើមក្រោយគម្រោង B បញ្ចប់ តើគម្រោងណាត្រូវធ្វើដំបូងគេ?',
        'options': [
          'A. គម្រោង B',
          'B. គម្រោង A',
          'C. គម្រោង C',
        ],
        'correct': 1,
        'points': 20,
      },
      {
        'q': '២. (Root Cause 5 Whys) ទំនិញដឹកខុសកូដឱ្យអតិថិជនរៀងរាល់សប្តាហ៍។ តើការដោះស្រាយបែបឫសគល់ (Root Cause) ពិតប្រាកដគឺជាអ្វី?',
        'options': [
          'A. ផាកពិន័យអ្នកបើកបរឡានដឹកទំនិញ។',
          'B. ជួសជុលកុំព្យូទ័រគណនេយ្យ បង្កើតទម្រង់វិក្កយបត្រស្វ័យប្រវត្តមាន Barcode និងបណ្តុះបណ្តាលបុគ្គលិកឃ្លាំង។',
          'C. ជួលមនុស្សម្នាក់ទៀតមកចាំផ្ទៀងផ្ទាត់រាល់ល្ងាច។',
        ],
        'correct': 1,
        'points': 20,
      },
      {
        'q': '៣. (Business ROI IQ) ក្រុមហ៊ុនចំណាយ \$1,000 លើការផ្សាយពាណិជ្ជកម្ម ហើយទទួលបានអតិថិជន ២០ នាក់ ដែលម្នាក់ៗចំណាយ \$100។ តើអត្រាចំណេញលើការផ្សាយពាណិជ្ជកម្ម (ROI) ស្មើនឹងប៉ុន្មាន?',
        'options': [
          'A. 50%',
          'B. 100% (ចំណូល \$2,000 ដកថ្លៃដើម \$1,000 = ចំណេញ \$1,000)',
          'C. 200%',
        ],
        'correct': 1,
        'points': 20,
      },
      {
        'q': '៤. (Workplace Priority Matrix) ការងារបន្ទាន់តែមិនសំខាន់ (Urgent but Not Important) តាមក្បួន Eisenhower Matrix តើអ្នកគួរធ្វើបែបណា?',
        'options': [
          'A. ឱបធ្វើខ្លួនឯងភ្លាមៗដល់យប់ជ្រៅ។',
          'B. ផ្ទេរភារកិច្ចឱ្យសមាជិកក្រុមធ្វើ (Delegate)។',
          'C. លុបចោលទាំងស្រុង។',
        ],
        'correct': 1,
        'points': 20,
      },
      {
        'q': '៥. (Problem-Solving) ប្រសិនបើអតិថិជនត្អូញត្អែរថាកម្មវិធីទូរស័ព្ទគាំងពេលបញ្ចូលរូបថត តើជំហានដំបូងនៃអ្នកដោះស្រាយបញ្ហាគឺជាអ្វី?',
        'options': [
          'A. បន្ទោសទូរស័ព្ទរបស់អតិថិជនថាចាស់ពេក។',
          'B. សុំរូបភាពកំហុស (Screenshots/Logs) សាកល្បង Replicate បញ្ហានៅលើម៉ាស៊ីនផ្ទាល់ និងកត់ត្រាទំហំរូបភាពដែលគាំង។',
          'C. សរសេរកូដកម្មវិធីឡើងវិញទាំងមូលពីដំបូង។',
        ],
        'correct': 1,
        'points': 20,
      },
    ];

    _runAssessmentModal(context, title: 'តេស្ត IQ & ការត្រិះរិះពិចារណាដោះស្រាយបញ្ហា', questions: questions, type: 'IQ');
  }

  void _startLeadershipAssessment(BuildContext context) {
    final questions = [
      {
        'q': '១. (Delegation) សមាជិកក្រុមថ្មីទើបចូល ២ សប្តាហ៍ តើកម្រិតផ្ទេរភារកិច្ចណាដែលសមស្រប?',
        'options': [
          'A. ទុកឱ្យគាត់សម្រេចចិត្តដោយសេរី ១០០% ដោយមិនបាច់សួរ។',
          'B. ឱ្យគាត់ស្រាវជ្រាវ ស្នើជម្រើសដំណោះស្រាយ និងសុំការយល់ព្រមពីអ្នកសិនមុនធ្វើ។',
          'C. មិនឱ្យគាត់ធ្វើអ្វីទាំងអស់។',
        ],
        'correct': 1,
        'points': 20,
      },
      {
        'q': '២. (Feedback) ក្បួនមាសនៃការផ្តល់ Feedback វិជ្ជាជីវៈគឺជាអ្វី?',
        'options': [
          'A. សរសើរជាសាធារណៈ (Praise in Public) និងកែលម្អជាឯកជន (Criticize in Private) តាមទម្រង់ SBI។',
          'B. ស្រែកស្តីបន្ទោសឱ្យអាម៉ាស់មុខចំពោះមុខក្រុមទាំងមូល។',
          'C. មិនដែលផ្តល់ Feedback ទេ ទុកឱ្យដឹងខ្លួនឯង។',
        ],
        'correct': 0,
        'points': 20,
      },
      {
        'q': '៣. (Meeting Management) ការប្រជុំ Stand-up ១៥ នាទីគួរផ្តោតលើសំណួរអ្វីខ្លះ?',
        'options': [
          'A. ជជែកវែកញែករឿងរ៉ាវនយោបាយផ្ទាល់ខ្លួន។',
          'B. ១. បានធ្វើអ្វីម្សិលមិញ? ២. ថ្ងៃនេះធ្វើអ្វី? ៣. ជួបបញ្ហារាំងស្ទះ (Blockers) អ្វីខ្លះ?',
          'C. ស្តាប់មេដឹកនាំនិយាយម្នាក់ឯងពេញ ១ ម៉ោង។',
        ],
        'correct': 1,
        'points': 20,
      },
      {
        'q': '៤. (Conflict Mediation) សមាជិកគន្លឹះពីរនាក់ឈ្លោះគ្នាមិននិយាយរកគ្នា តើជំហានដំបូងគឺអ្វី?',
        'options': [
          'A. ដេញភាគីណាដែលនិយាយតិចជាងគេចេញពីក្រុមហ៊ុន។',
          'B. ជួបសន្ទនាដាច់ដោយឡែកពីគ្នាម្នាក់ម្តង (1-on-1) ដោយស្ងប់ស្ងាត់ ដើម្បីស្តាប់ទុក្ខកង្វល់ពិតប្រាកដ។',
          'C. បង្ខំឱ្យពួកគេឱបគ្នាសុំទោសចំពោះមុខបុគ្គលិកទាំងអស់។',
        ],
        'correct': 1,
        'points': 20,
      },
      {
        'q': '៥. (Culture & Talent) យុទ្ធសាស្ត្ររក្សាបុគ្គលិកឆ្នើមក្នុងក្រុមហ៊ុន SME ដ៏មានប្រសិទ្ធភាពគឺជាអ្វី?',
        'options': [
          'A. គំរាមកំហែងកុំឱ្យគេចាកចេញ។',
          'B. ផ្តល់សិទ្ធិសម្រេចចិត្តលើគម្រោង ឱកាសរៀនសូត្រលឿន និងកញ្ចប់ចែករំលែកផលចំណេញ (Profit Sharing)។',
          'C. ធ្វើមិនដឹងមិនឮព្រោះគិតថាមនុស្សងាយស្រួលរកជំនួសណាស់។',
        ],
        'correct': 1,
        'points': 20,
      },
    ];

    _runAssessmentModal(context, title: 'តេស្តវាយតម្លៃការត្រៀមខ្លួនដឹកនាំ (Leadership)', questions: questions, type: 'Leadership');
  }

  void _runAssessmentModal(BuildContext context, {
    required String title,
    required List<Map<String, dynamic>> questions,
    required String type,
  }) {
    final Map<int, int> selectedAnswers = {};
    bool isCompleted = false;
    int totalScore = 0;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (ctx) => StatefulBuilder(
        builder: (context, setModalState) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.85,
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    width: 40,
                    height: 4,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE0E0E0),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.charcoal),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () => Navigator.pop(ctx),
                    ),
                  ],
                ),
                const Divider(),

                if (!isCompleted) ...[
                  Expanded(
                    child: ListView.separated(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      itemCount: questions.length,
                      separatorBuilder: (_, __) => const SizedBox(height: 16),
                      itemBuilder: (context, qIndex) {
                        final q = questions[qIndex];
                        final options = q['options'] as List<String>;
                        final chosen = selectedAnswers[qIndex];

                        return Container(
                          padding: const EdgeInsets.all(14),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF9FBF9),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: const Color(0xFFE5ECE8)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                q['q'] as String,
                                style: const TextStyle(fontSize: 13.5, fontWeight: FontWeight.bold, height: 1.4),
                              ),
                              const SizedBox(height: 10),
                              ...List.generate(options.length, (optIndex) {
                                final isOptChosen = chosen == optIndex;
                                return Container(
                                  margin: const EdgeInsets.only(bottom: 6),
                                  decoration: BoxDecoration(
                                    color: isOptChosen ? const Color(0xFFEFF5F2) : Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: isOptChosen ? const Color(0xFF0F5A47) : const Color(0xFFE5ECE8),
                                      width: isOptChosen ? 1.4 : 1.0,
                                    ),
                                  ),
                                  child: RadioListTile<int>(
                                    value: optIndex,
                                    groupValue: chosen,
                                    activeColor: const Color(0xFF0F5A47),
                                    title: Text(options[optIndex], style: const TextStyle(fontSize: 12.5)),
                                    onChanged: (val) {
                                      setModalState(() {
                                        selectedAnswers[qIndex] = val!;
                                      });
                                    },
                                  ),
                                );
                              }),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF0F5A47),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                      onPressed: selectedAnswers.length < questions.length
                          ? null
                          : () {
                              int score = 0;
                              for (int i = 0; i < questions.length; i++) {
                                if (selectedAnswers[i] == questions[i]['correct']) {
                                  score += (questions[i]['points'] as int);
                                }
                              }
                              setModalState(() {
                                totalScore = score;
                                isCompleted = true;
                              });
                            },
                      child: Text(
                        selectedAnswers.length < questions.length
                            ? 'សូមឆ្លើយឱ្យគ្រប់សំណួរ (${selectedAnswers.length}/${questions.length})'
                            : 'ផ្ទៀងផ្ទាត់ និងគណនាពិន្ទុ (Submit & Grade)',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],

                // Results View
                if (isCompleted) ...[
                  Expanded(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: totalScore >= 80 ? const Color(0xFFEFF5F2) : const Color(0xFFFFF3E0),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              totalScore >= 80 ? Icons.workspace_premium : Icons.stars,
                              color: totalScore >= 80 ? const Color(0xFF0F5A47) : const Color(0xFFE65100),
                              size: 56,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'ពិន្ទុរបស់អ្នក៖ $totalScore / ១០០',
                            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: AppColors.charcoal),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            totalScore >= 80
                                ? '🎉 អបអរសាទរ! កម្រិត $type របស់អ្នកខ្ពស់ខ្លាំង និងសក្តិសមជាអ្នកដឹកនាំ!'
                                : '👍 លទ្ធផលល្អបង្គួរ! សូមបន្តអានមេរៀនបន្ថែមដើម្បីពង្រឹងជំនាញ $type។',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 13.5,
                              color: totalScore >= 80 ? const Color(0xFF0F5A47) : const Color(0xFFE65100),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 24),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF0F5A47),
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                            ),
                            onPressed: () => Navigator.pop(ctx),
                            child: const Text('បញ្ចប់ និងត្រឡប់ក្រោយ'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ],
            ),
          );
        },
      ),
    );
  }

  // ===========================================================================
  // TAB 4: CAREER LADDER MATRIX (SME VS STANDARD CORPORATE)
  // ===========================================================================
  Widget _buildCareerLadderMatrixTab() {
    final List<Map<String, dynamic>> matrixData = [
      {
        'level': '១. Intern (កម្មសិក្សាការី)',
        'sme': '• ធ្វើការងារចម្រុះច្រើនផ្នែក (Generalist Multi-tasking)\n• រៀនផ្ទាល់ពីស្ថាបនិក ឬម្ចាស់អាជីវកម្ម\n• ទាមទារភាពរហ័សរហួន និងម្ចាស់ការខ្ពស់',
        'standard': '• កម្មវិធីបណ្តុះបណ្តាលច្បាស់លាស់ (Structured Training)\n• មាន Mentor ណែនាំផ្ទាល់ខ្លួន\n• ផ្តោតលើការអនុវត្តការងារជំនាញតែមួយជាក់លាក់',
        'eqIq': 'EQ 40% • IQ 60% (រៀនសូត្រលឿន & ម៉ត់ចត់)',
      },
      {
        'level': '២. Junior / Officer (បុគ្គលិកដំបូង / មន្ត្រី)',
        'sme': '• ទទួលខុសត្រូវលើគម្រោងទាំងមូល\n• ទាំងលក់ ទាំងសេវាកម្មអតិថិជន ទាំងរៀបចំឯកសារ\n• សម្រេចចិត្តលឿន គ្មាននីតិវិធីស្មុគស្មាញ',
        'standard': '• អនុវត្តយ៉ាងម៉ឺងម៉ាត់តាមសៀវភៅ SOP ក្រុមហ៊ុន\n• សហការឆ្លងផ្នែក (Cross-Department Collaboration)\n• រាយការណ៍លទ្ធផលប្រចាំសប្តាហ៍តាមប្រព័ន្ធ ERP',
        'eqIq': 'EQ 50% • IQ 50% (ទំនាក់ទំនង & ជំនាញឯកទេស)',
      },
      {
        'level': '៣. Senior / Specialist (បុគ្គលិកជាន់ខ្ពស់ / ជំនាញការ)',
        'sme': '• ជាសសរទ្រូងនៃប្រតិបត្តិការប្រចាំថ្ងៃ\n• ដោះស្រាយបញ្ហាបន្ទាន់ដោយស្វ័យប្រវត្តគ្មានអ្នកណែនាំ\n• ជួយបង្រៀនបុគ្គលិកថ្មីៗ',
        'standard': '• អ្នកជំនាញស៊ីជម្រៅក្នុងវិស័យ (Subject Matter Expert)\n• បង្កើតស្តង់ដារ និងដំណើរការការងារថ្មីៗ\n• ណែនាំកូនចៅតាមកម្មវិធី Coaching',
        'eqIq': 'EQ 55% • IQ 45% (ភាពចាស់ទុំ & ដោះស្រាយវិវាទ)',
      },
      {
        'level': '៤. Team Leader (ប្រធានក្រុម)',
        'sme': '• ដឹកនាំក្រុមតូច ៣ ទៅ ៨ នាក់\n• Player-Coach (ទាំងធ្វើការងារខ្លួនឯង ទាំងមើលការខុសត្រូវក្រុម)\n• តាមដានលទ្ធផលលក់ និងការពេញចិត្តរបស់អតិថិជន',
        'standard': '• គ្រប់គ្រង Workload និងបែងចែកភារកិច្ចតាម Sprint\n• ដឹកនាំការប្រជុំ Stand-up ១៥ នាទីប្រចាំថ្ងៃ\n• វាយតម្លៃសមិទ្ធផលក្រុមតាម KPIs',
        'eqIq': 'EQ 65% • IQ 35% (ការផ្ទេរភារកិច្ច & លើកទឹកចិត្ត)',
      },
      {
        'level': '៥. Supervisor (អ្នកគ្រប់គ្រងផ្ទាល់)',
        'sme': '• មើលការខុសត្រូវសាខា ឬប្រតិបត្តិការទូទៅ\n• គ្រប់គ្រងលំហូរសាច់ប្រាក់ និងស្តុកទំនិញប្រចាំថ្ងៃ\n• ដោះស្រាយបញ្ហាអតិថិជនខឹងច្រឡោត',
        'standard': '• ត្រួតពិនិត្យការអនុវត្តតាមបទបញ្ជាផ្ទៃក្នុង និងច្បាប់\n• វាយតម្លៃការកែលម្អការងារ (Performance Improvement Plans)\n• រៀបចំកាលវិភាគការងារជាផ្លូវការ',
        'eqIq': 'EQ 70% • IQ 30% (ការសម្រុះសម្រួល & យុត្តិធម៌)',
      },
      {
        'level': '៦. Manager (អ្នកគ្រប់គ្រង / ប្រធានផ្នែក)',
        'sme': '• ធ្វើការផ្ទាល់ជាមួយស្ថាបនិក (Founder Right-Hand)\n• រៀបចំយុទ្ធសាស្ត្រលក់ ទីផ្សារ និងជ្រើសរើសមនុស្សផ្ទាល់\n• គ្រប់គ្រងការចំណាយ និងទប់ស្កាត់ការខាតបង់',
        'standard': '• គ្រប់គ្រងថវិកានាយកដ្ឋាន (Department Budgeting)\n• រៀបចំការសន្ទនាស្មុគស្មាញ និងដោះស្រាយនយោបាយស្ថាប័ន\n• សម្របសម្រួលជាមួយ Director និង Board',
        'eqIq': 'EQ 75% • IQ 25% (ភាពជាអ្នកដឹកនាំ & ការចរចា)',
      },
      {
        'level': '៧. Head of Department (ប្រធាននាយកដ្ឋាន)',
        'sme': '• ដឹកនាំផ្នែកធំទាំងមូល (ឧ. Head of Operations & Sales)\n• កែសម្រួលអាជីវកម្មឱ្យត្រូវនឹងការប្រែប្រួលទីផ្សារ\n• កសាងប្រព័ន្ធស្វ័យប្រវត្ត SOPs',
        'standard': '• ដឹកនាំ Manager ជាច្រើននាក់ក្រោមបង្គាប់\n• ទទួលខុសត្រូវចំពោះ P&L (ចំណូល-ចំណាយ) នៃនាយកដ្ឋាន\n• រៀបចំ OKRs ប្រចាំឆ្នាំស្របតាមទិសដៅសាជីវកម្ម',
        'eqIq': 'EQ 80% • IQ 20% (យុទ្ធសាស្ត្រមនុស្ស & ការទូត)',
      },
      {
        'level': '៨. Director (នាយកប្រតិបត្តិ)',
        'sme': '• សហការីស្នូល ឬដៃគូវិនិយោគ (Partner)\n• ដឹកនាំការពង្រីកសាខាថ្មី ឬការបង្កើតផលិតផលថ្មី\n• ចរចាជាមួយដៃគូផ្គត់ផ្គង់ធំៗ និងធនាគារ',
        'standard': '• ចូលរួមក្នុងគណៈកម្មាធិការប្រតិបត្តិ (Executive Committee)\n• កំណត់ផែនការយុទ្ធសាស្ត្រ ៣ ទៅ ៥ ឆ្នាំ\n• គ្រប់គ្រងហានិភ័យស្ថាប័ន (Enterprise Risk Management)',
        'eqIq': 'EQ 85% • IQ 15% (ការបញ្ចុះបញ្ចូល & ចក្ខុវិស័យ)',
      },
      {
        'level': '៩. Executive / C-Suite (CEO, COO, CFO)',
        'sme': '• ម្ចាស់ ឬអ្នកចាត់ចែងទូទៅដែលមានភាគហ៊ុន\n• ធានាថាក្រុមហ៊ុនមានសាច់ប្រាក់បម្រុង (Runway) លើសពី ៦ ខែ\n• បង្កើតវប្បធម៌ស្ថាប័នដែលរក្សាមនុស្សឆ្នើម',
        'standard': '• ទទួលខុសត្រូវចំពោះក្រុមប្រឹក្សាភិបាល (Board of Directors)\n• ដឹកនាំសាជីវកម្មទំហំរាប់ពាន់នាក់\n• គ្រប់គ្រងទំនាក់ទំនងជាមួយអ្នកវិនិយោគ និងសាធារណជន',
        'eqIq': 'EQ 90% • IQ 10% (ការដឹកនាំការផ្លាស់ប្តូរធំៗ)',
      },
      {
        'level': '១០. Founder (ស្ថាបនិក / ម្ចាស់អាជីវកម្ម)',
        'sme': '• អ្នកបង្កើតអាជីវកម្មពីបាតដៃទទេ (Start from Scratch)\n• រៀនចាកចេញពី "អ្នកធ្វើការ" ទៅជា "អ្នកដឹកនាំ" (Working ON business)\n• បង្កើត SOPs ដើម្បីកុំឱ្យអាជីវកម្មដួលពេលខ្លួនឈឺ',
        'standard': '• ប្រធានក្រុមប្រឹក្សាភិបាល (Chairman / Board Chair)\n• ស្វែងរកទុនវិនិយោគសកល (Series A, B, IPO)\n• កំណត់ទស្សនវិស័យរយៈពេល ១០ ទៅ ២០ ឆ្នាំទៅមុខ',
        'eqIq': 'EQ 90% • IQ 10% (ឆន្ទៈតស៊ូ អំណត់ & ភាពជាម្ចាស់)',
      },
    ];

    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        // Intro Banner
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xFF0F5A47), Color(0xFF1B6A55)],
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Icon(Icons.stairs, color: AppColors.restrainedGold, size: 24),
                  SizedBox(width: 8),
                  Text(
                    'ផែនទីតំណែងការងារ ១០ កម្រិត (SME vs Standard)',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              Text(
                'ស្វែងយល់ពីភាពខុសគ្នានៃការរំពឹងទុក ភារកិច្ច និងសមាមាត្រ EQ/IQ រវាងសហគ្រាស SME និងសាជីវកម្មស្តង់ដារធំៗ។',
                style: TextStyle(color: Colors.white.withValues(alpha: 0.85), fontSize: 12, height: 1.4),
              ),
            ],
          ),
        ),

        const SizedBox(height: 16),

        ...matrixData.map((item) => Container(
          margin: const EdgeInsets.only(bottom: 14),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: const Color(0xFFE5ECE8)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.015),
                blurRadius: 8,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              initiallyExpanded: item['level'].toString().startsWith('១.'),
              leading: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color(0xFFEFF5F2),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(Icons.workspace_premium, color: Color(0xFF0F5A47), size: 20),
              ),
              title: Text(
                item['level'] as String,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: AppColors.charcoal),
              ),
              subtitle: Text(
                'សមាមាត្រដែលត្រូវការ៖ ${item['eqIq']}',
                style: const TextStyle(fontSize: 11, color: Color(0xFF0F5A47), fontWeight: FontWeight.bold),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Column(
                    children: [
                      // SME Column
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFFDF5),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColors.restrainedGold.withValues(alpha: 0.5)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                Icon(Icons.storefront, color: AppColors.restrainedGold, size: 16),
                                SizedBox(width: 6),
                                Text(
                                  'ក្នុងសហគ្រាសធុនតូច & មធ្យម (SME Company):',
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.5, color: Color(0xFF7A5E0B)),
                                ),
                              ],
                            ),
                            const SizedBox(height: 6),
                            Text(
                              item['sme'] as String,
                              style: const TextStyle(fontSize: 12, height: 1.5, color: Color(0xFF333333)),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),

                      // Standard Corporate Column
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF7FAF8),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: const Color(0xFFCCE2D7)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                Icon(Icons.apartment, color: Color(0xFF0F5A47), size: 16),
                                SizedBox(width: 6),
                                Text(
                                  'ក្នុងសាជីវកម្មស្តង់ដារធំៗ (Standard Corporate):',
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.5, color: Color(0xFF0F5A47)),
                                ),
                              ],
                            ),
                            const SizedBox(height: 6),
                            Text(
                              item['standard'] as String,
                              style: const TextStyle(fontSize: 12, height: 1.5, color: Color(0xFF333333)),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )),
      ],
    );
  }
}
