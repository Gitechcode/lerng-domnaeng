import 'package:flutter/material.dart';
import 'package:lerng_domnaeng/core/theme/app_theme.dart';

class BenefitsSharingSheet extends StatelessWidget {
  const BenefitsSharingSheet({super.key});

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
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE65100).withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(Icons.pie_chart_outline, color: Color(0xFFE65100), size: 24),
                ),
                const SizedBox(width: 14),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ការបែងចែកផលប្រយោជន៍ & ESOP',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.charcoal),
                      ),
                      Text(
                        'Compensation, Profit Sharing & Equity Ownership',
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
                // Statutory Benefits in Cambodia
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFF9C4).withValues(alpha: 0.4),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: const Color(0xFFFFE082)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Icon(Icons.gavel, color: Color(0xFFF57F17), size: 20),
                          SizedBox(width: 8),
                          Text(
                            'អត្ថប្រយោជន៍ស្របច្បាប់ការងារកម្ពុជា (Mandatory)',
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Color(0xFFE65100)),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      _buildBullet(
                        title: 'បេឡាជាតិសន្តិសុខសង្គម (ប.ស.ស/NSSF)៖',
                        desc: 'ធានារ៉ាប់រងហានិភ័យការងារ និងថែទាំសុខភាព ព្យាបាលជំងឺដោយឥតគិតថ្លៃតាមមន្ទីរពេទ្យដៃគូ។',
                      ),
                      _buildBullet(
                        title: 'ប្រាក់បំណាច់អតីតភាពការងារ (Seniority Indemnity)៖',
                        desc: 'សម្រាប់កិច្ចសន្យាមិនកំណត់ថិរវេលា (UDC) បើក ២ ដងក្នុងមួយឆ្នាំ (ខែមិថុនា និងខែធ្នូ ស្មើនឹង ១៥ ថ្ងៃនៃប្រាក់ឈ្នួល)។',
                      ),
                      _buildBullet(
                        title: 'ការឈប់សម្រាកប្រចាំឆ្នាំ (Paid Annual Leave)៖',
                        desc: '១៨ ថ្ងៃក្នុងមួយឆ្នាំ ដោយបន្ថែម ១ ថ្ងៃរៀងរាល់អតីតភាពការងារ ៣ ឆ្នាំ។',
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                // Performance Bonus & 13th Month Salary
                const Text(
                  'ប្រព័ន្ធប្រាក់រង្វាន់លើកទឹកចិត្ត (Performance Bonus Framework)',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.charcoal),
                ),
                const SizedBox(height: 12),
                _buildCardModel(
                  icon: Icons.card_giftcard,
                  title: 'ប្រាក់ខែទី ១៣ (13th Month Bonus)',
                  tag: 'បុណ្យចូលឆ្នាំខ្មែរ / ភ្ជុំបិណ្ឌ',
                  desc: 'ការបែងចែកជា ២ លើក (៥០% មុនបុណ្យចូលឆ្នាំខ្មែរ និង ៥០% មុនបុណ្យភ្ជុំបិណ្ឌ) ដើម្បីជួយសម្រួលការធ្វើដំណើរទៅស្រុកកំណើតរបស់បុគ្គលិក។',
                ),
                _buildCardModel(
                  icon: Icons.trending_up,
                  title: 'ប្រាក់លើកទឹកចិត្តតាម KPI ត្រីមាស (Quarterly KPI Bonus)',
                  tag: 'ផ្អែកលើសមិទ្ធផល',
                  desc: 'ផ្អែកលើការសម្រេចបានលើសពី ១០០% នៃគោលដៅលក់ ឬផលិតភាព ដោយគណនាជាភាគរយជាក់ស្តែង (ឧ. ៥% - ១៥% នៃប្រាក់ខែត្រីមាស)។',
                ),

                const SizedBox(height: 24),

                // Profit Sharing Pool (សម្រាប់ SME និងក្រុមហ៊ុនលូតលាស់)
                const Text(
                  'មូលនិធិបែងចែកប្រាក់ចំណេញ (Profit Sharing Pool)',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.charcoal),
                ),
                const SizedBox(height: 8),
                const Text(
                  'ក្បួនចងចិត្តអ្នកដឹកនាំឱ្យខំប្រឹងប្រៀបដូចជាម្ចាស់ក្រុមហ៊ុនផ្ទាល់៖',
                  style: TextStyle(fontSize: 12, color: AppColors.subtleGray),
                ),
                const SizedBox(height: 12),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF1F8E9),
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: const Color(0xFFC8E6C9)),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'រូបមន្តបែងចែក៖ ១០% ទៅ ១៥% នៃប្រាក់ចំណេញសុទ្ធ (Net Operating Profit)',
                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Color(0xFF2E7D32)),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'ឧទាហរណ៍៖ បើក្រុមហ៊ុនរកចំណេញសុទ្ធបាន \$100,000 ក្នុងមួយឆ្នាំ មូលនិធិ \$15,000 ត្រូវបានដកស្រង់មកចែកជូនក្រុមស្នូល (Core Team) ផ្អែកលើទម្ងន់ KPI និងអតីតភាពការងារ។',
                        style: TextStyle(fontSize: 12, color: Color(0xFF1B5E20), height: 1.4),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                // ESOP & Phantom Stock
                const Text(
                  'ភាគហ៊ុនបុគ្គលិក (ESOP & Phantom Stock Option)',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.charcoal),
                ),
                const SizedBox(height: 12),
                _buildCardModel(
                  icon: Icons.account_balance,
                  title: 'កម្មវិធី ESOP (Employee Stock Option)',
                  tag: '៤ ឆ្នាំ Vesting + ១ ឆ្នាំ Cliff',
                  desc: 'ផ្តល់សិទ្ធិទិញភាគហ៊ុនក្នុងតម្លៃអនុគ្រោះ។ ឆ្នាំទី ១ (Cliff) មិនទាន់ទទួលបានទេ។ ចាប់ពីឆ្នាំទី ២ ឡើងទៅទទួលបាន ២៥% រៀងរាល់ឆ្នាំ រហូតគ្រប់ ១០០% នៅឆ្នាំទី ៤។',
                ),
                _buildCardModel(
                  icon: Icons.auto_graph,
                  title: 'ភាគហ៊ុនស្រមោល (Phantom Stock for SMEs)',
                  tag: 'គ្មានហានិភ័យផ្លូវច្បាប់',
                  desc: 'សមស្របបំផុតសម្រាប់ SME កម្ពុជាដែលមិនចង់ប្តូរឈ្មោះក្នុងលក្ខន្តិកៈក្រសួងពាណិជ្ជកម្ម។ បុគ្គលិកទទួលបានភាគលាភជាសាច់ប្រាក់ដូចម្ចាស់ភាគហ៊ុនពិតប្រាកដ ដោយផ្អែកលើការកើនឡើងនៃតម្លៃក្រុមហ៊ុន។',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBullet({required String title, required String desc}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('• ', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Color(0xFFE65100))),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: const TextStyle(fontSize: 12, color: AppColors.charcoal, height: 1.35),
                children: [
                  TextSpan(text: title, style: const TextStyle(fontWeight: FontWeight.bold)),
                  const TextSpan(text: ' '),
                  TextSpan(text: desc),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCardModel({
    required IconData icon,
    required String title,
    required String tag,
    required String desc,
  }) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
        side: const BorderSide(color: Color(0xFFE5ECE8)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: AppColors.primaryGreen, size: 20),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: AppColors.charcoal),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                    color: AppColors.primaryGreen.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    tag,
                    style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: AppColors.primaryGreen),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(desc, style: const TextStyle(fontSize: 12, color: AppColors.subtleGray, height: 1.4)),
          ],
        ),
      ),
    );
  }
}
