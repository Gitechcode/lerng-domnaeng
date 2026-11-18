import 'package:flutter/material.dart';
import 'package:lerng_domnaeng/core/theme/app_theme.dart';
import '../domain/simulation_model.dart';

class SimulationDetailScreen extends StatefulWidget {
  final RoleplayScenarioModel scenario;

  const SimulationDetailScreen({super.key, required this.scenario});

  @override
  State<SimulationDetailScreen> createState() => _SimulationDetailScreenState();
}

class _SimulationDetailScreenState extends State<SimulationDetailScreen> {
  int? selectedIndex;
  bool isEvaluated = false;

  @override
  Widget build(BuildContext context) {
    final scenario = widget.scenario;

    return Scaffold(
      appBar: AppBar(
        title: const Text('ការសាកល្បងស្ថានការណ៍ (Simulation)'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Context header
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.primaryGreen.withValues(alpha: 0.08),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: AppColors.primaryGreen.withValues(alpha: 0.2)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: AppColors.primaryGreen,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          scenario.yourRoleKh,
                          style: const TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Icon(Icons.swap_horiz, size: 18, color: AppColors.subtleGray),
                      const SizedBox(width: 8),
                      Text(
                        scenario.peerRoleKh,
                        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: AppColors.charcoal),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    scenario.titleKh,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.charcoal),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      const Icon(Icons.location_on_outlined, size: 14, color: AppColors.subtleGray),
                      const SizedBox(width: 4),
                      Text(scenario.settingKh, style: const TextStyle(fontSize: 12, color: AppColors.subtleGray)),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 18),

            const Text(
              'បរិបទនៃស្ថានការណ៍ជាក់ស្តែង (Situation Context):',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            const SizedBox(height: 6),
            Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: const BorderSide(color: AppColors.borderGray),
              ),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Text(
                  scenario.situationContextKh,
                  style: const TextStyle(fontSize: 13.5, height: 1.5, color: AppColors.charcoal),
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'តើអ្នកនឹងជ្រើសរើសឆ្លើយតប ឬដោះស្រាយបែបណា?',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            const SizedBox(height: 10),

            ...List.generate(scenario.options.length, (index) {
              final opt = scenario.options[index];
              final isSelected = selectedIndex == index;

              return Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: InkWell(
                  onTap: isEvaluated
                      ? null
                      : () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: isSelected ? AppColors.primaryGreen.withValues(alpha: 0.05) : AppColors.surfaceWhite,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: isSelected ? AppColors.primaryGreen : AppColors.borderGray,
                        width: isSelected ? 1.8 : 1.0,
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 12,
                          backgroundColor: isSelected ? AppColors.primaryGreen : AppColors.borderGray,
                          child: Text(
                            String.fromCharCode(65 + index),
                            style: TextStyle(
                              color: isSelected ? Colors.white : AppColors.charcoal,
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            opt.labelKh,
                            style: const TextStyle(fontSize: 13, height: 1.4),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),

            const SizedBox(height: 10),

            if (!isEvaluated)
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: selectedIndex == null
                      ? null
                      : () {
                          setState(() {
                            isEvaluated = true;
                          });
                        },
                  child: const Text('ផ្ទៀងផ្ទាត់លទ្ធផល & ការឆ្លុះបញ្ចាំង'),
                ),
              ),

            if (isEvaluated && selectedIndex != null) ...[
              const SizedBox(height: 14),
              _buildEvaluationFeedback(scenario.options[selectedIndex!]),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    setState(() {
                      selectedIndex = null;
                      isEvaluated = false;
                    });
                  },
                  child: const Text('សាកល្បងជម្រើសផ្សេងទៀត'),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildEvaluationFeedback(SimulationOption option) {
    final isSuccess = option.isConstructive;
    final bannerColor = isSuccess ? AppColors.success : AppColors.error;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: bannerColor.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: bannerColor.withValues(alpha: 0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(isSuccess ? Icons.check_circle : Icons.warning_amber_rounded, color: bannerColor),
              const SizedBox(width: 8),
              Text(
                isSuccess ? 'លទ្ធផល៖ វិជ្ជមាន និងប្រកបដោយវិជ្ជាជីវៈ' : 'លទ្ធផល៖ អាចបង្កបញ្ហាប្រឈម',
                style: TextStyle(color: bannerColor, fontWeight: FontWeight.bold, fontSize: 14),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            'ផលជះជាក់ស្ដែង (Outcome): ${option.outcomeKh}',
            style: const TextStyle(fontSize: 13, height: 1.4, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          Text(
            'ការវិភាគពីអ្នកជំនាញ (Expert Analysis): ${option.explanationKh}',
            style: const TextStyle(fontSize: 12.5, height: 1.4, color: AppColors.charcoalLight),
          ),
        ],
      ),
    );
  }
}
