import 'package:flutter/material.dart';
import 'package:lerng_domnaeng/core/theme/app_theme.dart';

class PeopleManagementSheet extends StatelessWidget {
  const PeopleManagementSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        children: [
          // Drag Handle
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
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1E88E5).withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(Icons.people_alt, color: Color(0xFF1E88E5), size: 24),
                ),
                const SizedBox(width: 14),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ក្បួនគ្រប់គ្រង & រក្សាបុគ្គលិក',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.charcoal),
                      ),
                      Text(
                        'People Management & Retention Masterclass',
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
          const Divider(height: 1),

          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(20),
              children: [
                // Dan Pink Motivation Matrix
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF3F8FF),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: const Color(0xFFD0E1FD)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Icon(Icons.psychology, color: Color(0xFF1565C0), size: 22),
                          SizedBox(width: 8),
                          Text(
                            'ទ្រឹស្តីទឹកចិត្តជំរុញទាំង ៣ (Dan Pink Motivation)',
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Color(0xFF1565C0)),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      _buildPillarRow(
                        title: '១. Autonomy (ភាពម្ចាស់ការ/ស្វ័យភាព)៖',
                        desc: 'កុំគ្រប់គ្រងលម្អិតពេក (Micromanagement)។ ប្រគល់គោលដៅច្បាស់លាស់ ហើយទុកឱ្យបុគ្គលិករៀបចំវិធីសាស្ត្រអនុវត្តដោយខ្លួនឯង។',
                      ),
                      const SizedBox(height: 8),
                      _buildPillarRow(
                        title: '២. Mastery (ការឈានដល់កម្រិតជំនាញកំពូល)៖',
                        desc: 'បុគ្គលិកពូកែចង់រៀនសូត្រឥតឈប់ឈរ។ ផ្តល់ថវិការៀនសូត្រ (Learning Budget) និងគម្រោងប្រឈមថ្មីៗដើម្បីពង្រីកសមត្ថភាព។',
                      ),
                      const SizedBox(height: 8),
                      _buildPillarRow(
                        title: '៣. Purpose (គុណតម្លៃ និងទស្សនវិស័យ)៖',
                        desc: 'បុគ្គលិកត្រូវយល់ថា ការងារប្រចាំថ្ងៃរបស់គាត់ជួយដោះស្រាយបញ្ហាអ្វីដល់អតិថិជន និងសង្គម មិនមែនគ្រាន់តែមកធ្វើការយកប្រាក់ខែនោះទេ។',
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                // Bi-weekly 1-on-1 meeting agenda
                const Text(
                  'ក្បួនប្រជុំ ១ ទល់ ១ ប្រចាំពីរសប្តាហ៍ម្តង (1-on-1 Playbook)',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.charcoal),
                ),
                const SizedBox(height: 4),
                const Text(
                  'ការប្រជុំ ៣០ នាទីដែលជួយការពារកុំឱ្យបុគ្គលិកសំខាន់ៗលាលែងចេញ៖',
                  style: TextStyle(fontSize: 12, color: AppColors.subtleGray),
                ),
                const SizedBox(height: 12),
                _buildAgendaBlock(
                  duration: '១០ នាទីដំបូង',
                  title: 'របៀបវារៈរបស់បុគ្គលិក (Employee\'s Floor)',
                  desc: 'ស្តាប់ពីអារម្មណ៍ បញ្ហាប្រឈមក្នុងជីវិត ឬការងារដែលកំពុងជួបការលំបាក។ សួរថា៖ «តើមានអ្វីដែលបងអាចជួយសម្រាលបន្ទុកឯងបានខ្លះ?»',
                  color: const Color(0xFFE8F5E9),
                  tagColor: const Color(0xFF2E7D32),
                ),
                _buildAgendaBlock(
                  duration: '១០ នាទីបន្ទាប់',
                  title: 'ការផ្តល់មតិស្ថាបនារបស់អ្នកគ្រប់គ្រង (Constructive Feedback)',
                  desc: 'សរសើរចំសមិទ្ធផលល្អៗជាក់ស្តែង និងចង្អុលបង្ហាញចំណុចដែលត្រូវកែលម្អ ដោយមិនប្រើពាក្យបន្ទោស ឬប្រៀបធៀបជាមួយអ្នកដទៃ។',
                  color: const Color(0xFFFFF8E1),
                  tagColor: const Color(0xFFF57F17),
                ),
                _buildAgendaBlock(
                  duration: '១០ នាទីចុងក្រោយ',
                  title: 'ការកសាងអនាគត និងអាជីព (Future & Career Growth)',
                  desc: 'ពិភាក្សាអំពីជណ្ដើរអាជីព ជំនាញថ្មីដែលចង់រៀន និងការរៀបចំផែនការឡើងដំណែងនៅ ៦ ខែទៅ ១ ឆ្នាំខាងមុខ។',
                  color: const Color(0xFFEDE7F6),
                  tagColor: const Color(0xFF512DA8),
                ),

                const SizedBox(height: 24),

                // Retention Warning Checklist
                const Text(
                  'សញ្ញាអាសន្នទាំង ៥ បង្ហាញថាបុគ្គលិកពូកែកំពុងត្រៀមលាលែង',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.charcoal),
                ),
                const SizedBox(height: 12),
                _buildWarningTile(
                  icon: Icons.chat_bubble_outline,
                  title: 'ស្ងាត់ស្ងៀមខុសធម្មតាក្នុងកិច្ចប្រជុំ (Quiet Disengagement)',
                  action: 'អញ្ជើញជជែកក្រៅផ្លូវការលើកាហ្វេភ្លាមៗ ដើម្បីស្វែងយល់ពីមូលហេតុ។',
                ),
                _buildWarningTile(
                  icon: Icons.badge_outlined,
                  title: 'កែប្រែទម្រង់ LinkedIn ឬសុំលិខិតបញ្ជាក់ការងារ (Profile Refresh)',
                  action: 'ពិនិត្យមើលកញ្ចប់អត្ថប្រយោជន៍ និងផ្តល់គម្រោងដឹកនាំថ្មីដែលមានតម្លៃ។',
                ),
                _buildWarningTile(
                  icon: Icons.timer_outlined,
                  title: 'ធ្វើការត្រឹមតែកម្រិតអប្បបរមា (Quiet Quitting / Just Barely)',
                  action: 'បញ្ជាក់ឡើងវិញនូវគោលដៅអនាគត និងការទទួលស្គាល់ការខិតខំ។',
                ),
                _buildWarningTile(
                  icon: Icons.money_off,
                  title: 'មានអារម្មណ៍ថាប្រាក់ខែទាបជាងទីផ្សារលើសពី ២០%',
                  action: 'កែសម្រួលកញ្ចប់លើកទឹកចិត្ត KPI ឬប្រាក់រង្វាន់គម្រោងជាបន្ទាន់។',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPillarRow({required String title, required String desc}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Color(0xFF0D47A1))),
        const SizedBox(height: 2),
        Text(desc, style: const TextStyle(fontSize: 12, color: Color(0xFF263238), height: 1.35)),
      ],
    );
  }

  Widget _buildAgendaBlock({
    required String duration,
    required String title,
    required String desc,
    required Color color,
    required Color tagColor,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
            decoration: BoxDecoration(
              color: tagColor,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(duration, style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.white)),
          ),
          const SizedBox(height: 8),
          Text(title, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: AppColors.charcoal)),
          const SizedBox(height: 4),
          Text(desc, style: const TextStyle(fontSize: 12, color: AppColors.charcoal, height: 1.35)),
        ],
      ),
    );
  }

  Widget _buildWarningTile({required IconData icon, required String title, required String action}) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.only(bottom: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: Color(0xFFFFCDD2)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.warning_amber_rounded, color: Colors.redAccent, size: 22),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: AppColors.charcoal)),
                  const SizedBox(height: 4),
                  Text('ដំណោះស្រាយ៖ $action', style: const TextStyle(fontSize: 12, color: Color(0xFF424242))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
