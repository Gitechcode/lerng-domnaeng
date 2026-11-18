import 'package:flutter/material.dart';
import 'package:lerng_domnaeng/core/theme/app_theme.dart';
import '../../domain/profile_models.dart';

class SalaryFrameworkSheet extends StatelessWidget {
  const SalaryFrameworkSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        children: [
          // Drag handle & Header
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
                    color: AppColors.primaryGreen.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(Icons.monetization_on, color: AppColors.primaryGreen, size: 24),
                ),
                const SizedBox(width: 14),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ក្បួនកសាងតំណែង និងប្រាក់ខែ',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.charcoal),
                      ),
                      Text(
                        'Career Ladder & Compensation Architecture',
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
                // Formula Card
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFF0F5A47), Color(0xFF0A3D30)],
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
                              'រូបមន្តប្រាក់ចំណូលសរុប',
                              style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.black87),
                            ),
                          ),
                          const Spacer(),
                          const Icon(Icons.calculate, color: Colors.white70, size: 20),
                        ],
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        'ចំណូលសរុប = ប្រាក់ខែគោល (Base) + ប្រាក់លើកទឹកចិត្ត KPI + ភាគលាភធុរកិច្ច (Profit Share)',
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white, height: 1.4),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'ក្បួនដំឡើងចំណូលលឿនបំផុត គឺការធ្វើឱ្យក្រុមហ៊ុនរកចំណូលបានកាន់តែច្រើន ឬកាត់បន្ថយចំណាយខាតបង់បានជាក់ស្តែង។',
                        style: TextStyle(fontSize: 12, color: Colors.white70, height: 1.4),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                // 4 Pillars of Salary Negotiation
                const Text(
                  'ក្បួនចរចាសុំដំឡើងប្រាក់ខែប្រកបដោយវិជ្ជាជីវៈ (Merit-First)',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.charcoal),
                ),
                const SizedBox(height: 12),
                _buildStepItem(
                  step: '១',
                  title: 'ប្រមូលទិន្នន័យសមិទ្ធផល ៦ ខែចុងក្រោយ (Track Proof)',
                  desc: 'កុំនិយាយថា «ទំនិញឡើងថ្លៃ»។ បង្ហាញតួលេខជាក់ស្តែង ឧទាហរណ៍៖ រកចំណូលបន្ថែមបាន \$15,000 ឬកាត់បន្ថយពេលវេលាធ្វើការ ៣០%។',
                ),
                _buildStepItem(
                  step: '២',
                  title: 'ប្រៀបធៀបជាមួយអត្រាទីផ្សារកម្ពុជា (Market Benchmark)',
                  desc: 'ស្រាវជ្រាវអត្រាប្រាក់ខែសម្រាប់ដំណែងដូចគ្នាក្នុងក្រុមហ៊ុនទំហំប្រហាក់ប្រហែលគ្នា។',
                ),
                _buildStepItem(
                  step: '៣',
                  title: 'កំណត់ពេលវេលាសន្ទនា ១ ទល់ ១ (Set 1-on-1 Agenda)',
                  desc: 'កុំសួរតាមទូរស័ព្ទ ឬតាមតុអាហារ។ កក់ម៉ោងប្រជុំផ្លូវការ និងប្រាប់ជាមុនអំពីប្រធានបទ «ការពិនិត្យសមិទ្ធផលការងារ និងផែនការអភិវឌ្ឍ»។',
                ),
                _buildStepItem(
                  step: '៤',
                  title: 'ស្នើសុំការដំឡើងភ្ជាប់ជាមួយការទទួលខុសត្រូវថ្មី (Value Exchange)',
                  desc: '«ប្រសិនបើតួនាទីខ្ញុំឡើងជា Senior ខ្ញុំនឹងជួយដឹកនាំគម្រោង X និងបណ្តុះបណ្តាលសមាជិកថ្មី ២ នាក់បន្ថែម។»',
                ),

                const SizedBox(height: 24),

                // 10-Level Benchmark Table
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'តារាងអត្រាប្រាក់ខែ ១០ កម្រិតនៅកម្ពុជា',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.charcoal),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Text('អត្រាមធ្យមទីផ្សារ', style: TextStyle(fontSize: 11, color: AppColors.subtleGray)),
                    ),
                  ],
                ),
                const SizedBox(height: 12),

                ...CareerSalaryRepository.benchmarks.map((item) {
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
                              CircleAvatar(
                                radius: 14,
                                backgroundColor: AppColors.primaryGreen,
                                child: Text(
                                  '${item.level}',
                                  style: const TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      item.positionKh,
                                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: AppColors.charcoal),
                                    ),
                                    Text(
                                      item.positionEn,
                                      style: const TextStyle(fontSize: 11, color: AppColors.subtleGray),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: const Color(0xFFF8FAF9),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text('SME Company', style: TextStyle(fontSize: 11, color: AppColors.subtleGray)),
                                      Text(
                                        item.smeRangeUsd,
                                        style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: AppColors.primaryGreen),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(width: 1, height: 26, color: Colors.grey.shade300),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text('Corporate Standard', style: TextStyle(fontSize: 11, color: AppColors.subtleGray)),
                                      Text(
                                        item.corporateRangeUsd,
                                        style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: AppColors.primaryGreen),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'លក្ខខណ្ឌឡើងដំណែង៖ ${item.promotionRequirementKh}',
                            style: const TextStyle(fontSize: 12, color: Color(0xFF333333), height: 1.3),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStepItem({required String step, required String title, required String desc}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 26,
            height: 26,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.primaryGreen.withValues(alpha: 0.1),
              shape: BoxShape.circle,
            ),
            child: Text(
              step,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: AppColors.primaryGreen),
            ),
          ),
          const SizedBox(width: 12),
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
}
