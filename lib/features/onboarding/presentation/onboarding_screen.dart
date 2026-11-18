import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lerng_domnaeng/core/theme/app_theme.dart';
import 'package:lerng_domnaeng/features/auth/domain/user_model.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentStep = 0;
  CareerLevel selectedCurrentLevel = CareerLevel.junior;
  CareerLevel selectedTargetLevel = CareerLevel.teamLeader;
  String selectedCompanyContext = 'SME';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('កំណត់គោលដៅការងាររបស់អ្នក'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Progress Indicator
            LinearProgressIndicator(
              value: (currentStep + 1) / 3,
              backgroundColor: AppColors.borderGray,
              color: AppColors.primaryGreen,
            ),
            const SizedBox(height: 24),

            if (currentStep == 0) ...[
              const Text(
                '១. តើបច្ចុប្បន្នអ្នកស្ថិតក្នុងកម្រិតការងារណា?',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ListView(
                  children: CareerLevel.values.map((level) {
                    return RadioListTile<CareerLevel>(
                      title: Text(level.khLabel),
                      subtitle: Text(level.enLabel),
                      value: level,
                      groupValue: selectedCurrentLevel,
                      activeColor: AppColors.primaryGreen,
                      onChanged: (val) {
                        if (val != null) setState(() => selectedCurrentLevel = val);
                      },
                    );
                  }).toList(),
                ),
              ),
            ] else if (currentStep == 1) ...[
              const Text(
                '២. តើតួនាទីគោលដៅបន្ទាប់របស់អ្នកគឺជាអ្វី?',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ListView(
                  children: CareerLevel.values.map((level) {
                    return RadioListTile<CareerLevel>(
                      title: Text(level.khLabel),
                      subtitle: Text(level.enLabel),
                      value: level,
                      groupValue: selectedTargetLevel,
                      activeColor: AppColors.primaryGreen,
                      onChanged: (val) {
                        if (val != null) setState(() => selectedTargetLevel = val);
                      },
                    );
                  }).toList(),
                ),
              ),
            ] else ...[
              const Text(
                '៣. បរិបទកន្លែងការងាររបស់អ្នក (Company Context)',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              ListTile(
                title: const Text('អាជីវកម្មខ្នាតតូច និងមធ្យម (SME)'),
                subtitle: const Text('ក្រុមការងារតូច ត្រូវធ្វើការច្រើនផ្នែក និងទំនាក់ទំនងផ្ទាល់ជាមួយម្ចាស់អាជីវកម្ម'),
                leading: Radio<String>(
                  value: 'SME',
                  groupValue: selectedCompanyContext,
                  activeColor: AppColors.primaryGreen,
                  onChanged: (val) => setState(() => selectedCompanyContext = val!),
                ),
              ),
              ListTile(
                title: const Text('ក្រុមហ៊ុនធំ / សាជីវកម្ម (Corporate)'),
                subtitle: const Text('មានរចនាសម្ព័ន្ធការងារជាប្រព័ន្ធ និងនាយកដ្ឋានច្បាស់លាស់'),
                leading: Radio<String>(
                  value: 'Corporate',
                  groupValue: selectedCompanyContext,
                  activeColor: AppColors.primaryGreen,
                  onChanged: (val) => setState(() => selectedCompanyContext = val!),
                ),
              ),
            ],

            const SizedBox(height: 16),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (currentStep > 0)
                  OutlinedButton(
                    onPressed: () => setState(() => currentStep--),
                    child: const Text('ថយក្រោយ'),
                  )
                else
                  const SizedBox.shrink(),
                ElevatedButton(
                  onPressed: () {
                    if (currentStep < 2) {
                      setState(() => currentStep++);
                    } else {
                      context.go('/home');
                    }
                  },
                  child: Text(currentStep == 2 ? 'ចាប់ផ្ដើមការរៀន' : 'បន្តទៅមុខ'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
