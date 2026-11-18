import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lerng_domnaeng/core/services/ai_agent_service.dart';

/// Repository handling data communication for AI Coach Feature
class AiCoachRepository {
  final Ref _ref;

  AiCoachRepository(this._ref);

  Future<AiChatMessage> askCoach({
    required List<AiChatMessage> history,
    required AiProvider provider,
    String? customSystemPrompt,
  }) async {
    final service = _ref.read(aiAgentServiceProvider);
    return service.sendMessage(
      history: history,
      preferredProvider: provider,
      customSystemPrompt: customSystemPrompt,
    );
  }
}

final aiCoachRepositoryProvider = Provider<AiCoachRepository>((ref) {
  return AiCoachRepository(ref);
});
