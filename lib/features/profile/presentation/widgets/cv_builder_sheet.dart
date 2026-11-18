import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lerng_domnaeng/core/services/ai_agent_service.dart';
import 'package:lerng_domnaeng/core/services/agentic_cv_workflow_service.dart';
import 'package:lerng_domnaeng/core/services/telegram_alert_service.dart';
import 'package:lerng_domnaeng/core/theme/app_theme.dart';
import '../../domain/profile_models.dart';
import '../../domain/cv_templates_data.dart';

class CvBuilderSheet extends ConsumerStatefulWidget {
  final ExtendedUserProfile userProfile;

  const CvBuilderSheet({super.key, required this.userProfile});

  @override
  ConsumerState<CvBuilderSheet> createState() => _CvBuilderSheetState();
}

class _CvBuilderSheetState extends ConsumerState<CvBuilderSheet> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late TextEditingController _nameController;
  late TextEditingController _titleController;
  late TextEditingController _summaryController;
  late TextEditingController _experienceController;
  late TextEditingController _skillsController;
  late TextEditingController _educationController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _nameController = TextEditingController(text: widget.userProfile.displayName);
    _titleController = TextEditingController(text: '${widget.userProfile.careerLevel} — ${widget.userProfile.department}');
    _summaryController = TextEditingController(
      text: widget.userProfile.bio.isNotEmpty
          ? widget.userProfile.bio
          : 'អ្នកជំនាញដែលមានការប្តេជ្ញាចិត្តខ្ពស់ក្នុងការជំរុញទិន្នផលការងារ បង្កើនចំណូលអាជីវកម្ម និងពង្រឹងកិច្ចសហការក្នុងក្រុមការងារ។',
    );
    _experienceController = TextEditingController(
      text:
          '• សម្រេចបានកំណើនលក់ ២៥% ក្នុងរយៈពេល ៦ ខែ (X) តាមរយៈការរៀបចំយុទ្ធសាស្ត្រទីផ្សារឌីជីថលថ្មី (Z) ដែលបង្កើតចំណូលបន្ថែម \$15,000 (Y)។\n\n'
          '• កាត់បន្ថយពេលវេលាដំណើរការឯកសារ ៤០% (X) តាមរយៈការបង្កើតទម្រង់ស្វ័យប្រវត្តលើ Google Sheets & Automation Tools (Z) សន្សំបាន ៥ ម៉ោងក្នុងមួយសប្តាហ៍ (Y)។\n\n'
          '• ដឹកនាំ និងបណ្តុះបណ្តាលសមាជិកក្រុមថ្មី ៣ នាក់ (Z) ឱ្យសម្រេច KPI លើសពី ៩០% ក្នុងខែដំបូងនៃការសាកល្បងការងារ (X)។',
    );
    _skillsController = TextEditingController(
      text: widget.userProfile.skills.join(', '),
    );
    _educationController = TextEditingController(
      text: widget.userProfile.education.isNotEmpty
          ? widget.userProfile.education
          : 'បរិញ្ញាបត្រ គ្រប់គ្រងពាណិជ្ជកម្ម (BBA) — សាកលវិទ្យាល័យបៀលប្រាយ (BBU)',
    );
  }

  void _applyTemplate(CvSkillTemplate template) {
    setState(() {
      _titleController.text = '${template.titleKh} (${template.titleEn})';
      _summaryController.text = template.summary;
      _skillsController.text = template.skills.join(', ');
      _experienceController.text = template.achievementsXyz;
      _educationController.text = template.education;
    });
    _tabController.animateTo(1);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(' បានបញ្ចូលគំរូ «${template.titleKh}» ទៅក្នុង CV Builder ជោគជ័យ!'),
        backgroundColor: const Color(0xFF6A1B9A),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    _nameController.dispose();
    _titleController.dispose();
    _summaryController.dispose();
    _experienceController.dispose();
    _skillsController.dispose();
    _educationController.dispose();
    super.dispose();
  }

  String _generateCvText() {
    return '''
======================================================
${_nameController.text.toUpperCase()}
${_titleController.text}
Email: ${widget.userProfile.email} | Phone: ${widget.userProfile.phone}
======================================================

[ EXECUTIVE SUMMARY ]
${_summaryController.text}

[ CORE SKILLS & COMPETENCIES ]
${_skillsController.text}

[ PROFESSIONAL EXPERIENCE & ACHIEVEMENTS (GOOGLE XYZ FORMULA) ]
${_experienceController.text}

[ EDUCATION & QUALIFICATIONS ]
${_educationController.text}
======================================================
Generated via Lerng Domnaeng Career Development Platform
''';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        children: [
          // Drag handle
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xFF6A1B9A).withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(Icons.description, color: Color(0xFF6A1B9A), size: 24),
                ),
                const SizedBox(width: 14),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ក្បួនសរសេរ CV & ឧបករណ៍បង្កើត CV',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.charcoal),
                      ),
                      Text(
                        'Winning Executive CV Masterclass & Generator',
                        style: TextStyle(fontSize: 12, color: AppColors.subtleGray),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.close),
                ),
              ],
            ),
          ),
          TabBar(
            controller: _tabController,
            labelColor: const Color(0xFF6A1B9A),
            unselectedLabelColor: AppColors.subtleGray,
            indicatorColor: const Color(0xFF6A1B9A),
            indicatorWeight: 3,
            tabs: const [
              Tab(text: 'ក្បួនសរសេរ CV (Masterclass)'),
              Tab(text: 'បង្កើត CV អន្តរកម្ម (CV Generator)'),
              Tab(text: 'គំរូ CV ទាំង ១០ ជំនាញ (Templates)'),
            ],
          ),
          const Divider(height: 1),

          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // Tab 1: Masterclass Guide
                _buildGuideTab(),

                // Tab 2: Interactive Builder & Preview
                _buildBuilderTab(),

                // Tab 3: 10 Industry CV Templates
                _buildTemplatesTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGuideTab() {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        // Google XYZ Formula Highlight
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xFF4A148C), Color(0xFF6A1B9A)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: AppColors.restrainedGold,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Text(
                      'រូបមន្ត Google XYZ Formula',
                      style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.black87),
                    ),
                  ),
                  const Spacer(),
                  const Icon(Icons.auto_awesome, color: Colors.white, size: 20),
                ],
              ),
              const SizedBox(height: 12),
              const Text(
                '«Accomplished [X] as measured by [Y] by doing [Z]»',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const SizedBox(height: 6),
              const Text(
                'សម្រេចបានលទ្ធផល [X] វាស់វែងដោយទិន្នន័យ [Y] តាមរយៈការធ្វើសកម្មភាព [Z]។\nកុំសរសេរត្រឹមតែតួនាទី (Duty) ត្រូវសរសេរពីសមិទ្ធផល (Achievement)។',
                style: TextStyle(fontSize: 12, color: Colors.white70, height: 1.4),
              ),
            ],
          ),
        ),

        const SizedBox(height: 20),

        // Good vs Bad Examples
        const Text(
          'ការប្រៀបធៀបរបៀបសរសេរ (Bad vs Good Example)',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: AppColors.charcoal),
        ),
        const SizedBox(height: 10),
        _buildComparisonCard(
          badText: '❌ សរសេរអន់៖ ទទួលបន្ទុកគ្រប់គ្រងទំព័រហ្វេសប៊ុក និងបង្ហោះរូបភាពប្រចាំថ្ងៃ។',
          goodText: ' ផ្កាយ ៥៖ បង្កើនការចូលមើល (Engagement) ៤៥% លើទំព័រ Facebook តាមរយៈការផលិតវីដេអូខ្លី ១៥ ភាគ ដែលទាក់ទាញអតិថិជនថ្មីបាន ២៣០ នាក់។',
        ),
        _buildComparisonCard(
          badText: '❌ សរសេរអន់៖ ជួយរៀបចំរបាយការណ៍គណនេយ្យជូនប្រធានផ្នែក។',
          goodText: ' ផ្កាយ ៥៖ កាត់បន្ថយកំហុសទិន្នន័យគណនេយ្យ ៨០% តាមរយៈការបង្កើតប្រព័ន្ធស្វ័យប្រវត្តផ្ទៀងផ្ទាត់វិក្កយបត្រ សន្សំពេលវេលា ១២ ម៉ោងក្នុងមួយខែ។',
        ),

        const SizedBox(height: 20),

        // Fatal Mistakes in Cambodia
        const Text(
          'កំហុសធ្ងន់ធ្ងរទាំង ៥ ដែលត្រូវចៀសវាងក្នុង CV',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: AppColors.charcoal),
        ),
        const SizedBox(height: 10),
        _buildMistakeRow(
          number: '១',
          title: 'រូបថតមិនមានលក្ខណៈវិជ្ជាជីវៈ (Unprofessional Photo)',
          desc: 'ចៀសវាងរូប Selfie ឬរូបកាត់តក្នុងពិធីជប់លៀង។ ប្រើរូបថតស្លៀកពាក់សមរម្យ ទឹកមុខរួសរាយ និងផ្ទៃខាងក្រោយស្អាត។',
        ),
        _buildMistakeRow(
          number: '២',
          title: 'ដាក់ព័ត៌មានផ្ទាល់ខ្លួនដែលមិនចាំបាច់ (Too Much Personal Data)',
          desc: 'មិនបាច់ដាក់ស្ថានភាពគ្រួសារ (នៅលីវ/រៀបការរួច) កម្ពស់ ឬសាសនាឡើយ។ ផ្តោតលើសមត្ថភាព និងបទពិសោធន៍។',
        ),
        _buildMistakeRow(
          number: '៣',
          title: 'គ្មានទិន្នន័យលេខបញ្ជាក់ (Zero Quantifiable Metrics)',
          desc: 'និយោជកចង់ឃើញលេខភាគរយ (%) ចំនួនទឹកប្រាក់ (\$) ឬចំនួនមនុស្សដែលអ្នកបានដឹកនាំ។',
        ),
        _buildMistakeRow(
          number: '៤',
          title: 'CV វែងលើសពី ២ ទំព័រ (Too Long for Reviewers)',
          desc: 'HR មើល CV ត្រឹមតែ ៦ វិនាទីដំបូងប៉ុណ្ណោះ។ សង្ខេបត្រឹម ១-២ ទំព័រដែលមានខ្លឹមសារខ្លឹម និងច្បាស់លាស់។',
        ),
        _buildMistakeRow(
          number: '៥',
          title: 'កំហុសអក្ខរាវិរុទ្ធ (Spelling & Grammar Errors)',
          desc: 'តែងតែផ្ទៀងផ្ទាត់អក្ខរាវិរុទ្ធឱ្យបានច្បាស់លាស់។ កំហុសអក្ខរាវិរុទ្ធឆ្លុះបញ្ចាំងពីការខ្វះការយកចិត្តទុកដាក់លើការងារ។',
        ),
      ],
    );
  }

  Widget _buildBuilderTab() {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Expanded(
              child: Text(
                'បំពេញព័ត៌មានបង្កើត CV ស្តង់ដារ ATS',
                style: TextStyle(fontSize: 14.5, fontWeight: FontWeight.bold, color: AppColors.charcoal),
              ),
            ),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color(0xFF6A1B9A),
                side: const BorderSide(color: Color(0xFF6A1B9A)),
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              ),
              onPressed: () {
                final cvText = _generateCvText();
                Clipboard.setData(ClipboardData(text: cvText));
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(' បានចម្លង CV ទៅក្តារតម្បៀតខ្ទាស់ (Copied)!'),
                    backgroundColor: Color(0xFF6A1B9A),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              icon: const Icon(Icons.copy, size: 15),
              label: const Text('ចម្លង (Copy)', style: TextStyle(fontSize: 11.5)),
            ),
            const SizedBox(width: 8),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF0F5A47),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
              onPressed: () => _showAgenticDropModal(context),
              icon: const Icon(Icons.send_rounded, size: 16, color: AppColors.restrainedGold),
              label: const Text(
                '🚀 Drop CV (AI & Telegram Alert)',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),

        _buildTextField(label: 'ឈ្មោះពេញ (Full Name)', controller: _nameController),
        const SizedBox(height: 12),
        _buildTextField(label: 'គោរមងារវិជ្ជាជីវៈ (Professional Title)', controller: _titleController),
        const SizedBox(height: 12),
        _buildTextField(
          label: 'សេចក្តីសង្ខេបវិជ្ជាជីវៈ (Executive Summary)',
          controller: _summaryController,
          maxLines: 3,
        ),
        const SizedBox(height: 12),
        _buildTextField(
          label: 'សមត្ថភាព និងជំនាញស្នូល (Core Competencies & Skills)',
          controller: _skillsController,
          maxLines: 2,
        ),
        const SizedBox(height: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  child: Text(
                    'សមិទ្ធផលការងារតាមរូបមន្ត XYZ (Experience with XYZ Formula)',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: AppColors.charcoal),
                  ),
                ),
                InkWell(
                  onTap: () => _showAiOptimizerModal(context),
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFF6A1B9A), Color(0xFF0F5A47)],
                      ),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF6A1B9A).withValues(alpha: 0.25),
                          blurRadius: 4,
                          offset: const Offset(0, 1),
                        ),
                      ],
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.auto_awesome, color: Colors.white, size: 13),
                        SizedBox(width: 4),
                        Text(
                          '✨ កែលម្អដោយ AI',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 6),
            TextField(
              controller: _experienceController,
              maxLines: 6,
              onChanged: (_) => setState(() {}),
              decoration: InputDecoration(
                isDense: true,
                filled: true,
                fillColor: const Color(0xFFFBFBFB),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Color(0xFF6A1B9A), width: 1.5),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        _buildTextField(
          label: 'កម្រិតវប្បធម៌ & វិញ្ញាបនបត្រ (Education & Certifications)',
          controller: _educationController,
          maxLines: 2,
        ),

        const SizedBox(height: 24),

        // Live Preview Box
        const Text(
          'ការមើលជាមុននៃ CV (Live ATS Preview)',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: AppColors.charcoal),
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xFFF9F9FB),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: SelectableText(
            _generateCvText(),
            style: const TextStyle(
              fontFamily: 'monospace',
              fontSize: 11,
              height: 1.45,
              color: Color(0xFF212529),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTextField({
    required String label,
    required TextEditingController controller,
    int maxLines = 1,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: AppColors.charcoal)),
        const SizedBox(height: 6),
        TextField(
          controller: controller,
          maxLines: maxLines,
          onChanged: (_) => setState(() {}),
          decoration: InputDecoration(
            isDense: true,
            filled: true,
            fillColor: const Color(0xFFFBFBFB),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Color(0xFF6A1B9A), width: 1.5),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildComparisonCard({required String badText, required String goodText}) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: Color(0xFFE5ECE8)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(badText, style: const TextStyle(fontSize: 12, color: Colors.redAccent, height: 1.35)),
            const SizedBox(height: 6),
            const Divider(height: 1),
            const SizedBox(height: 6),
            Text(goodText, style: const TextStyle(fontSize: 12, color: Color(0xFF2E7D32), fontWeight: FontWeight.w600, height: 1.35)),
          ],
        ),
      ),
    );
  }

  Widget _buildMistakeRow({required String number, required String title, required String desc}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 24,
            height: 24,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Color(0xFFFFEBEE),
              shape: BoxShape.circle,
            ),
            child: Text(
              number,
              style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.red),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: AppColors.charcoal)),
                const SizedBox(height: 2),
                Text(desc, style: const TextStyle(fontSize: 12, color: AppColors.subtleGray, height: 1.3)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTemplatesTab() {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: const Color(0xFFF3E5F5),
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: const Color(0xFFE1BEE7)),
          ),
          child: const Row(
            children: [
              Icon(Icons.auto_awesome, color: Color(0xFF6A1B9A), size: 22),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  'ជ្រើសរើសគំរូ CV ស្តង់ដារតាមជំនាញរបស់អ្នក (1-Click Apply to Generator)៖\nចុច «ប្រើប្រាស់គំរូនេះ» ដើម្បីបញ្ជូនទិន្នន័យទៅកាន់ Builder ដោយស្វ័យប្រវត្តិ។',
                  style: TextStyle(fontSize: 12, color: Color(0xFF4A148C), height: 1.35),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        ...CvTemplatesRepository.allTemplates.map((template) {
          return Card(
            elevation: 0,
            margin: const EdgeInsets.only(bottom: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: const BorderSide(color: Color(0xFFE5ECE8)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: const Color(0xFF6A1B9A).withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          template.industryKh,
                          style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Color(0xFF6A1B9A)),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF8FAF9),
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: Text(
                          template.recommendedForLevel,
                          style: const TextStyle(fontSize: 10, color: AppColors.subtleGray),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    template.titleKh,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.charcoal),
                  ),
                  Text(
                    template.titleEn,
                    style: const TextStyle(fontSize: 12, color: AppColors.subtleGray),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    template.summary,
                    style: const TextStyle(fontSize: 12, color: Color(0xFF37474F), height: 1.4),
                  ),
                  const SizedBox(height: 10),
                  Wrap(
                    spacing: 6,
                    runSpacing: 4,
                    children: template.skills.take(5).map((skill) {
                      return Container(
                        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF1F8E9),
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: const Color(0xFFC8E6C9)),
                        ),
                        child: Text(skill, style: const TextStyle(fontSize: 10, color: Color(0xFF2E7D32))),
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 14),
                  const Divider(height: 1),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton.icon(
                          style: OutlinedButton.styleFrom(
                            foregroundColor: const Color(0xFF6A1B9A),
                            side: const BorderSide(color: Color(0xFF6A1B9A)),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                            padding: const EdgeInsets.symmetric(vertical: 8),
                          ),
                          onPressed: () {
                            final text = template.toFormattedText(
                              candidateName: widget.userProfile.displayName,
                              phone: widget.userProfile.phone,
                              email: widget.userProfile.email,
                            );
                            Clipboard.setData(ClipboardData(text: text));
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(' បានចម្លងគំរូ CV «${template.titleKh}» ទៅក្តារតម្បៀតខ្ទាស់!'),
                                backgroundColor: const Color(0xFF6A1B9A),
                                duration: const Duration(seconds: 2),
                              ),
                            );
                          },
                          icon: const Icon(Icons.copy, size: 14),
                          label: const Text('ចម្លង (Copy)', style: TextStyle(fontSize: 11)),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF6A1B9A),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                            padding: const EdgeInsets.symmetric(vertical: 8),
                          ),
                          onPressed: () => _applyTemplate(template),
                          icon: const Icon(Icons.edit_document, size: 14),
                          label: const Text('ប្រើប្រាស់គំរូនេះ (Apply)', style: TextStyle(fontSize: 11)),
                        ),
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

  void _showAiOptimizerModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (ctx) => _AiCvOptimizerSheet(
        initialText: _experienceController.text,
        targetRole: _titleController.text.isNotEmpty ? _titleController.text : 'Senior Specialist',
        onApply: (optimizedText) {
          setState(() {
            _experienceController.text = optimizedText;
          });
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(' បានបញ្ចូលសមិទ្ធផល Google XYZ ដែលកែដោយ AI ចូលក្នុង CV!'),
              backgroundColor: Color(0xFF0F5A47),
            ),
          );
        },
      ),
    );
  }

  void _showAgenticDropModal(BuildContext context) {
    final rawSkills = _skillsController.text
        .split(RegExp(r'[,•\n]'))
        .map((s) => s.trim())
        .where((s) => s.isNotEmpty)
        .toList();

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (ctx) => _AgenticCvDropSheet(
        candidateName: _nameController.text.isNotEmpty ? _nameController.text : widget.userProfile.displayName,
        phone: widget.userProfile.phone.isNotEmpty ? widget.userProfile.phone : '012 345 678',
        email: widget.userProfile.email.isNotEmpty ? widget.userProfile.email : 'candidate@company.com',
        targetRole: _titleController.text.isNotEmpty ? _titleController.text : 'Senior Specialist',
        careerLevel: widget.userProfile.careerLevel,
        summary: _summaryController.text,
        skills: rawSkills.isNotEmpty ? rawSkills : ['Leadership', 'Strategic Planning', 'Problem Solving'],
        experienceXyz: _experienceController.text,
        education: _educationController.text,
        fullCvText: _generateCvText(),
      ),
    );
  }
}

