import 'package:flutter/material.dart';
import 'package:lerng_domnaeng/core/theme/app_theme.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('វឌ្ឍនភាពការរៀនសូត្រ & វិញ្ញាបនបត្រ'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Overall Stats Card
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: AppColors.surfaceWhite,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: AppColors.borderGray),
              ),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'វឌ្ឍនភាពសរុប',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        '៧០%',
                        style: TextStyle(
                          color: AppColors.primaryGreen,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  LinearProgressIndicator(
                    value: 0.70,
                    backgroundColor: AppColors.borderGray,
                    color: AppColors.primaryGreen,
                    minHeight: 8,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  const SizedBox(height: 16),
                  const Divider(color: AppColors.borderGray),
                  const SizedBox(height: 12),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _StatItem(label: 'មេរៀនចប់', value: '១២'),
                      _StatItem(label: 'ម៉ោងរៀន', value: '៥.៥ ម៉ោង'),
                      _StatItem(label: 'វិញ្ញាបនបត្រ', value: '១'),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Certificates Section
            const Text(
              'វិញ្ញាបនបត្របញ្ជាក់ការបញ្ចប់ (Certificates of Completion)',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

            Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
                side: const BorderSide(color: AppColors.restrainedGold, width: 1.2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: AppColors.goldLight.withValues(alpha: 0.4),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(Icons.workspace_premium, color: AppColors.restrainedGold, size: 28),
                        ),
                        const SizedBox(width: 12),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'ទំនាក់ទំនងប្រកបដោយវិជ្ជាជីវៈនៅកន្លែងធ្វើការ',
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                              Text(
                                'ចេញដោយ «ឡើងដំណែង» • លេខកូដ: LD-2026-COMM',
                                style: TextStyle(fontSize: 11, color: AppColors.subtleGray),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 14),
                    const Text(
                      'វិញ្ញាបនបត្រនេះបញ្ជាក់ថា អ្នករៀនបានឆ្លងកាត់ការសិក្សា និងការអនុវត្តគ្រប់ម៉ូឌុលយ៉ាងពេញលេញ។',
                      style: TextStyle(fontSize: 12, color: AppColors.charcoal),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        OutlinedButton.icon(
                          icon: const Icon(Icons.download_outlined, size: 16),
                          label: const Text('ទាញយក PDF', style: TextStyle(fontSize: 12)),
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('កំពុងទាញយកវិញ្ញាបនបត្រជា PDF...')),
                            );
                          },
                        ),
                        const SizedBox(width: 8),
                        ElevatedButton.icon(
                          icon: const Icon(Icons.share, size: 16),
                          label: const Text('ចែករំលែក', style: TextStyle(fontSize: 12)),
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('តំណភ្ជាប់ចែករំលែកត្រូវបានចម្លង!')),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final String label;
  final String value;

  const _StatItem({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: AppColors.primaryGreen),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(fontSize: 12, color: AppColors.subtleGray),
        ),
      ],
    );
  }
}
