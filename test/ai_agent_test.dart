import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lerng_domnaeng/core/services/ai_agent_service.dart';

void main() {
  group('AiAgentService & ChatNotifier Tests', () {
    test('Default welcome message and provider initialization', () {
      final container = ProviderContainer();
      addTearDown(container.dispose);

      final state = container.read(aiChatNotifierProvider);
      expect(state.currentProvider, equals(AiProvider.deepseek));
      expect(state.messages.length, greaterThanOrEqualTo(1));
      expect(state.messages.first.role, equals('assistant'));
      expect(state.messages.first.content, contains('គ្រូ AI ឡើងដំណែង'));
    });

    test('Switch provider between DeepSeek, Grok, and Claude', () {
      final container = ProviderContainer();
      addTearDown(container.dispose);

      final notifier = container.read(aiChatNotifierProvider.notifier);
      notifier.switchProvider(AiProvider.grok);
      expect(container.read(aiChatNotifierProvider).currentProvider, equals(AiProvider.grok));

      notifier.switchProvider(AiProvider.claude);
      expect(container.read(aiChatNotifierProvider).currentProvider, equals(AiProvider.claude));

      notifier.switchProvider(AiProvider.deepseek);
      expect(container.read(aiChatNotifierProvider).currentProvider, equals(AiProvider.deepseek));
    });

    test('AiChatMessage serialization to OpenAI JSON format', () {
      final msg = AiChatMessage(
        id: 'test_1',
        role: 'user',
        content: 'តើត្រូវចរចាប្រាក់ខែយ៉ាងដូចម្តេច?',
        timestamp: DateTime.now(),
      );

      final json = msg.toApiJson();
      expect(json['role'], equals('user'));
      expect(json['content'], equals('តើត្រូវចរចាប្រាក់ខែយ៉ាងដូចម្តេច?'));
    });

    test('Switch persona to Jack Ma and Steve Jobs', () {
      final container = ProviderContainer();
      addTearDown(container.dispose);

      final notifier = container.read(aiChatNotifierProvider.notifier);
      notifier.switchPersona(FamousLeaderPersona.jackMa);
      expect(container.read(aiChatNotifierProvider).selectedPersona, equals(FamousLeaderPersona.jackMa));
      expect(container.read(aiChatNotifierProvider).messages.first.content, contains('Jack Ma'));

      notifier.switchPersona(FamousLeaderPersona.steveJobs);
      expect(container.read(aiChatNotifierProvider).selectedPersona, equals(FamousLeaderPersona.steveJobs));
      expect(container.read(aiChatNotifierProvider).messages.first.content, contains('Steve Jobs'));

      notifier.switchPersona(FamousLeaderPersona.samAltman);
      expect(container.read(aiChatNotifierProvider).selectedPersona, equals(FamousLeaderPersona.samAltman));
      expect(container.read(aiChatNotifierProvider).messages.first.content, contains('Sam Altman'));

      notifier.switchPersona(FamousLeaderPersona.jensenHuang);
      expect(container.read(aiChatNotifierProvider).selectedPersona, equals(FamousLeaderPersona.jensenHuang));
      expect(container.read(aiChatNotifierProvider).messages.first.content, contains('Jensen Huang'));

      notifier.switchPersona(FamousLeaderPersona.jeffBezos);
      expect(container.read(aiChatNotifierProvider).selectedPersona, equals(FamousLeaderPersona.jeffBezos));
      expect(container.read(aiChatNotifierProvider).messages.first.content, contains('Jeff Bezos'));

      notifier.switchPersona(FamousLeaderPersona.leiJun);
      expect(container.read(aiChatNotifierProvider).selectedPersona, equals(FamousLeaderPersona.leiJun));
      expect(container.read(aiChatNotifierProvider).messages.first.content, contains('Lei Jun'));

      notifier.switchPersona(FamousLeaderPersona.ponyMa);
      expect(container.read(aiChatNotifierProvider).selectedPersona, equals(FamousLeaderPersona.ponyMa));
      expect(container.read(aiChatNotifierProvider).messages.first.content, contains('Pony Ma'));
    });
  });
}