class _AiCvOptimizerSheet extends ConsumerStatefulWidget {
  final String initialText;
  final String targetRole;
  final ValueChanged<String> onApply;

  const _AiCvOptimizerSheet({
    required this.initialText,
    required this.targetRole,
    required this.onApply,
  });

  @override
  ConsumerState<_AiCvOptimizerSheet> createState() => _AiCvOptimizerSheetState();
}

class _AiCvOptimizerSheetState extends ConsumerState<_AiCvOptimizerSheet> {
  AiProvider _provider = AiProvider.deepseek;
  bool _isLoading = false;
  String? _result;
  String? _error;

  @override
  void initState() {
    super.initState();
    // Automatically trigger optimization if initial text is available
    if (widget.initialText.trim().isNotEmpty) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _runOptimizer();
      });
    }
  }

  Future<void> _runOptimizer() async {
    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      final aiService = ref.read(aiAgentServiceProvider);
      final optimized = await aiService.optimizeCvBullet(
        rawExperience: widget.initialText,
        targetRole: widget.targetRole,
        provider: _provider,
      );

      setState(() {
        _result = optimized;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _error = e.toString();
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final bottomInset = MediaQuery.of(context).viewInsets.bottom;

    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.88,
      ),
      margin: EdgeInsets.only(bottom: bottomInset),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Drag handle
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),

          // Header
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color(0xFF6A1B9A).withValues(alpha: 0.1),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.auto_awesome, color: Color(0xFF6A1B9A), size: 22),
                ),
                const SizedBox(width: 12),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'កែលម្អ CV តាម Google XYZ ដោយ AI',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColors.charcoal,
                        ),
                      ),
                      Text(
                        'Google XYZ Formula Resume Enhancer (DeepSeek & Grok)',
                        style: TextStyle(fontSize: 11, color: AppColors.subtleGray),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          ),

          const Divider(height: 20),

          // Provider Selector
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const Text('ម៉ូឌែល:', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: AppColors.subtleGray)),
                  const SizedBox(width: 10),
                  ChoiceChip(
                    label: const Text('⚡ DeepSeek-V3', style: TextStyle(fontSize: 11)),
                    selected: _provider == AiProvider.deepseek,
                    selectedColor: const Color(0xFF1E88E5).withValues(alpha: 0.15),
                    onSelected: (val) {
                      if (val) {
                        setState(() => _provider = AiProvider.deepseek);
                        _runOptimizer();
                      }
                    },
                  ),
                  const SizedBox(width: 8),
                  ChoiceChip(
                    label: const Text('🧠 Grok-4 (xAI)', style: TextStyle(fontSize: 11)),
                    selected: _provider == AiProvider.grok,
                    selectedColor: const Color(0xFF6A1B9A).withValues(alpha: 0.15),
                    onSelected: (val) {
                      if (val) {
                        setState(() => _provider = AiProvider.grok);
                        _runOptimizer();
                      }
                    },
                  ),
                  const SizedBox(width: 8),
                  ChoiceChip(
                    label: const Text('🧡 Claude 3.5 Sonnet', style: TextStyle(fontSize: 11)),
                    selected: _provider == AiProvider.claude,
                    selectedColor: const Color(0xFFD97706).withValues(alpha: 0.15),
                    onSelected: (val) {
                      if (val) {
                        setState(() => _provider = AiProvider.claude);
                        _runOptimizer();
                      }
                    },
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 10),

          // Content body
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: _isLoading
                  ? Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 40),
                        child: Column(
                          children: [
                            const CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF6A1B9A)),
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'AI កំពុងបំប្លែងសមិទ្ធផលការងារតាមក្បួន Google XYZ (${_provider.displayName})...',
                              style: const TextStyle(fontSize: 12.5, color: AppColors.subtleGray),
                            ),
                          ],
                        ),
                      ),
                    )
                  : _error != null
                      ? Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            children: [
                              Text('កំហុស៖ $_error', style: const TextStyle(color: Colors.red)),
                              const SizedBox(height: 12),
                              ElevatedButton(
                                onPressed: _runOptimizer,
                                child: const Text('ព្យាយាមម្តងទៀត'),
                              ),
                            ],
                          ),
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: const Color(0xFFF9F9FB),
                                borderRadius: BorderRadius.circular(14),
                                border: Border.all(color: Colors.grey.shade300),
                              ),
                              child: SelectableText(
                                _result ?? '',
                                style: const TextStyle(
                                  fontSize: 13,
                                  height: 1.6,
                                  color: Color(0xFF263238),
                                ),
                              ),
                            ),
                          ],
                        ),
            ),
          ),

          // Bottom Action Bar
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(top: BorderSide(color: Colors.grey.shade200)),
            ),
            child: SafeArea(
              child: Row(
                children: [
                  OutlinedButton.icon(
                    onPressed: (_result != null)
                        ? () {
                            Clipboard.setData(ClipboardData(text: _result!));
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('បានចម្លងអត្ថបទ (Copied)'),
                                duration: Duration(seconds: 1),
                              ),
                            );
                          }
                        : null,
                    icon: const Icon(Icons.copy, size: 16),
                    label: const Text('ចម្លងទុក'),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF0F5A47),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                      onPressed: (_result != null)
                          ? () {
                              widget.onApply(_result!);
                              Navigator.pop(context);
                            }
                          : null,
                      icon: const Icon(Icons.check_circle_outline, size: 18),
                      label: const Text(
                        'អនុវត្តទៅក្នុង CV របស់ខ្ញុំ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ===========================================================================
// AGENTIC AI CV DROP & TELEGRAM BOT ALERT SHEET
// ===========================================================================
class _AgenticCvDropSheet extends ConsumerStatefulWidget {
  final String candidateName;
  final String phone;
  final String email;
  final String targetRole;
  final String careerLevel;
  final String summary;
  final List<String> skills;
  final String experienceXyz;
  final String education;
  final String fullCvText;

  const _AgenticCvDropSheet({
    required this.candidateName,
    required this.phone,
    required this.email,
    required this.targetRole,
    required this.careerLevel,
    required this.summary,
    required this.skills,
    required this.experienceXyz,
    required this.education,
    required this.fullCvText,
  });

  @override
  ConsumerState<_AgenticCvDropSheet> createState() => _AgenticCvDropSheetState();
}

class _AgenticCvDropSheetState extends ConsumerState<_AgenticCvDropSheet> {
  late TextEditingController _salaryController;
  AiProvider _provider = AiProvider.deepseek;
  bool _isRunning = false;
  double _progress = 0.0;
  WorkflowStep _currentStep = WorkflowStep.parsing;
  AgenticCvDossier? _dossier;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _salaryController = TextEditingController(text: '\$1,200 - \$1,800 / month');
  }

  @override
  void dispose() {
    _salaryController.dispose();
    super.dispose();
  }

  Future<void> _startWorkflow() async {
    setState(() {
      _isRunning = true;
      _errorMessage = null;
      _progress = 0.1;
      _currentStep = WorkflowStep.parsing;
    });

    try {
      final workflow = ref.read(agenticCvWorkflowServiceProvider);
      final dossier = await workflow.processCvDrop(
        candidateName: widget.candidateName,
        phone: widget.phone,
        email: widget.email,
        targetRole: widget.targetRole,
        careerLevel: widget.careerLevel,
        summary: widget.summary,
        skills: widget.skills,
        experienceXyz: widget.experienceXyz,
        education: widget.education,
        salaryExpectation: _salaryController.text.trim().isNotEmpty
            ? _salaryController.text.trim()
            : '\$1,200 - \$1,800 / month',
        fullCvText: widget.fullCvText,
        preferredProvider: _provider,
        onProgress: (step, prog) {
          if (mounted) {
            setState(() {
              _currentStep = step;
              _progress = prog;
            });
          }
        },
      );

      if (mounted) {
        setState(() {
          _dossier = dossier;
          _isRunning = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _errorMessage = e.toString();
          _isRunning = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.90,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        children: [
          // Drag handle
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 10, bottom: 6),
              width: 44,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),

          // Header
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFF4A148C), Color(0xFF0F5A47)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.15),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.rocket_launch_rounded, color: AppColors.restrainedGold, size: 22),
                ),
                const SizedBox(width: 12),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Agentic AI CV Drop & Telegram Alert',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.5,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'ស្វ័យប្រវត្តិនៃការវាយតម្លៃបេក្ខជន & Alert ទៅ Telegram HR',
                        style: TextStyle(color: Colors.white70, fontSize: 11),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.close, color: Colors.white70, size: 20),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          ),

          const SizedBox(height: 12),

          // Main Body
          Expanded(
            child: _dossier != null
                ? _buildDossierView()
                : _isRunning
                    ? _buildRunningWorkflowView()
                    : _buildPreFlightView(),
          ),
        ],
      ),
    );
  }

  // Pre-flight setup screen
  Widget _buildPreFlightView() {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      children: [
        // Candidate Profile Summary Card
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xFFF9F9FB),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.grey.shade200),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: const Color(0xFF6A1B9A).withValues(alpha: 0.1),
                    child: const Icon(Icons.person, color: Color(0xFF6A1B9A)),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.candidateName,
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Text(
                          widget.targetRole,
                          style: const TextStyle(fontSize: 12.5, color: Color(0xFF0F5A47), fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: AppColors.restrainedGold.withValues(alpha: 0.15),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      widget.careerLevel,
                      style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Color(0xFF8A6508)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              const Divider(height: 1),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Icon(Icons.phone_outlined, size: 14, color: AppColors.subtleGray),
                  const SizedBox(width: 6),
                  Text(widget.phone, style: const TextStyle(fontSize: 11.5, color: AppColors.subtleGray)),
                  const SizedBox(width: 16),
                  const Icon(Icons.email_outlined, size: 14, color: AppColors.subtleGray),
                  const SizedBox(width: 6),
                  Expanded(
                    child: Text(
                      widget.email,
                      style: const TextStyle(fontSize: 11.5, color: AppColors.subtleGray),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Wrap(
                spacing: 6,
                runSpacing: 4,
                children: widget.skills.take(5).map((s) => Container(
                  padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2.5),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE8F5E9),
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: const Color(0xFFC8E6C9)),
                  ),
                  child: Text(s, style: const TextStyle(fontSize: 10.5, color: Color(0xFF2E7D32), fontWeight: FontWeight.w600)),
                )).toList(),
              ),
            ],
          ),
        ),

        const SizedBox(height: 16),

        // Salary Expectation Input
        const Text(
          'ប្រាក់ខែរំពឹងទុក (Salary Expectation)៖',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: AppColors.charcoal),
        ),
        const SizedBox(height: 6),
        TextField(
          controller: _salaryController,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.payments_outlined, color: Color(0xFF0F5A47), size: 20),
            hintText: 'ឧ. \$1,200 - \$1,800 / month',
            filled: true,
            fillColor: const Color(0xFFFBFBFB),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: Colors.grey.shade300)),
            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: Color(0xFF0F5A47), width: 1.5)),
            isDense: true,
          ),
        ),

        const SizedBox(height: 16),

        // AI Model Engine Preference
        const Text(
          'ម៉ាស៊ីន AI វាយតម្លៃ (Evaluation Engine)៖',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: AppColors.charcoal),
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            ChoiceChip(
              selectedColor: const Color(0xFF4A148C).withValues(alpha: 0.15),
              backgroundColor: const Color(0xFFF8FAF9),
              avatar: const Icon(Icons.bolt, color: Color(0xFF4A148C), size: 16),
              label: const Text('DeepSeek Chat (V3)', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11.5)),
              selected: _provider == AiProvider.deepseek,
              onSelected: (val) {
                if (val) setState(() => _provider = AiProvider.deepseek);
              },
            ),
            ChoiceChip(
              selectedColor: const Color(0xFF0F5A47).withValues(alpha: 0.15),
              backgroundColor: const Color(0xFFF8FAF9),
              avatar: const Icon(Icons.auto_awesome, color: Color(0xFF0F5A47), size: 16),
              label: const Text('xAI Grok (4.20)', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11.5)),
              selected: _provider == AiProvider.grok,
              onSelected: (val) {
                if (val) setState(() => _provider = AiProvider.grok);
              },
            ),
            ChoiceChip(
              selectedColor: const Color(0xFFD97706).withValues(alpha: 0.15),
              backgroundColor: const Color(0xFFF8FAF9),
              avatar: const Icon(Icons.psychology_alt, color: Color(0xFFD97706), size: 16),
              label: const Text('Claude 3.5 Sonnet', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11.5)),
              selected: _provider == AiProvider.claude,
              onSelected: (val) {
                if (val) setState(() => _provider = AiProvider.claude);
              },
            ),
          ],
        ),

        const SizedBox(height: 16),

        // Workflow Highlights Box
        Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: const Color(0xFFF3E5F5),
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: const Color(0xFFE1BEE7)),
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.hub_outlined, color: Color(0xFF6A1B9A), size: 18),
                  SizedBox(width: 8),
                  Text(
                    'របៀបដំណើរការ Agentic AI Workflow',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.5, color: Color(0xFF6A1B9A)),
                  ),
                ],
              ),
              SizedBox(height: 6),
              Text(
                '• វាយតម្លៃគុណភាពសមិទ្ធផល Google XYZ Formula ដោយ AI\n'
                '• បង្កើតសំណួរសម្ភាសន៍ ៣ សំណួរតម្រូវតាម Profile បេក្ខជន\n'
                '• បញ្ជូនដំណឹង Alert ភ្លាមៗទៅ Telegram Channel របស់ក្រុម HR\n'
                '• កត់ត្រាចូល Admin Database & Audit Trail ដោយស្វ័យប្រវត្តិ',
                style: TextStyle(fontSize: 11.5, color: Color(0xFF4A148C), height: 1.45),
              ),
            ],
          ),
        ),

        if (_errorMessage != null) ...[
          const SizedBox(height: 12),
          Text('កំហុស៖ $_errorMessage', style: const TextStyle(color: Colors.red, fontSize: 12)),
        ],

        const SizedBox(height: 24),

        // Submit Button
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF0F5A47),
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 14),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            elevation: 2,
          ),
          onPressed: _startWorkflow,
          icon: const Icon(Icons.rocket_launch, size: 18, color: AppColors.restrainedGold),
          label: const Text(
            '🚀 បញ្ជូន CV & ដំណើរការ Agentic AI',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  // Active in-flight workflow animation
  Widget _buildRunningWorkflowView() {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xFF0F5A47).withValues(alpha: 0.1),
            ),
            child: const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF0F5A47)),
              strokeWidth: 3.5,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            _currentStep.labelKh,
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: AppColors.charcoal),
          ),
          const SizedBox(height: 8),
          Text(
            'កំពុងដំណើរការដោយស្វ័យប្រវត្តតាមរយៈ ${_provider.displayName}...',
            style: const TextStyle(fontSize: 12, color: AppColors.subtleGray),
          ),
          const SizedBox(height: 20),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: LinearProgressIndicator(
              value: _progress,
              minHeight: 8,
              backgroundColor: Colors.grey.shade200,
              valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFF6A1B9A)),
            ),
          ),
          const SizedBox(height: 24),
          _buildStepRow(1, 'Parsing & Validation', _progress >= 0.2),
          _buildStepRow(2, 'Agentic AI Evaluation (${_provider.displayName})', _progress >= 0.45),
          _buildStepRow(3, 'Interview Blueprint Generation', _progress >= 0.7),
          _buildStepRow(4, 'Telegram Bot Alert Dispatch', _progress >= 0.85),
          _buildStepRow(5, 'Admin Data & Audit Log Sync', _progress >= 0.95),
        ],
      ),
    );
  }

  Widget _buildStepRow(int num, String label, bool isDone) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Icon(
            isDone ? Icons.check_circle : Icons.radio_button_unchecked,
            size: 16,
            color: isDone ? const Color(0xFF0F5A47) : Colors.grey.shade400,
          ),
          const SizedBox(width: 8),
          Text(
            '$num. $label',
            style: TextStyle(
              fontSize: 12,
              fontWeight: isDone ? FontWeight.bold : FontWeight.normal,
              color: isDone ? AppColors.charcoal : AppColors.subtleGray,
            ),
          ),
        ],
      ),
    );
  }

  // Dossier Result Screen
  Widget _buildDossierView() {
    final d = _dossier!;
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      children: [
        // Success Header Card with Match Score
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xFF0F5A47), Color(0xFF1B5E20)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              Container(
                width: 64,
                height: 64,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withValues(alpha: 0.15),
                  border: Border.all(color: AppColors.restrainedGold, width: 2),
                ),
                alignment: Alignment.center,
                child: Text(
                  '${d.aiScore}',
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    color: AppColors.restrainedGold,
                  ),
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'AI Match Score',
                          style: TextStyle(fontSize: 12, color: Colors.white70),
                        ),
                        const SizedBox(width: 6),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(
                            color: AppColors.restrainedGold,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            d.googleXyzRating,
                            style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.black87),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'វាយតម្លៃជោគជ័យ (Evaluation Complete)',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      'បេក្ខជន៖ ${widget.candidateName}',
                      style: const TextStyle(fontSize: 11.5, color: Colors.white70),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 12),

        // Telegram Bot Alert Status Card
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: const Color(0xFFE1F5FE),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: const Color(0xFF81D4FA)),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Color(0xFF0088CC), // Telegram Blue
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.send_rounded, color: Colors.white, size: 16),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Telegram HR Alert Status',
                      style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Color(0xFF0088CC)),
                    ),
                    Text(
                      d.telegramStatusMessage,
                      style: const TextStyle(fontSize: 11.5, color: Color(0xFF01579B), fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: const Color(0xFF0088CC),
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                ),
                onPressed: () => _showTelegramPayloadPreview(context),
                child: const Text('មើលសារ (Payload)', style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),

        const SizedBox(height: 14),

        // AI Executive Brief
        const Text(
          'សេចក្តីសង្ខេបពី AI (Executive Brief)៖',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: AppColors.charcoal),
        ),
        const SizedBox(height: 6),
        Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: const Color(0xFFF9F9FB),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Text(
            d.aiSummary,
            style: const TextStyle(fontSize: 12.5, height: 1.5, color: Color(0xFF263238)),
          ),
        ),

        const SizedBox(height: 14),

        // Strengths & Gaps
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('ចំណុចខ្លាំង (Strengths)', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Color(0xFF2E7D32))),
                  const SizedBox(height: 6),
                  ...d.strengths.map((s) => Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(Icons.check_circle, size: 14, color: Color(0xFF2E7D32)),
                        const SizedBox(width: 4),
                        Expanded(child: Text(s, style: const TextStyle(fontSize: 11, height: 1.3))),
                      ],
                    ),
                  )),
                ],
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('ចំណុចពិនិត្យបន្ថែម (Gaps)', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Color(0xFFE65100))),
                  const SizedBox(height: 6),
                  ...d.gaps.map((g) => Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(Icons.info_outline, size: 14, color: Color(0xFFE65100)),
                        const SizedBox(width: 4),
                        Expanded(child: Text(g, style: const TextStyle(fontSize: 11, height: 1.3))),
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ],
        ),

        const SizedBox(height: 14),

        // Tailored Interview Questions
        const Text(
          'សំណួរសម្ភាសន៍ដែល AI ស្នើ (Suggested Interview Blueprint)៖',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: AppColors.charcoal),
        ),
        const SizedBox(height: 6),
        ...d.suggestedQuestions.asMap().entries.map((entry) {
          return Container(
            margin: const EdgeInsets.only(bottom: 6),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xFFF3E5F5),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: const Color(0xFFE1BEE7)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Q${entry.key + 1}: ', style: const TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF6A1B9A), fontSize: 12)),
                Expanded(
                  child: Text(entry.value, style: const TextStyle(fontSize: 11.5, color: Color(0xFF4A148C), height: 1.35)),
                ),
              ],
            ),
          );
        }),

        const SizedBox(height: 20),

        // Bottom Action Bar
        Row(
          children: [
            Expanded(
              child: OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: () {
                  final text = '''
=== DOSSIER AGENTIC AI: ${widget.candidateName} ===
Score: ${d.aiScore}/100 (${d.googleXyzRating})
Role: ${widget.targetRole}
Summary: ${d.aiSummary}

Questions:
${d.suggestedQuestions.map((q) => '- $q').join('\n')}
''';
                  Clipboard.setData(ClipboardData(text: text));
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text(' បានចម្លង Dossier ទៅ Clipboard!')),
                  );
                },
                icon: const Icon(Icons.copy, size: 16),
                label: const Text('ចម្លង Dossier'),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0F5A47),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.check, size: 16),
                label: const Text('រួចរាល់ (Done)', style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  void _showTelegramPayloadPreview(BuildContext context) {
    final telegramService = ref.read(telegramAlertServiceProvider);
    final config = telegramService.currentConfig;

    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: const Row(
          children: [
            Icon(Icons.send_rounded, color: Color(0xFF0088CC), size: 20),
            SizedBox(width: 8),
            Text('Telegram Bot Payload', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          ],
        ),
        content: SizedBox(
          width: 480,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Chat ID: ${config.chatId}', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 11.5)),
              Text('Bot Token: ${config.botToken.substring(0, 10)}... (Configured)', style: const TextStyle(fontSize: 11, color: AppColors.subtleGray)),
              const SizedBox(height: 10),
              const Text('សារ HTML ដែលបានបញ្ជូន៖', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
              const SizedBox(height: 6),
              Container(
                constraints: const BoxConstraints(maxHeight: 240),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFF212529),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: SingleChildScrollView(
                  child: Text(
                    '''🚨 [LERNG DOMNAENG] ដំណឹងបេក្ខជនដាក់ពាក្យ CV ថ្មី
👤 បេក្ខជន: ${widget.candidateName.toUpperCase()}
🎯 តំណែងស្នើសុំ: ${widget.targetRole}
💼 កម្រិត: ${widget.careerLevel}
💰 ប្រាក់ខែរំពឹងទុក: ${_salaryController.text}
⭐ AI Score: ${_dossier?.aiScore ?? 88}/100 (${_dossier?.googleXyzRating ?? 'Strong (A)'})
📝 សេចក្តីសង្ខេប: ${_dossier?.aiSummary ?? ''}''',
                    style: const TextStyle(color: Color(0xFF81D4FA), fontFamily: 'monospace', fontSize: 10.5, height: 1.4),
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('បិទ')),
        ],
      ),
    );
  }
}
