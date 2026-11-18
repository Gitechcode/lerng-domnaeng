import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:lerng_domnaeng/core/services/ai_agent_service.dart';
import 'package:lerng_domnaeng/core/theme/app_theme.dart';

class AiCoachScreen extends ConsumerStatefulWidget {
  final String? initialPrompt;

  const AiCoachScreen({super.key, this.initialPrompt});

  @override
  ConsumerState<AiCoachScreen> createState() => _AiCoachScreenState();
}

class _AiCoachScreenState extends ConsumerState<AiCoachScreen> {
  final TextEditingController _inputController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    if (widget.initialPrompt != null && widget.initialPrompt!.isNotEmpty) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.read(aiChatNotifierProvider.notifier).sendUserMessage(widget.initialPrompt!);
      });
    }
  }

  @override
  void dispose() {
    _inputController.dispose();
    _scrollController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  void _sendMessage([String? presetText]) {
    final text = presetText ?? _inputController.text;
    if (text.trim().isEmpty) return;

    if (presetText == null) {
      _inputController.clear();
    }
    _focusNode.unfocus();

    ref.read(aiChatNotifierProvider.notifier).sendUserMessage(text);
    _scrollToBottom();
  }

  List<String> _getPromptsForPersona(FamousLeaderPersona persona) {
    switch (persona) {
      case FamousLeaderPersona.jackMa:
        return [
          'តើត្រូវលើកទឹកចិត្តក្រុមលក់ (Sales Team) ឱ្យក្លាយជាកងទ័ពដែក Iron Army ដោយរបៀបណា?',
          'តើ Alibaba បានឆ្លងកាត់វិបត្តិប្រកួតប្រជែងជាមួយ eBay ដោយក្បួនយុទ្ធសាស្ត្រអ្វីខ្លះ?',
          'តើត្រូវជ្រើសរើសមនុស្សចូលធ្វើការដំបូងយ៉ាងណា ដើម្បីកុំឱ្យជួបមនុស្សមិនត្រូវគ្នា?',
          'ពន្យល់ពីទស្សនៈ «អតិថិជនលេខ ១ បុគ្គលិកលេខ ២ ម្ចាស់ភាគហ៊ុនលេខ ៣» ក្នុងការអនុវត្តជាក់ស្តែង',
        ];
      case FamousLeaderPersona.renZhengfei:
        return [
          'តើត្រូវកសាង «វប្បធម៌ចចក (Wolf Culture)» ក្នុងក្រុមការងារដោយរបៀបណា?',
          'តើ Huawei បានរៀបចំខ្លួនឆ្លងកាត់រដូវរងា និងវិបត្តិទណ្ឌកម្មបន្ទះឈីបដោយរបៀបណា?',
          'តើត្រូវបណ្តុះបណ្តាល និងជ្រើសរើសមេដឹកនាំជំនាន់ក្រោយ (Successor) ដោយរបៀបណា?',
          'តើការចែករំលែកភាគហ៊ុន និងផលប្រយោជន៍ដល់បុគ្គលិក (Employee Ownership) ដំណើរការយ៉ាងណា?',
        ];
      case FamousLeaderPersona.steveJobs:
        return [
          'តើធ្វើដូចម្តេចដើម្បីរៀបចំ Slide Presentation ផលិតផលឱ្យទាក់ទាញបំផុត?',
          'តើធ្វើដូចម្តេចដើម្បីការពារក្រុមហ៊ុនកុំឱ្យធ្លាក់ក្នុង «ភាពមធ្យម (Mediocrity)»?',
          'តើអ្នកគ្រប់គ្រងពេលវេលា និងផ្តោតលើអាទិភាពធំបំផុតដោយរបៀបណា?',
          'ពន្យល់ពីអត្ថន័យ «Stay Hungry, Stay Foolish» សម្រាប់បុគ្គលិកដែលចង់ឡើងតំណែង',
        ];
      case FamousLeaderPersona.leeKuanYew:
        return [
          'តើត្រូវជ្រើសរើសមនុស្សតាមសមត្ថភាព Meritocracy យ៉ាងដូចម្តេចដើម្បីកុំឱ្យមានបក្ខពួក?',
          'តើធ្វើដូចម្តេចដើម្បីទប់ស្កាត់អំពើពុករលួយ និងភាពមិនស្មោះត្រង់ក្នុងស្ថាប័ន?',
          'តើត្រូវដោះស្រាយជាមួយបុគ្គលិកចាស់ៗដែលលែងមានទិន្នផលការងារយ៉ាងដូចម្តេច?',
          'តើអ្វីជាគុណសម្បត្តិសំខាន់បំផុតរបស់មេដឹកនាំដែលសង្គម និងស្ថាប័នត្រូវការ?',
        ];
      case FamousLeaderPersona.elonMusk:
        return [
          'តើធ្វើដូចម្តេចដើម្បីអនុវត្ត First Principles Thinking ក្នុងការងារប្រចាំថ្ងៃ?',
          'តើធ្វើដូចម្តេចដើម្បីបង្កើនល្បឿននៃការបំពេញការងារ ១០ ដង (10x Speed)?',
          'តើគួរដោះស្រាយបែបណាពេលគម្រោងប្រឈមនឹងការបរាជ័យ ៩០%?',
          'របៀបលុបបំបាត់ការិយាធិបតេយ្យ និងកិច្ចប្រជុំឥតប្រយោជន៍ក្នុងក្រុមហ៊ុន',
        ];
      case FamousLeaderPersona.kazuoInamori:
        return [
          'តើទស្សនវិជ្ជា Amoeba Management ជួយបង្កើនទិន្នផលក្រុមហ៊ុនដោយរបៀបណា?',
          'តើអ្នកបានស្រោចស្រង់ Japan Airlines ពីការក្ស័យធនក្នុងរយៈពេលតែ ១៤ ខែដោយវិធីណា?',
          'ពន្យល់អំពីរូបមន្ត៖ លទ្ធផលការងារ = ឥរិយាបថ × ការខិតខំប្រឹងប្រែង × សមត្ថភាព',
          'តើធ្វើដូចម្តេចដើម្បីដឹកនាំមនុស្សដោយសេចក្តីស្មោះត្រង់ និងគុណធម៌?',
        ];
      case FamousLeaderPersona.samAltman:
        return [
          'តើត្រូវរៀបចំជំនាញការងារបែបណាដើម្បីឈ្នះក្នុងយុគសម័យ AGI & Superintelligence?',
          'ពន្យល់ពីគំនិត Exponential Growth នៅក្នុងសំណេរ "How to Be Successful"',
          'តើអ្វីជាគន្លឹះដំបូងគេដើម្បីកសាង Startup ឬផលិតផលដែលមនុស្សស្រឡាញ់?',
          'តើធ្វើដូចម្តេចដើម្បីបង្កើន Self-Belief (ការជឿជាក់លើខ្លួនឯង) ក្នុងការសម្រេចកិច្ចការធំៗ?',
        ];
      case FamousLeaderPersona.jensenHuang:
        return [
          'ហេតុអ្វីបានជាអ្នកជូនពរឱ្យសិស្សានុសិស្ស Stanford ជួបភាពឈឺចាប់ និងទុក្ខលំបាក?',
          'តើ NVIDIA ហ៊ានវិនិយោគលើ GPU AI Computing កាលពី ២០ ឆ្នាំមុនដោយរបៀបណា?',
          'តើអ្វីទៅជាយុទ្ធសាស្ត្រ "Zero Billion Dollar Market"?',
          'តើធ្វើដូចម្តេចដើម្បីលុបបំបាត់ឋានានុក្រម និងធ្វើឱ្យអង្គភាពរត់បានលឿនបំផុត?',
        ];
      case FamousLeaderPersona.jeffBezos:
        return [
          'ពន្យល់អំពីទស្សនវិជ្ជា "Day 1" និងមូលហេតុដែល "Day 2" គឺជាការធ្លាក់ចុះ និងស្លាប់?',
          'តើអ្វីជាភាពខុសគ្នារវាង Type 1 និង Type 2 Decisions?',
          'តើគោលការណ៍ "Two-Pizza Team Rule" ជួយដល់ភាពរហ័សរហួននៃស្ថាប័នយ៉ាងដូចម្តេច?',
          'ហេតុអ្វីបានជា Amazon ហាមឃាត់ការប្រើ Slide PowerPoint ហើយជំនួសដោយ 6-Page Narrative?',
        ];
      case FamousLeaderPersona.leiJun:
        return [
          'ពន្យល់ពីទស្សនវិជ្ជា "ឈរចំផ្លូវខ្យល់ព្យុះ សូម្បីជ្រូកក៏ហោះបាន (Flying Pig)"?',
          'តើរូបមន្ត ៧ តួអក្សរនៃអ៊ីនធឺណិត (ផ្តោត ល្អឥតខ្ចោះ មាត់ចាក់មាត់ លឿន) ប្រើដូចម្តេច?',
          'ហេតុអ្វីបានជា Xiaomi កំណត់ប្រាក់ចំណេញផ្នែករឹង (Hardware Net Margin) មិនឱ្យលើស 5%?',
          'តើអ្នកមានភាពក្លាហានបែបណាក្នុងការប្រឡូកចូលទីផ្សាររថយន្តអគ្គិសនី (Xiaomi SU7 EV)?',
        ];
      case FamousLeaderPersona.ponyMa:
        return [
          'តើអ្វីទៅជាយុទ្ធសាស្ត្រ "Micro-Innovation (微创新)" ក្នុងការកែលម្អផលិតផល?',
          'តើយន្តការប្រកួតប្រជែងផ្ទៃក្នុង (Internal Horse Racing) បង្កើត WeChat បានដោយវិធីណា?',
          'តើអ្នកដឹកនាំដែលស្ងប់ស្ងាត់ (Quiet Leadership) អាចគ្រប់គ្រងក្រុមហ៊ុនបច្ចេកវិទ្យាយក្សដោយរបៀបណា?',
          'តើធ្វើដូចម្តេចដើម្បីកសាងផលិតផលឌីជីថលដែលតភ្ជាប់មនុស្សរាប់ពាន់លាននាក់?',
        ];
      case FamousLeaderPersona.general:
        return [
          '💰 របៀបចរចាសុំដំឡើងប្រាក់ខែ ២០% ទៅ ៣០% ប្រកបដោយភាពជោគជ័យ',
          '📄 ជួយកែសម្រួលសមិទ្ធផលក្នុង CV តាម Google XYZ Formula ឱ្យទាក់ទាញ',
          '🎯 ជួយសាកល្បងសម្ភាសន៍ខ្ញុំសម្រាប់តំណែង Team Lead / Manager',
          '🤝 ដោះស្រាយបញ្ហានៅពេលប្រធានផ្ទាល់មិនសូវឱ្យតម្លៃ ឬគាបសង្កត់ការងារ',
          '📊 របៀបកំណត់ និងតាមដាន OKR / KPI ផ្ទាល់ខ្លួនដើម្បីបង្ហាញថ្នាក់លើ',
        ];
    }
  }

  IconData _getIconForPersona(FamousLeaderPersona persona) {
    switch (persona) {
      case FamousLeaderPersona.jackMa:
        return Icons.military_tech;
      case FamousLeaderPersona.renZhengfei:
        return Icons.shield;
      case FamousLeaderPersona.steveJobs:
        return Icons.lightbulb;
      case FamousLeaderPersona.leeKuanYew:
        return Icons.balance;
      case FamousLeaderPersona.elonMusk:
        return Icons.rocket_launch;
      case FamousLeaderPersona.kazuoInamori:
        return Icons.favorite;
      case FamousLeaderPersona.samAltman:
        return Icons.auto_awesome;
      case FamousLeaderPersona.jensenHuang:
        return Icons.memory;
      case FamousLeaderPersona.jeffBezos:
        return Icons.shopping_cart;
      case FamousLeaderPersona.leiJun:
        return Icons.devices;
      case FamousLeaderPersona.ponyMa:
        return Icons.chat;
      case FamousLeaderPersona.general:
        return Icons.psychology;
    }
  }

  void _showViralQuoteModal(BuildContext context, FamousLeaderPersona persona) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (ctx) => _ViralQuoteShareCard(persona: persona),
    );
  }

  @override
  Widget build(BuildContext context) {
    final chatState = ref.watch(aiChatNotifierProvider);
    final activePersona = chatState.selectedPersona;
    final activeColor = Color(activePersona.colorHex);

    // Auto-scroll when messages update
    ref.listen(aiChatNotifierProvider, (previous, next) {
      if (previous?.messages.length != next.messages.length || previous?.isLoading != next.isLoading) {
        _scrollToBottom();
      }
    });

    return Scaffold(
      backgroundColor: const Color(0xFFF6F8F7),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: activeColor,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withValues(alpha: 0.2),
                border: Border.all(color: Colors.white, width: 1.5),
              ),
              child: Icon(_getIconForPersona(activePersona), color: Colors.white, size: 20),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    activePersona.nameKh,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '${activePersona.company} • DeepSeek & Grok',
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.white.withValues(alpha: 0.85),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.share_outlined, color: Colors.white),
            tooltip: 'ចែករំលែកសម្រង់ទស្សនវិជ្ជា (Share Quote)',
            onPressed: () => _showViralQuoteModal(context, activePersona),
          ),
          IconButton(
            icon: const Icon(Icons.delete_sweep_outlined, color: Colors.white70),
            tooltip: 'សម្អាតការសន្ទនា (Clear Chat)',
            onPressed: () {
              ref.read(aiChatNotifierProvider.notifier).clearChat();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('បានសម្អាតការសន្ទនារួចរាល់'),
                  duration: Duration(seconds: 1),
                ),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // 1. Famous Leaders Council Horizontal Carousel
          _buildFamousLeadersCouncilBar(activePersona),

          // 2. Model Selector Strip (DeepSeek & Grok)
          _buildModelSelector(chatState.currentProvider),

          // 3. Active Persona Quote Banner
          _buildLeaderQuoteBanner(activePersona),

          // 4. Chat Message List
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
              itemCount: chatState.messages.length + (chatState.isLoading ? 1 : 0),
              itemBuilder: (context, index) {
                if (index < chatState.messages.length) {
                  final message = chatState.messages[index];
                  return _buildMessageBubble(message, activePersona);
                } else {
                  return _buildLoadingBubble(chatState.currentProvider, activePersona);
                }
              },
            ),
          ),

          // 5. Dynamic Quick Suggestions Carousel for this Leader
          _buildQuickSuggestions(activePersona),

          // 6. Input Field Container
          _buildInputBar(chatState.isLoading, activeColor),
        ],
      ),
    );
  }

  Widget _buildFamousLeadersCouncilBar(FamousLeaderPersona selected) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 2),
            child: Row(
              children: [
                Icon(Icons.stars_rounded, size: 14, color: AppColors.restrainedGold),
                SizedBox(width: 6),
                Text(
                  'ក្រុមប្រឹក្សាអ្នកដឹកនាំល្បីៗលើពិភពលោក (Famous Leaders Council):',
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: AppColors.charcoal),
                ),
              ],
            ),
          ),
          const SizedBox(height: 6),
          SizedBox(
            height: 90,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
              scrollDirection: Axis.horizontal,
              itemCount: FamousLeaderPersona.values.length,
              separatorBuilder: (_, __) => const SizedBox(width: 8),
              itemBuilder: (context, index) {
                final persona = FamousLeaderPersona.values[index];
                final isSelected = persona == selected;
                final color = Color(persona.colorHex);

                return InkWell(
                  onTap: () {
                    ref.read(aiChatNotifierProvider.notifier).switchPersona(persona);
                  },
                  borderRadius: BorderRadius.circular(12),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    width: 94,
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                    decoration: BoxDecoration(
                      color: isSelected ? color.withValues(alpha: 0.1) : const Color(0xFFF8F9FA),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: isSelected ? color : Colors.grey.shade300,
                        width: isSelected ? 2 : 1,
                      ),
                      boxShadow: isSelected
                          ? [
                              BoxShadow(
                                color: color.withValues(alpha: 0.2),
                                blurRadius: 6,
                                offset: const Offset(0, 2),
                              ),
                            ]
                          : [],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 14,
                          backgroundColor: isSelected ? color : Colors.grey.shade300,
                          child: Icon(
                            _getIconForPersona(persona),
                            size: 16,
                            color: isSelected ? Colors.white : Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          persona.nameKh.split(' ').first,
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: isSelected ? FontWeight.bold : FontWeight.w600,
                            color: isSelected ? color : Colors.black87,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          persona.company.split(' ').first,
                          style: TextStyle(
                            fontSize: 9,
                            color: isSelected ? color.withValues(alpha: 0.8) : AppColors.subtleGray,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildModelSelector(AiProvider current) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
      decoration: BoxDecoration(
        color: const Color(0xFFFDFDFD),
        border: Border(
          bottom: BorderSide(color: Colors.black.withValues(alpha: 0.05)),
        ),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            const Icon(Icons.tune_rounded, size: 14, color: AppColors.subtleGray),
            const SizedBox(width: 6),
            const Text(
              'ម៉ាស៊ីន AI:',
              style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: AppColors.subtleGray),
            ),
            const SizedBox(width: 8),
            _buildProviderChip(
              provider: AiProvider.deepseek,
              isSelected: current == AiProvider.deepseek,
              label: '⚡ DeepSeek-V3',
              color: const Color(0xFF1E88E5),
            ),
            const SizedBox(width: 6),
            _buildProviderChip(
              provider: AiProvider.grok,
              isSelected: current == AiProvider.grok,
              label: '🧠 Grok-4 (xAI)',
              color: const Color(0xFF6A1B9A),
            ),
            const SizedBox(width: 6),
            _buildProviderChip(
              provider: AiProvider.claude,
              isSelected: current == AiProvider.claude,
              label: '🧡 Claude 3.5 Sonnet',
              color: const Color(0xFFD97706),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProviderChip({
    required AiProvider provider,
    required bool isSelected,
    required String label,
    required Color color,
  }) {
    return InkWell(
      onTap: () {
        ref.read(aiChatNotifierProvider.notifier).switchProvider(provider);
      },
      borderRadius: BorderRadius.circular(16),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3.5),
        decoration: BoxDecoration(
          color: isSelected ? color.withValues(alpha: 0.12) : Colors.grey.shade100,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isSelected ? color : Colors.transparent,
            width: 1,
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 10.5,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
            color: isSelected ? color : Colors.black87,
          ),
        ),
      ),
    );
  }

  Widget _buildLeaderQuoteBanner(FamousLeaderPersona persona) {
    final color = Color(persona.colorHex);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.06),
        border: Border(
          bottom: BorderSide(color: color.withValues(alpha: 0.15)),
        ),
      ),
      child: Row(
        children: [
          const Icon(Icons.format_quote, size: 16, color: AppColors.restrainedGold),
          const SizedBox(width: 6),
          Expanded(
            child: Text(
              persona.quoteKh,
              style: TextStyle(
                fontSize: 11,
                fontStyle: FontStyle.italic,
                color: color,
                fontWeight: FontWeight.w600,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          InkWell(
            onTap: () => _showViralQuoteModal(context, persona),
            child: const Icon(Icons.share, size: 13, color: AppColors.subtleGray),
          ),
        ],
      ),
    );
  }

  Widget _buildMessageBubble(AiChatMessage msg, FamousLeaderPersona activePersona) {
    final isUser = msg.role == 'user';
    final timeStr = DateFormat('hh:mm a').format(msg.timestamp);
    final personaColor = Color(activePersona.colorHex);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!isUser) ...[
            CircleAvatar(
              radius: 16,
              backgroundColor: personaColor,
              child: Icon(_getIconForPersona(activePersona), color: Colors.white, size: 18),
            ),
            const SizedBox(width: 8),
          ],
          Flexible(
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.82,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
              decoration: BoxDecoration(
                color: isUser
                    ? const Color(0xFF0F5A47)
                    : (msg.isError ? const Color(0xFFFFEBEE) : Colors.white),
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(16),
                  topRight: const Radius.circular(16),
                  bottomLeft: Radius.circular(isUser ? 16 : 4),
                  bottomRight: Radius.circular(isUser ? 4 : 16),
                ),
                border: Border.all(
                  color: isUser
                      ? Colors.transparent
                      : (msg.isError
                          ? Colors.red.shade200
                          : Colors.black.withValues(alpha: 0.08)),
                  width: 1,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.04),
                    blurRadius: 6,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (!isUser && msg.provider != null) ...[
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(
                            color: personaColor.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            '${activePersona.nameKh} (${activePersona.company})',
                            style: TextStyle(
                              fontSize: 9.5,
                              fontWeight: FontWeight.bold,
                              color: personaColor,
                            ),
                          ),
                        ),
                        const SizedBox(width: 6),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            msg.provider!.displayName,
                            style: const TextStyle(
                              fontSize: 9,
                              color: AppColors.subtleGray,
                            ),
                          ),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {
                            Clipboard.setData(ClipboardData(text: msg.content));
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('បានចម្លងអត្ថបទ (Copied to Clipboard)'),
                                duration: Duration(seconds: 1),
                              ),
                            );
                          },
                          child: const Icon(Icons.copy_rounded, size: 14, color: AppColors.subtleGray),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                  ],
                  SelectableText(
                    msg.content,
                    style: TextStyle(
                      fontSize: 13.5,
                      height: 1.55,
                      color: isUser
                          ? Colors.white
                          : (msg.isError ? Colors.red.shade900 : Colors.black87),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      timeStr,
                      style: TextStyle(
                        fontSize: 9.5,
                        color: isUser
                            ? Colors.white.withValues(alpha: 0.7)
                            : AppColors.subtleGray,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (isUser) ...[
            const SizedBox(width: 8),
            const CircleAvatar(
              radius: 16,
              backgroundColor: Color(0xFF0F5A47),
              child: Icon(Icons.person, color: Colors.white, size: 18),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildLoadingBubble(AiProvider provider, FamousLeaderPersona persona) {
    final color = Color(persona.colorHex);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 16,
            backgroundColor: color,
            child: Icon(_getIconForPersona(persona), color: Colors.white, size: 18),
          ),
          const SizedBox(width: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.black.withValues(alpha: 0.08)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.04),
                  blurRadius: 6,
                ),
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 14,
                  height: 14,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    valueColor: AlwaysStoppedAnimation<Color>(color),
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  '${persona.nameKh} កំពុងរៀបចំការឆ្លើយតប (${provider.displayName})...',
                  style: const TextStyle(fontSize: 12, color: AppColors.subtleGray),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuickSuggestions(FamousLeaderPersona persona) {
    final prompts = _getPromptsForPersona(persona);
    final color = Color(persona.colorHex);

    return Container(
      height: 42,
      margin: const EdgeInsets.only(bottom: 6),
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        scrollDirection: Axis.horizontal,
        itemCount: prompts.length,
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final prompt = prompts[index];
          return ActionChip(
            backgroundColor: Colors.white,
            side: BorderSide(color: color.withValues(alpha: 0.25)),
            label: Text(
              prompt,
              style: TextStyle(fontSize: 11.5, color: color, fontWeight: FontWeight.w600),
            ),
            onPressed: () => _sendMessage(prompt),
          );
        },
      ),
    );
  }

  Widget _buildInputBar(bool isLoading, Color activeColor) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 8,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF2F5F3),
                  borderRadius: BorderRadius.circular(24),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: TextField(
                  controller: _inputController,
                  focusNode: _focusNode,
                  textInputAction: TextInputAction.send,
                  onSubmitted: (_) => _sendMessage(),
                  maxLines: 4,
                  minLines: 1,
                  style: const TextStyle(fontSize: 13.5),
                  decoration: const InputDecoration(
                    hintText: 'សួរសំណួរ ឬពិភាក្សាជាមួយមេដឹកនាំ...',
                    hintStyle: TextStyle(fontSize: 12.5, color: AppColors.subtleGray),
                    border: InputBorder.none,
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            InkWell(
              onTap: isLoading ? null : () => _sendMessage(),
              borderRadius: BorderRadius.circular(24),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: isLoading
                        ? [Colors.grey, Colors.grey.shade400]
                        : [activeColor, activeColor.withValues(alpha: 0.8)],
                  ),
                ),
                child: const Icon(
                  Icons.send_rounded,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ViralQuoteShareCard extends StatelessWidget {
  final FamousLeaderPersona persona;

  const _ViralQuoteShareCard({required this.persona});

  @override
  Widget build(BuildContext context) {
    final color = Color(persona.colorHex);

    return Container(
      padding: const EdgeInsets.all(24),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Drag handle
          Container(
            width: 40,
            height: 4,
            margin: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(2),
            ),
          ),

          // High-end Quote Graphic Card
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [color, color.withValues(alpha: 0.85), const Color(0xFF1B1B1B)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: color.withValues(alpha: 0.35),
                  blurRadius: 16,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.2),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(Icons.school, color: AppColors.restrainedGold, size: 18),
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          'ឡើងដំណែង — LERNG DOMNAENG',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                      decoration: BoxDecoration(
                        color: AppColors.restrainedGold,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Text(
                        'LEADERSHIP WISDOM',
                        style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w900,
                          color: Color(0xFF073327),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Icon(Icons.format_quote_rounded, color: AppColors.restrainedGold, size: 36),
                const SizedBox(height: 8),
                Text(
                  persona.quoteKh,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.white.withValues(alpha: 0.2),
                      child: Text(
                        persona.nameKh.substring(0, 1),
                        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          persona.nameKh,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '${persona.nameEn} • ${persona.company}',
                          style: TextStyle(
                            color: Colors.white.withValues(alpha: 0.75),
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // Actions
          Row(
            children: [
              Expanded(
                child: OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  onPressed: () {
                    Clipboard.setData(ClipboardData(
                      text: '${persona.quoteKh}\n— ${persona.nameKh} (${persona.company})\n\nចែករំលែកពីកម្មវិធី «ឡើងដំណែង — Lerng Domnaeng» (Smart Career Coach Platform)',
                    ));
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('បានចម្លងសម្រង់ទស្សនវិជ្ជា (Copied for Sharing)!'),
                        backgroundColor: Color(0xFF0F5A47),
                      ),
                    );
                  },
                  icon: const Icon(Icons.copy_rounded, size: 16),
                  label: const Text('ចម្លងទុក (Copy Text)'),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0F5A47),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  onPressed: () {
                    Clipboard.setData(ClipboardData(
                      text: '🌟 សម្រង់ទស្សនវិជ្ជាដឹកនាំលំដាប់ពិភពលោក:\n${persona.quoteKh}\n\n— ${persona.nameKh} (${persona.company})\n\nចូលរៀន និងពិភាក្សាជាមួយ AI Career Coach នៅ: https://lerngdomnaeng.kh',
                    ));
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('បានរៀបចំរួចរាល់សម្រាប់ចែករំលែកទៅកាន់ Telegram & Facebook! 🎉'),
                        backgroundColor: Color(0xFF073327),
                      ),
                    );
                  },
                  icon: const Icon(Icons.share, size: 16),
                  label: const Text('ចែករំលែក (Share)'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
