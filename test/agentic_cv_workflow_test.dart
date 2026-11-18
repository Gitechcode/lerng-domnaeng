import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lerng_domnaeng/core/services/agentic_cv_workflow_service.dart';
import 'package:lerng_domnaeng/core/services/telegram_alert_service.dart';
import 'package:lerng_domnaeng/core/services/app_data_sync_service.dart';

void main() {
  group('Telegram Alert Service Tests', () {
    late TelegramAlertService telegramService;

    setUp(() {
      telegramService = TelegramAlertService();
    });

    test('Initializes with default bot token and chat ID', () {
      final config = telegramService.currentConfig;
      expect(config.isEnabled, true);
      expect(config.chatId.isNotEmpty, true);
      expect(config.botToken.isNotEmpty, true);
    });

    test('Can update configuration and mute alerts', () {
      telegramService.updateConfig(
        botToken: '999999:TEST_TOKEN',
        chatId: '-10099999999',
        isEnabled: false,
      );

      final config = telegramService.currentConfig;
      expect(config.botToken, '999999:TEST_TOKEN');
      expect(config.chatId, '-10099999999');
      expect(config.isEnabled, false);
    });

    test('Sends alert successfully with fallback simulation when offline/sandboxed', () async {
      final result = await telegramService.sendCandidateCvAlert(
        candidateName: 'Chann Vathana',
        phone: '012 888 777',
        email: 'vathana@gmail.com',
        targetRole: 'Senior Java Backend Engineer',
        careerLevel: 'Senior Level',
        salaryExpectation: '\$1,800 / month',
        skills: ['Java 21', 'Spring Boot 3', 'Docker', 'PostgreSQL'],
        aiScore: 92,
        aiSummary: 'បេក្ខជនមានសមត្ថភាពខ្ពស់ និងបទពិសោធន៍រឹងមាំលើ Java & Spring Boot។',
        suggestedQuestions: [
          'តើអ្នកប្រើ Virtual Threads ក្នុង Java 21 ដើម្បីបង្កើន Concurrency ដោយរបៀបណា?',
          'តើអ្នករៀបចំ Distributed Transactions ក្នុង Microservices យ៉ាងដូចម្តេច?',
        ],
        googleXyzRating: 'Excellent (A+)',
      );

      expect(result['success'], true);
      expect(result.containsKey('isMock'), true);
    });
  });

  group('Agentic CV Drop Workflow Tests', () {
    late ProviderContainer container;

    setUp(() {
      container = ProviderContainer();
    });

    tearDown(() {
      container.dispose();
    });

    test('Executes autonomous workflow and saves to AppDataSync with AI Score & Telegram status', () async {
      final workflowService = container.read(agenticCvWorkflowServiceProvider);
      final syncNotifier = container.read(appDataSyncProvider.notifier);

      final stepsObserved = <WorkflowStep>[];
      final dossier = await workflowService.processCvDrop(
        candidateName: 'Tep Bopha',
        phone: '011 222 333',
        email: 'bopha.tep@gmail.com',
        targetRole: 'HR Director',
        careerLevel: 'Senior Management',
        summary: 'អ្នកដឹកនាំធនធានមនុស្សដែលមានបទពិសោធន៍ជាង ៨ ឆ្នាំក្នុងការកសាងវប្បធម៌ស្ថាប័ន',
        skills: ['HR Strategy', 'Talent Acquisition', 'OKRs', 'Conflict Resolution'],
        experienceXyz: 'សម្រេចបានការកាត់បន្ថយអត្រាលាលែងការងារ (Turnover) ពី 18% មកត្រឹម 5% តាមរយៈការបង្កើតកម្មវិធី Mentor-Mentee និងប្រព័ន្ធ Incentive យុត្តិធម៌។',
        education: 'Master of Human Resource Management (BBU)',
        salaryExpectation: '\$2,500 / month',
        fullCvText: 'TEP BOPHA - HR DIRECTOR RESUME',
        onProgress: (step, progress) {
          stepsObserved.add(step);
        },
      );

      expect(dossier.aiScore >= 80, true);
      expect(dossier.googleXyzRating.isNotEmpty, true);
      expect(dossier.aiSummary.isNotEmpty, true);
      expect(dossier.suggestedQuestions.isNotEmpty, true);
      expect(stepsObserved.contains(WorkflowStep.parsing), true);
      expect(stepsObserved.contains(WorkflowStep.completed), true);

      // Verify stored in AppDataSync
      expect(syncNotifier.cvSubmissions.isNotEmpty, true);
      final latestCv = syncNotifier.cvSubmissions.first;
      expect(latestCv.userName, 'Tep Bopha');
      expect(latestCv.targetTitle, 'HR Director');
      expect((latestCv.aiScore ?? 0) >= 80, true);
      expect(latestCv.aiSummary?.isNotEmpty, true);
      expect(latestCv.suggestedQuestions?.isNotEmpty, true);

      // Verify audit log entry
      final auditLog = syncNotifier.auditLogs.first;
      expect(auditLog.tag, 'AGENTIC_AI');
      expect((auditLog.details ?? '').contains('Tep Bopha'), true);
    });
  });
}
