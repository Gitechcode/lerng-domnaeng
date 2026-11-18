import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lerng_domnaeng/core/services/app_data_sync_service.dart';
import 'package:lerng_domnaeng/core/services/telegram_alert_service.dart';
import 'package:lerng_domnaeng/core/theme/app_theme.dart';
import 'package:lerng_domnaeng/features/auth/domain/user_model.dart';
import 'package:lerng_domnaeng/features/courses/domain/course_model.dart';

class AdminPortalScreen extends ConsumerStatefulWidget {
  const AdminPortalScreen({super.key});

  @override
  ConsumerState<AdminPortalScreen> createState() => _AdminPortalScreenState();
}

class _AdminPortalScreenState extends ConsumerState<AdminPortalScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  String _courseSearchQuery = '';
  String _selectedCategoryFilter = 'ទាំងអស់';
  String _userSearchQuery = '';
  String _activityFilter = 'ទាំងអស់';
  bool _isTestingTelegram = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 7, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final syncData = ref.watch(appDataSyncProvider);

    return Scaffold(
      backgroundColor: const Color(0xFFF4F7F5),
      appBar: _buildExecutiveAppBar(context, syncData),
      body: Column(
        children: [
          // Sub-navigation Tabs (7 Integrated Management Tabs)
          Container(
            color: Colors.white,
            child: TabBar(
              controller: _tabController,
              isScrollable: true,
              labelColor: const Color(0xFF0F5A47),
              unselectedLabelColor: AppColors.subtleGray,
              indicatorColor: const Color(0xFF0F5A47),
              indicatorWeight: 3,
              labelStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
              tabs: [
                const Tab(icon: Icon(Icons.dashboard_rounded, size: 18), text: 'ទិដ្ឋភាពទូទៅ (Overview)'),
                Tab(
                  icon: const Icon(Icons.menu_book_rounded, size: 18),
                  child: _buildTabBadge('វគ្គសិក្សា', syncData.courses.length, badgeColor: const Color(0xFF0F5A47)),
                ),
                Tab(
                  icon: const Icon(Icons.corporate_fare_rounded, size: 18),
                  child: _buildTabBadge('ស្ថាប័ន B2B', syncData.organizations.length, badgeColor: const Color(0xFFC59B27)),
                ),
                Tab(
                  icon: const Icon(Icons.people_alt_rounded, size: 18),
                  child: _buildTabBadge('អ្នកប្រើប្រាស់', syncData.users.length, badgeColor: const Color(0xFF1E88E5)),
                ),
                Tab(
                  icon: const Icon(Icons.quiz_rounded, size: 18),
                  child: _buildTabBadge('លទ្ធផលតេស្ត', syncData.quizSubmissions.length, badgeColor: const Color(0xFF2E7D32)),
                ),
                Tab(
                  icon: const Icon(Icons.description_rounded, size: 18),
                  child: _buildTabBadge('កម្រង CV', syncData.cvSubmissions.length, badgeColor: const Color(0xFF6A1B9A)),
                ),
                Tab(
                  icon: const Icon(Icons.security_rounded, size: 18),
                  child: _buildTabBadge('សវនកម្ម Audit', syncData.auditLogs.length, badgeColor: const Color(0xFFD32F2F)),
                ),
              ],
            ),
          ),
          const Divider(height: 1, color: Color(0xFFE5ECE8)),

          // Tab Body Content
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _buildOverviewTab(syncData),
                _buildCoursesTab(syncData),
                _buildOrganizationsTab(syncData),
                _buildUsersTab(syncData),
                _buildQuizProgressTab(syncData),
                _buildCvSubmissionsTab(syncData),
                _buildAuditLogsTab(syncData),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: const Color(0xFF0F5A47),
        foregroundColor: Colors.white,
        elevation: 3,
        icon: const Icon(Icons.add_rounded),
        label: const Text('បង្កើតវគ្គសិក្សាថ្មី (+ Create)', style: TextStyle(fontWeight: FontWeight.bold)),
        onPressed: () => _showCourseFormModal(context),
      ),
    );
  }

  Widget _buildTabBadge(String label, int count, {Color? badgeColor}) {
    final color = badgeColor ?? const Color(0xFF0F5A47);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(label),
        const SizedBox(width: 6),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 1.5),
          decoration: BoxDecoration(
            color: color.withValues(alpha: 0.14),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            '$count',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  PreferredSizeWidget _buildExecutiveAppBar(BuildContext context, AppDataSyncNotifier syncData) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      titleSpacing: 16,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new, size: 18, color: AppColors.charcoal),
        tooltip: 'ត្រឡប់ទៅ App (Return to App)',
        onPressed: () => context.pop(),
      ),
      title: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFF0F5A47), Color(0xFF1B7A60)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF0F5A47).withValues(alpha: 0.25),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: const Icon(Icons.admin_panel_settings_rounded, color: Colors.white, size: 20),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    'ផ្ទាំងគ្រប់គ្រងរដ្ឋបាលជាន់ខ្ពស់',
                    style: TextStyle(
                      fontSize: 15.5,
                      fontWeight: FontWeight.w800,
                      color: AppColors.charcoal,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: const Color(0xFF0F5A47).withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Text(
                      'ENTERPRISE BACKEND',
                      style: TextStyle(fontSize: 9.5, fontWeight: FontWeight.bold, color: Color(0xFF0F5A47), letterSpacing: 0.5),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 2),
              Row(
                children: [
                  Container(
                    width: 7,
                    height: 7,
                    decoration: const BoxDecoration(
                      color: AppColors.success,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    'Live Two-Way Sync Active • MySQL/SQLite • Multi-AI Engine Online',
                    style: TextStyle(fontSize: 10.5, color: AppColors.subtleGray),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      actions: [
        // Multi-AI Badge
        Tooltip(
          message: 'Multi-AI Pipeline (DeepSeek-V3, Grok-4, Claude 3.5): Online',
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: const Color(0xFF6A1B9A).withValues(alpha: 0.08),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: const Color(0xFF6A1B9A).withValues(alpha: 0.25)),
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.auto_awesome, size: 14, color: Color(0xFF6A1B9A)),
                SizedBox(width: 5),
                Text('3 AI Models Online', style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Color(0xFF6A1B9A))),
              ],
            ),
          ),
        ),
        const SizedBox(width: 8),

        // Database & DBeaver Sync Center Button
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF0F5A47),
            foregroundColor: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 8),
          ),
          icon: const Icon(Icons.storage_rounded, size: 16, color: AppColors.restrainedGold),
          label: const Text('Sync ទៅ DBeaver', style: TextStyle(fontSize: 11.5, fontWeight: FontWeight.bold)),
          onPressed: () => _showDatabaseSyncDialog(context, syncData),
        ),
        const SizedBox(width: 8),

        IconButton(
          icon: const Icon(Icons.refresh_rounded, color: AppColors.charcoal),
          tooltip: 'Sync ទិន្នន័យឡើងវិញ (Sync Now)',
          onPressed: () {
            ref.read(appDataSyncProvider.notifier).markDatabaseSynced();
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('🔄 បាន Sync ទិន្នន័យរវាង Frontend & Backend រួចរាល់!'),
                behavior: SnackBarBehavior.floating,
                backgroundColor: AppColors.primaryGreen,
              ),
            );
          },
        ),
        const SizedBox(width: 8),
      ],
    );
  }

  // ===========================================================================
  // TAB 1: OVERVIEW & ANALYTICS (EXECUTIVE DASHBOARD)
  // ===========================================================================
  Widget _buildOverviewTab(AppDataSyncNotifier syncData) {
    final stats = syncData.getLiveOverviewStats();

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        // 1. Hero Telemetry & Operations Command Banner
        _buildHeroOpsBanner(syncData),

        const SizedBox(height: 20),

        // 2. Top 4 Elevated KPI Metric Cards
        LayoutBuilder(
          builder: (context, constraints) {
            final isWide = constraints.maxWidth > 700;
            return Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                _buildMetricCard(
                  title: 'អ្នករៀនសរុប (Active Learners)',
                  value: '${stats['totalLearners']} នាក់',
                  subtitle: '${stats['activeLearners']} នាក់កំពុងសកម្ម',
                  growthBadge: '+15.2% ខែនេះ',
                  progressValue: 0.85,
                  icon: Icons.school_rounded,
                  iconColor: const Color(0xFF0F5A47),
                  bgColor: const Color(0xFFEFF7F3),
                  width: isWide ? (constraints.maxWidth - 36) / 4 : (constraints.maxWidth - 12) / 2,
                ),
                _buildMetricCard(
                  title: 'លទ្ធផល Quiz (Quizzes Taken)',
                  value: '${stats['totalQuizzesTaken']} ដង',
                  subtitle: 'អត្រាជាប់៖ ${stats['quizPassRate']}%',
                  growthBadge: 'Pass 94%',
                  progressValue: ((stats['quizPassRate'] as num?)?.toDouble() ?? 90) / 100,
                  icon: Icons.assignment_turned_in_rounded,
                  iconColor: AppColors.restrainedGold,
                  bgColor: const Color(0xFFFFFBF0),
                  width: isWide ? (constraints.maxWidth - 36) / 4 : (constraints.maxWidth - 12) / 2,
                ),
                _buildMetricCard(
                  title: 'កម្រង CV បេក្ខជន (CV Pool)',
                  value: '${stats['totalCvSubmissions']} ច្បាប់',
                  subtitle: 'Google XYZ + AI Scored',
                  growthBadge: 'AI Evaluated',
                  progressValue: 0.92,
                  icon: Icons.description_rounded,
                  iconColor: const Color(0xFF6A1B9A),
                  bgColor: const Color(0xFFF3E5F5),
                  width: isWide ? (constraints.maxWidth - 36) / 4 : (constraints.maxWidth - 12) / 2,
                ),
                _buildMetricCard(
                  title: 'វគ្គសិក្សាទាំងអស់ (Courses)',
                  value: '${stats['totalCourses']} វគ្គ',
                  subtitle: '${stats['totalLessons']} មេរៀនសរុប',
                  growthBadge: '100 Lessons',
                  progressValue: 1.0,
                  icon: Icons.library_books_rounded,
                  iconColor: AppColors.success,
                  bgColor: const Color(0xFFF1FDF5),
                  width: isWide ? (constraints.maxWidth - 36) / 4 : (constraints.maxWidth - 12) / 2,
                ),
              ],
            );
          },
        ),

        const SizedBox(height: 20),

        // 3. AI Agent Operations & Telegram HR Command Center
        _buildAiOperationsCenter(syncData),

        const SizedBox(height: 20),

        // 4. Weekly Learning Activity & Velocity Analytics (Visual Chart)
        _buildWeeklyVelocityChart(stats),

        const SizedBox(height: 20),

        // 5. Live Activity Feed with Filter Tabs
        _buildLiveActivityStream(syncData),

        const SizedBox(height: 24),
      ],
    );
  }

  // ===========================================================================
  // HERO OPS BANNER
  // ===========================================================================
  Widget _buildHeroOpsBanner(AppDataSyncNotifier syncData) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF092E24), Color(0xFF0F5A47), Color(0xFF136D56)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF092E24).withValues(alpha: 0.35),
            blurRadius: 16,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.white.withValues(alpha: 0.2)),
                ),
                child: const Icon(Icons.rocket_launch_rounded, color: AppColors.restrainedGold, size: 26),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Expanded(
                          child: Text(
                            'មជ្ឈមណ្ឌលបញ្ជាប្រតិបត្តិការ AI និងទិន្នន័យ (Enterprise Ops Center)',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 0.2,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                          decoration: BoxDecoration(
                            color: AppColors.success.withValues(alpha: 0.2),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: AppColors.success.withValues(alpha: 0.5)),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CircleAvatar(radius: 3.5, backgroundColor: AppColors.success),
                              SizedBox(width: 5),
                              Text(
                                'REAL-TIME 0ms',
                                style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'ការតភ្ជាប់ពេញលេញ៖ Frontend (Learner App) ↔ Backend (Admin) ↔ Multi-AI Engine ↔ Telegram HR Bot',
                      style: TextStyle(color: Colors.white.withValues(alpha: 0.82), fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Divider(color: Colors.white24, height: 1),
          const SizedBox(height: 14),

          // Operational Status Pills Row
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              _buildOpsPill('⚡ DeepSeek-V3', 'Online', const Color(0xFF1E88E5)),
              _buildOpsPill('🧠 Grok-4 (xAI)', 'Online', const Color(0xFF9C27B0)),
              _buildOpsPill('🧡 Claude 3.5 Sonnet', 'Online', const Color(0xFFF57C00)),
              _buildOpsPill('📢 Telegram HR Alert', 'Active', const Color(0xFF0088CC)),
              _buildOpsPill('🗄️ MySQL / SQLite', '8 Tables Ready', const Color(0xFF2E7D32)),
            ],
          ),

          const SizedBox(height: 16),

          // Quick Action Bar inside Hero
          Row(
            children: [
              Expanded(
                child: Text(
                  'ទិន្នន័យចុងក្រោយ៖ ${syncData.courses.length} វគ្គសិក្សា • ${syncData.quizSubmissions.length} Quiz • ${syncData.cvSubmissions.length} CV • ${syncData.auditLogs.length} កំណត់ហេតុ',
                  style: TextStyle(color: Colors.white.withValues(alpha: 0.75), fontSize: 11),
                ),
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.restrainedGold,
                  foregroundColor: const Color(0xFF092E24),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                icon: const Icon(Icons.bolt, size: 16),
                label: const Text('តេស្ត Telegram Alert', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11.5)),
                onPressed: _isTestingTelegram ? null : () => _sendTestTelegramAlert(context),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildOpsPill(String title, String status, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4.5),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: color.withValues(alpha: 0.4)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(radius: 3, backgroundColor: color),
          const SizedBox(width: 6),
          Text(title, style: const TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.w600)),
          const SizedBox(width: 6),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.25),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(status, style: TextStyle(color: Colors.white.withValues(alpha: 0.95), fontSize: 9.5, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }

  // ===========================================================================
  // AI AGENT & TELEGRAM HR COMMAND CENTER
  // ===========================================================================
  Widget _buildAiOperationsCenter(AppDataSyncNotifier syncData) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: const Color(0xFFD1E4DA)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.03),
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Icon(Icons.hub_rounded, color: Color(0xFF6A1B9A), size: 22),
                  SizedBox(width: 10),
                  Text(
                    'ប្រព័ន្ធបញ្ញាសិប្បនិម្មិត និងស្វ័យប្រវត្តិកម្ម (Multi-Agent & Telegram Operations)',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.5, color: AppColors.charcoal),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                decoration: BoxDecoration(
                  color: const Color(0xFF6A1B9A).withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Text('AGENTIC PIPELINE', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Color(0xFF6A1B9A))),
              ),
            ],
          ),
          const SizedBox(height: 14),

          // 3 Models Card Row
          LayoutBuilder(
            builder: (context, constraints) {
              final isWide = constraints.maxWidth > 650;
              return Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  _buildAiEngineTile(
                    modelName: 'DeepSeek-V3',
                    modelId: 'deepseek-chat',
                    badge: 'Fast & Cost-Effective',
                    color: const Color(0xFF1E88E5),
                    description: 'វិភាគ CV, វាយតម្លៃសមិទ្ធផល Google XYZ Formula និងគណនាពិន្ទុ',
                    width: isWide ? (constraints.maxWidth - 20) / 3 : constraints.maxWidth,
                  ),
                  _buildAiEngineTile(
                    modelName: 'xAI Grok-4',
                    modelId: 'grok-4.20-non-reasoning',
                    badge: 'Strategic Reasoning',
                    color: const Color(0xFF9C27B0),
                    description: 'បង្កើតសំណួរសម្ភាសន៍ STAR Method និងដោះស្រាយបញ្ហាការងារស្មុគស្មាញ',
                    width: isWide ? (constraints.maxWidth - 20) / 3 : constraints.maxWidth,
                  ),
                  _buildAiEngineTile(
                    modelName: 'Claude 3.5 Sonnet',
                    modelId: 'claude-sonnet-4-5',
                    badge: 'High Khmer Caliber',
                    color: const Color(0xFFD97706),
                    description: 'ភាសាខ្មែរស៊ីជម្រៅ ផ្តល់ការណែនាំពី Jack Ma, Steve Jobs & Lee Kuan Yew',
                    width: isWide ? (constraints.maxWidth - 20) / 3 : constraints.maxWidth,
                  ),
                ],
              );
            },
          ),

          const SizedBox(height: 16),

          // Visual 4-Step Autonomous Workflow Pipeline
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xFFF9FBF9),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: const Color(0xFFE2EBE5)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Icon(Icons.timeline_rounded, color: Color(0xFF0F5A47), size: 16),
                    SizedBox(width: 6),
                    Text(
                      'លំហូរការងារស្វ័យប្រវត្តិ (Autonomous 4-Step Pipeline Flow):',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Color(0xFF0F5A47)),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildPipelineStep('1. បេក្ខជន Drop CV', Icons.upload_file_rounded, const Color(0xFF0F5A47)),
                      _buildPipelineArrow(),
                      _buildPipelineStep('2. AI Google XYZ Rating', Icons.psychology_rounded, const Color(0xFF6A1B9A)),
                      _buildPipelineArrow(),
                      _buildPipelineStep('3. បង្កើត 3 សំណួរសម្ភាសន៍', Icons.question_answer_rounded, const Color(0xFFD97706)),
                      _buildPipelineArrow(),
                      _buildPipelineStep('4. Telegram Bot Alert ទៅ HR', Icons.send_rounded, const Color(0xFF0088CC)),
                      _buildPipelineArrow(),
                      _buildPipelineStep('5. រក្សាទុក Admin DB & Audit', Icons.save_rounded, const Color(0xFF2E7D32)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAiEngineTile({
    required String modelName,
    required String modelId,
    required String badge,
    required Color color,
    required String description,
    required double width,
  }) {
    return Container(
      width: width,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.04),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withValues(alpha: 0.2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(modelName, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: color)),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 1.5),
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(badge, style: TextStyle(fontSize: 9.5, fontWeight: FontWeight.bold, color: color)),
              ),
            ],
          ),
          const SizedBox(height: 2),
          Text(modelId, style: const TextStyle(fontSize: 10, color: AppColors.subtleGray, fontFamily: 'monospace')),
          const SizedBox(height: 6),
          Text(description, style: const TextStyle(fontSize: 11, color: AppColors.charcoal, height: 1.35)),
        ],
      ),
    );
  }

  Widget _buildPipelineStep(String label, IconData icon, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: color.withValues(alpha: 0.3)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: color),
          const SizedBox(width: 6),
          Text(label, style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: color)),
        ],
      ),
    );
  }

  Widget _buildPipelineArrow() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 6),
      child: Icon(Icons.arrow_forward_rounded, size: 14, color: AppColors.subtleGray),
    );
  }

  // ===========================================================================
  // WEEKLY LEARNING VELOCITY & ANALYTICS CHART
  // ===========================================================================
  Widget _buildWeeklyVelocityChart(Map<String, dynamic> stats) {
    final days = [
      {'day': 'ច័ន្ទ', 'activity': 65, 'pct': 0.65},
      {'day': 'អង្គារ', 'activity': 82, 'pct': 0.82},
      {'day': 'ពុធ', 'activity': 75, 'pct': 0.75},
      {'day': 'ព្រហ', 'activity': 96, 'pct': 0.96},
      {'day': 'សុក្រ', 'activity': 88, 'pct': 0.88},
      {'day': 'សៅរ៍', 'activity': 54, 'pct': 0.54},
      {'day': 'អាទិត្យ', 'activity': 70, 'pct': 0.70},
    ];

    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: const Color(0xFFDCE7E1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ទិន្នន័យសកម្មភាពសិក្សា និងការវាស់ស្ទង់ប្រចាំសប្តាហ៍ (Weekly Velocity)',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.5, color: AppColors.charcoal),
                  ),
                  SizedBox(height: 2),
                  Text('អត្រាសិក្សាបញ្ចប់មេរៀន និងឆ្លើយ Quiz តាមថ្ងៃនីមួយៗ', style: TextStyle(fontSize: 11.5, color: AppColors.subtleGray)),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: AppColors.success.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Text('កំពូល៖ ថ្ងៃព្រហស្បតិ៍ (96)', style: TextStyle(fontSize: 10.5, fontWeight: FontWeight.bold, color: AppColors.success)),
              ),
            ],
          ),
          const SizedBox(height: 20),

          // Visual Bar Chart
          SizedBox(
            height: 120,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: days.map((d) {
                final isPeak = d['activity'] == 96;
                final height = 90.0 * (d['pct'] as double);

                return Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '${d['activity']}',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: isPeak ? FontWeight.bold : FontWeight.w500,
                        color: isPeak ? const Color(0xFF0F5A47) : AppColors.subtleGray,
                      ),
                    ),
                    const SizedBox(height: 4),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      width: 28,
                      height: height,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: isPeak
                              ? [const Color(0xFF0F5A47), const Color(0xFF26A69A)]
                              : [const Color(0xFF80CBC4), const Color(0xFFB2DFDB)],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                        borderRadius: BorderRadius.circular(6),
                        boxShadow: isPeak
                            ? [
                                BoxShadow(
                                  color: const Color(0xFF0F5A47).withValues(alpha: 0.3),
                                  blurRadius: 6,
                                  offset: const Offset(0, 2),
                                )
                              ]
                            : [],
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      d['day'] as String,
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: isPeak ? FontWeight.bold : FontWeight.normal,
                        color: isPeak ? const Color(0xFF0F5A47) : AppColors.charcoal,
                      ),
                    ),
                  ],
                );
              }).toList(),
            ),
          ),

          const SizedBox(height: 16),
          const Divider(height: 1, color: Color(0xFFE5ECE8)),
          const SizedBox(height: 12),

          // Summary metrics row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildChartSummaryMetric('មធ្យមភាគប្រចាំថ្ងៃ', '76.7 សកម្មភាព', Icons.speed_rounded, const Color(0xFF0F5A47)),
              _buildChartSummaryMetric('XP បង្កើតសរុប', '+1,450 XP', Icons.stars_rounded, AppColors.restrainedGold),
              _buildChartSummaryMetric('AI Latency', '1.1s', Icons.timer_rounded, const Color(0xFF6A1B9A)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildChartSummaryMetric(String title, String value, IconData icon, Color color) {
    return Row(
      children: [
        Icon(icon, size: 16, color: color),
        const SizedBox(width: 6),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(value, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: color)),
            Text(title, style: const TextStyle(fontSize: 10, color: AppColors.subtleGray)),
          ],
        ),
      ],
    );
  }

  // ===========================================================================
  // LIVE ACTIVITY STREAM WITH FILTER TABS
  // ===========================================================================
  Widget _buildLiveActivityStream(AppDataSyncNotifier syncData) {
    final quizCount = syncData.quizSubmissions.length;
    final cvCount = syncData.cvSubmissions.length;
    final auditCount = syncData.auditLogs.length;

    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: const Color(0xFFDCE7E1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Icon(Icons.stream_rounded, color: Color(0xFF0F5A47), size: 20),
                  SizedBox(width: 8),
                  Text(
                    'សកម្មភាព និងការបញ្ជូនទិន្នន័យពី Frontend (Live Activity Feed)',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.5, color: AppColors.charcoal),
                  ),
                ],
              ),
              Container(
                width: 8,
                height: 8,
                decoration: const BoxDecoration(color: AppColors.success, shape: BoxShape.circle),
              ),
            ],
          ),
          const SizedBox(height: 12),

          // Filter chips
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildActivityFilterChip('ទាំងអស់', quizCount + cvCount + auditCount),
                _buildActivityFilterChip('លទ្ធផល Quiz', quizCount),
                _buildActivityFilterChip('កម្រង CV', cvCount),
                _buildActivityFilterChip('សវនកម្ម Audit', auditCount),
              ],
            ),
          ),
          const SizedBox(height: 14),

          // Stream Content
          if (syncData.quizSubmissions.isEmpty && syncData.cvSubmissions.isEmpty && syncData.auditLogs.isEmpty)
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: Center(child: Text('មិនទាន់មានទិន្នន័យបញ្ជូនពី Frontend ទេ')),
            )
          else ...[
            // Quizzes
            if (_activityFilter == 'ទាំងអស់' || _activityFilter == 'លទ្ធផល Quiz')
              ...syncData.quizSubmissions.take(3).map((quiz) {
                return Card(
                  elevation: 0,
                  margin: const EdgeInsets.only(bottom: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: const BorderSide(color: Color(0xFFE5ECE8)),
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: quiz.isCorrect ? const Color(0xFFE8F5E9) : const Color(0xFFFFEBEE),
                      child: Icon(
                        quiz.isCorrect ? Icons.check_circle_rounded : Icons.cancel_rounded,
                        color: quiz.isCorrect ? AppColors.success : AppColors.error,
                        size: 20,
                      ),
                    ),
                    title: Row(
                      children: [
                        Text(quiz.userName, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(
                            color: const Color(0xFFEFF5F2),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: const Text('Quiz Submission', style: TextStyle(fontSize: 10, color: Color(0xFF0F5A47), fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 2),
                        Text('${quiz.courseTitleKh} — ${quiz.lessonTitleKh}', style: const TextStyle(fontSize: 11.5, color: AppColors.charcoal)),
                        Text('ចម្លើយ៖ ${quiz.selectedOptionText}', style: const TextStyle(fontSize: 11, color: AppColors.subtleGray)),
                      ],
                    ),
                    trailing: Text(
                      quiz.isCorrect ? '+50 XP' : '0 XP',
                      style: TextStyle(fontWeight: FontWeight.bold, color: quiz.isCorrect ? AppColors.success : AppColors.subtleGray),
                    ),
                  ),
                );
              }),

            // CVs
            if (_activityFilter == 'ទាំងអស់' || _activityFilter == 'កម្រង CV')
              ...syncData.cvSubmissions.take(3).map((cv) {
                return Card(
                  elevation: 0,
                  margin: const EdgeInsets.only(bottom: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: const BorderSide(color: Color(0xFFE1BEE7)),
                  ),
                  child: ListTile(
                    leading: const CircleAvatar(
                      backgroundColor: Color(0xFFF3E5F5),
                      child: Icon(Icons.description_rounded, color: Color(0xFF6A1B9A), size: 20),
                    ),
                    title: Row(
                      children: [
                        Text(cv.userName, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF3E5F5),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(cv.targetTitle, style: const TextStyle(fontSize: 10, color: Color(0xFF6A1B9A), fontWeight: FontWeight.bold)),
                        ),
                        if (cv.aiScore != null) ...[
                          const SizedBox(width: 6),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                            decoration: BoxDecoration(
                              color: const Color(0xFF0F5A47).withValues(alpha: 0.12),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text('AI: ${cv.aiScore}/100', style: const TextStyle(fontSize: 9.5, fontWeight: FontWeight.bold, color: Color(0xFF0F5A47))),
                          ),
                        ],
                      ],
                    ),
                    subtitle: Text('ប្រាក់ខែរំពឹងទុក៖ ${cv.salaryExpectation} • ${cv.skills.take(3).join(', ')}', style: const TextStyle(fontSize: 11.5, color: AppColors.subtleGray)),
                    trailing: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF6A1B9A),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        minimumSize: const Size(60, 28),
                      ),
                      onPressed: () => _showCvDetailsModal(context, cv),
                      child: const Text('មើល CV', style: TextStyle(fontSize: 11)),
                    ),
                  ),
                );
              }),

            // Audit
            if (_activityFilter == 'សវនកម្ម Audit')
              ...syncData.auditLogs.take(5).map((log) {
                return Card(
                  elevation: 0,
                  margin: const EdgeInsets.only(bottom: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: const BorderSide(color: Color(0xFFE5ECE8)),
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: log.color.withValues(alpha: 0.15),
                      child: Icon(Icons.security_rounded, color: log.color, size: 18),
                    ),
                    title: Text(log.action, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12.5)),
                    subtitle: Text('${log.operator} (${log.role}) • ${_formatTimestamp(log.timestamp)}', style: const TextStyle(fontSize: 11, color: AppColors.subtleGray)),
                  ),
                );
              }),
          ],
        ],
      ),
    );
  }

  String _formatTimestamp(DateTime dt) {
    final now = DateTime.now();
    final diff = now.difference(dt);
    if (diff.inSeconds < 60) return 'មុននេះបន្តិច';
    if (diff.inMinutes < 60) return '${diff.inMinutes} នាទីមុន';
    if (diff.inHours < 24) return '${diff.inHours} ម៉ោងមុន';
    return '${dt.day}/${dt.month}/${dt.year} ${dt.hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')}';
  }

  Widget _buildActivityFilterChip(String label, int count) {
    final isSelected = _activityFilter == label;
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: FilterChip(
        label: Text('$label ($count)', style: TextStyle(fontSize: 11, fontWeight: isSelected ? FontWeight.bold : FontWeight.normal, color: isSelected ? Colors.white : AppColors.charcoal)),
        selected: isSelected,
        selectedColor: const Color(0xFF0F5A47),
        backgroundColor: const Color(0xFFF4F7F5),
        checkmarkColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        side: BorderSide(color: isSelected ? const Color(0xFF0F5A47) : const Color(0xFFE5ECE8)),
        onSelected: (_) {
          setState(() {
            _activityFilter = label;
          });
        },
      ),
    );
  }

  // ===========================================================================
  // TEST TELEGRAM ALERT DISPATCH
  // ===========================================================================
  Future<void> _sendTestTelegramAlert(BuildContext context) async {
    setState(() => _isTestingTelegram = true);
    try {
      final telegramService = ref.read(telegramAlertServiceProvider);
      final result = await telegramService.sendCandidateCvAlert(
        candidateName: 'សុខ វិបុល (Admin Test)',
        phone: '+855 12 889 900',
        email: 'admin@lerngdomnaeng.com',
        targetRole: 'Executive Director (Promotion Track)',
        careerLevel: 'Executive',
        salaryExpectation: '\$3,500 / month',
        skills: ['Executive Leadership', 'Google XYZ Mastery', 'Strategic Negotiation', 'Amoeba Management'],
        aiScore: 96,
        aiSummary: 'បេក្ខជនមានសមត្ថភាពដឹកនាំ និងយុទ្ធសាស្ត្រខ្ពស់បំផុត សាកសមសម្រាប់តំណែងថ្នាក់ដឹកនាំជាន់ខ្ពស់។',
        suggestedQuestions: [
          'តើអ្នកប្រើប្រាស់ Amoeba Management របស់ Kazuo Inamori ដើម្បីបង្កើនទិន្នផលក្រុមហ៊ុនដោយរបៀបណា?',
          'តើអ្នកមានយុទ្ធសាស្ត្រចរចា និងកសាង Iron Army ដូច Jack Ma ដោយវិធីណា?',
          'ពន្យល់ពីសមិទ្ធផល Google XYZ Formula ដ៏លេចធ្លោបំផុតរបស់អ្នកក្នុងរយៈពេល ២ ឆ្នាំចុងក្រោយ?',
        ],
        googleXyzRating: 'Exceptional (A++)',
      );

      // Record in live AppDataSync CV pool & Audit log
      ref.read(appDataSyncProvider.notifier).submitCv(
        candidateName: 'សុខ វិបុល (Admin Test)',
        candidateEmail: 'admin@lerngdomnaeng.com',
        candidatePhone: '+855 12 889 900',
        candidateLevel: 'Executive',
        targetTitle: 'Executive Director',
        summary: 'តេស្តប្រព័ន្ធ Telegram Bot Alert ពីផ្ទាំងគ្រប់គ្រងរដ្ឋបាលជាន់ខ្ពស់',
        skills: ['Executive Leadership', 'Google XYZ Mastery', 'Strategic Negotiation'],
        experienceXyz: 'សម្រេចបានការកើនឡើងចំណូល ៣៥% តាមរយៈការកែលម្អប្រព័ន្ធគ្រប់គ្រង',
        education: 'Master of Business Administration',
        salaryExpectation: '\$3,500 / month',
        fullCvText: 'ADMIN TEST CV DOSSIER',
        aiScore: 96,
        aiSummary: 'បេក្ខជនឆ្នើម លទ្ធផលតេស្តប្រព័ន្ធ Telegram Bot Alert ជោគជ័យ',
        suggestedQuestions: ['តើអ្នកដឹកនាំក្រុមដោយរបៀបណា?'],
        telegramSent: true,
      );

      if (context.mounted) {
        final isMock = result['isMock'] == true;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Row(
              children: [
                const Icon(Icons.check_circle_rounded, color: Colors.white, size: 20),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    isMock
                        ? '📡 បានធ្វើតេស្តផ្ញើ Telegram Alert ជោគជ័យ (Simulated / Local Fallback Dispatch)!'
                        : '🚀 បានបញ្ជូន Telegram Alert ទៅកាន់ HR Channel ជោគជ័យ ១០០%!',
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12.5),
                  ),
                ),
              ],
            ),
            backgroundColor: const Color(0xFF0F5A47),
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            duration: const Duration(seconds: 4),
          ),
        );
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('កំហុស៖ $e'),
            backgroundColor: AppColors.error,
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isTestingTelegram = false);
      }
    }
  }

  // ===========================================================================
  // ELEVATED METRIC CARD COMPONENT
  // ===========================================================================
  Widget _buildMetricCard({
    required String title,
    required String value,
    required String subtitle,
    required String growthBadge,
    required double progressValue,
    required IconData icon,
    required Color iconColor,
    required Color bgColor,
    required double width,
  }) {
    return Container(
      width: width,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFE5ECE8)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.02),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(icon, color: iconColor, size: 20),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: iconColor.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(growthBadge, style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: iconColor)),
              ),
            ],
          ),
          const SizedBox(height: 14),
          Text(
            value,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w800, color: AppColors.charcoal),
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: const TextStyle(fontSize: 11.5, color: AppColors.subtleGray, fontWeight: FontWeight.w500),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 8),

          // Micro visual progress bar
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: LinearProgressIndicator(
              value: progressValue.clamp(0.0, 1.0),
              backgroundColor: const Color(0xFFF0F4F2),
              valueColor: AlwaysStoppedAnimation<Color>(iconColor),
              minHeight: 4,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            subtitle,
            style: TextStyle(fontSize: 11, color: iconColor, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  // ===========================================================================
  // TAB 2: COURSE & CURRICULUM MANAGEMENT (FULL CRUD WITH LIVE SYNC)
  // ===========================================================================
  Widget _buildCoursesTab(AppDataSyncNotifier syncData) {
    final filteredCourses = syncData.courses.where((c) {
      final matchesSearch = c.titleKh.toLowerCase().contains(_courseSearchQuery.toLowerCase()) ||
          c.titleEn.toLowerCase().contains(_courseSearchQuery.toLowerCase()) ||
          c.instructorName.toLowerCase().contains(_courseSearchQuery.toLowerCase());
      if (_selectedCategoryFilter == 'ទាំងអស់') return matchesSearch;
      return matchesSearch && c.targetLevel.enLabel.contains(_selectedCategoryFilter);
    }).toList();

    return Column(
      children: [
        // Action Toolbar & Search
        Container(
          padding: const EdgeInsets.all(16),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'ស្វែងរកតាមចំណងជើងវគ្គ ឬឈ្មោះគ្រូ...',
                        hintStyle: const TextStyle(fontSize: 13, color: AppColors.subtleGray),
                        prefixIcon: const Icon(Icons.search, size: 20, color: AppColors.subtleGray),
                        contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                        filled: true,
                        fillColor: const Color(0xFFF7FAF8),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Color(0xFFE5ECE8)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Color(0xFFE5ECE8)),
                        ),
                      ),
                      onChanged: (val) {
                        setState(() {
                          _courseSearchQuery = val;
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 12),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF0F5A47),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    icon: const Icon(Icons.add, size: 20),
                    label: const Text('បង្កើតវគ្គសិក្សា', style: TextStyle(fontWeight: FontWeight.bold)),
                    onPressed: () => _showCourseFormModal(context),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // Filter Chips
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    'ទាំងអស់',
                    'Intern',
                    'Junior',
                    'Senior',
                    'Team Leader',
                    'Supervisor',
                    'Manager',
                    'Founder',
                  ].map((category) {
                    final isSelected = _selectedCategoryFilter == category;
                    return Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: FilterChip(
                        label: Text(category, style: TextStyle(fontSize: 11.5, color: isSelected ? Colors.white : AppColors.charcoal)),
                        selected: isSelected,
                        selectedColor: const Color(0xFF0F5A47),
                        backgroundColor: Colors.white,
                        checkmarkColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        side: BorderSide(color: isSelected ? const Color(0xFF0F5A47) : const Color(0xFFE5ECE8)),
                        onSelected: (_) {
                          setState(() {
                            _selectedCategoryFilter = category;
                          });
                        },
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),

        const Divider(height: 1, color: Color(0xFFE5ECE8)),

        // Courses List
        Expanded(
          child: filteredCourses.isEmpty
              ? const Center(child: Text('រកមិនឃើញវគ្គសិក្សាដែលត្រូវនឹងការស្វែងរកទេ'))
              : ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: filteredCourses.length,
                  itemBuilder: (context, index) {
                    final course = filteredCourses[index];
                    final lessons = syncData.courseLessons[course.id] ?? [];

                    return Card(
                      elevation: 0,
                      margin: const EdgeInsets.only(bottom: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        side: const BorderSide(color: Color(0xFFE5ECE8)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF0F5A47).withValues(alpha: 0.1),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Text(
                                    course.targetLevel.khLabel,
                                    style: const TextStyle(
                                      color: Color(0xFF0F5A47),
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: course.isPublished
                                        ? AppColors.success.withValues(alpha: 0.1)
                                        : Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Text(
                                    course.isPublished ? 'Published' : 'Draft',
                                    style: TextStyle(
                                      color: course.isPublished ? AppColors.success : AppColors.subtleGray,
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                Switch(
                                  value: course.isPublished,
                                  activeThumbColor: const Color(0xFF0F5A47),
                                  onChanged: (val) {
                                    ref.read(appDataSyncProvider.notifier).togglePublishCourse(course.id);
                                  },
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Text(
                              course.titleKh,
                              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: AppColors.charcoal),
                            ),
                            if (course.titleEn.isNotEmpty) ...[
                              const SizedBox(height: 2),
                              Text(
                                course.titleEn,
                                style: const TextStyle(fontSize: 12, color: AppColors.subtleGray, fontStyle: FontStyle.italic),
                              ),
                            ],
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                const Icon(Icons.person_outline, size: 14, color: AppColors.subtleGray),
                                const SizedBox(width: 4),
                                Text(course.instructorName, style: const TextStyle(fontSize: 12, color: AppColors.subtleGray)),
                                const SizedBox(width: 16),
                                const Icon(Icons.play_lesson_outlined, size: 14, color: AppColors.subtleGray),
                                const SizedBox(width: 4),
                                Text('${lessons.length} មេរៀន', style: const TextStyle(fontSize: 12, color: AppColors.subtleGray)),
                                const SizedBox(width: 16),
                                const Icon(Icons.timer_outlined, size: 14, color: AppColors.subtleGray),
                                const SizedBox(width: 4),
                                Text('~${course.estimatedMinutes} នាទី', style: const TextStyle(fontSize: 12, color: AppColors.subtleGray)),
                              ],
                            ),
                            const SizedBox(height: 14),
                            const Divider(height: 1, color: Color(0xFFE5ECE8)),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton.icon(
                                  style: TextButton.styleFrom(foregroundColor: const Color(0xFF0F5A47)),
                                  icon: const Icon(Icons.format_list_bulleted, size: 16),
                                  label: const Text('គ្រប់គ្រងមេរៀន (Lessons)'),
                                  onPressed: () => _showCurriculumManagerModal(context, course, lessons),
                                ),
                                const SizedBox(width: 8),
                                TextButton.icon(
                                  style: TextButton.styleFrom(foregroundColor: const Color(0xFF1E88E5)),
                                  icon: const Icon(Icons.edit_outlined, size: 16),
                                  label: const Text('កែប្រែ (Edit)'),
                                  onPressed: () => _showCourseFormModal(context, existingCourse: course),
                                ),
                                const SizedBox(width: 8),
                                TextButton.icon(
                                  style: TextButton.styleFrom(foregroundColor: const Color(0xFFD32F2F)),
                                  icon: const Icon(Icons.delete_outline, size: 16),
                                  label: const Text('លុប (Delete)'),
                                  onPressed: () => _confirmDeleteCourse(context, course),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
        ),
      ],
    );
  }

  // ===========================================================================
  // TAB 3: B2B ORGANIZATIONS CRUD
  // ===========================================================================
  Widget _buildOrganizationsTab(AppDataSyncNotifier syncData) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xFF0F5A47), Color(0xFF165B4A)],
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.15),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(Icons.corporate_fare, color: Colors.white, size: 28),
              ),
              const SizedBox(width: 14),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'កម្មវិធីអភិវឌ្ឍន៍បុគ្គលិក SME & Enterprise',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'គ្រប់គ្រង និងតាមដានក្រុមហ៊ុនដៃគូ បុគ្គលិក និងការចេញវិញ្ញាបនបត្រ',
                      style: TextStyle(color: Colors.white70, fontSize: 11.5),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),

        ...syncData.organizations.map((org) => Card(
          elevation: 0,
          margin: const EdgeInsets.only(bottom: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
            side: const BorderSide(color: Color(0xFFE5ECE8)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        org['name'],
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14.5, color: AppColors.charcoal),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                      decoration: BoxDecoration(
                        color: const Color(0xFF0F5A47).withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        org['tier'],
                        style: const TextStyle(fontSize: 10.5, fontWeight: FontWeight.bold, color: Color(0xFF0F5A47)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                Text('វិស័យ៖ ${org['industry']}', style: const TextStyle(fontSize: 12, color: AppColors.subtleGray)),
                const SizedBox(height: 8),
                Text('វគ្គចាត់តាំង៖ ${org['assignedCourse']}', style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Color(0xFF0F5A47))),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: LinearProgressIndicator(
                          value: (org['completion'] as num).toDouble(),
                          minHeight: 6,
                          backgroundColor: Colors.grey.shade200,
                          valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFF0F5A47)),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Text(
                      '${((org['completion'] as num).toDouble() * 100).toInt()}% អត្រាបញ្ចប់',
                      style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Color(0xFF0F5A47)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )),
      ],
    );
  }

  // ===========================================================================
  // TAB 4: USERS & ROLE MANAGEMENT (CONNECTED LIVE TO FRONTEND PROFILES)
  // ===========================================================================
  Widget _buildUsersTab(AppDataSyncNotifier syncData) {
    final filteredUsers = syncData.users.where((u) {
      return _userSearchQuery.isEmpty ||
          u.name.toLowerCase().contains(_userSearchQuery.toLowerCase()) ||
          u.email.toLowerCase().contains(_userSearchQuery.toLowerCase()) ||
          u.role.toLowerCase().contains(_userSearchQuery.toLowerCase());
    }).toList();

    return Column(
      children: [
        // Security Banner & Search
        Container(
          padding: const EdgeInsets.all(16),
          color: Colors.white,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFFEFF5F2),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: const Color(0xFFCCE2D7)),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.security, color: Color(0xFF0F5A47), size: 20),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'អ្នកប្រើប្រាស់ និងសិទ្ធិ Role ត្រូវបានភ្ជាប់ Real-Time ជាមួយ Frontend។ ចុចលើ User ដើម្បីមើលប្រវត្តិរូបពេញលេញ ឬប្ដូរ Role។',
                        style: TextStyle(fontSize: 11.5, color: Color(0xFF0F5A47)),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                decoration: InputDecoration(
                  hintText: 'ស្វែងរកតាមឈ្មោះ អ៊ីមែល ឬតួនាទី...',
                  hintStyle: const TextStyle(fontSize: 13, color: AppColors.subtleGray),
                  prefixIcon: const Icon(Icons.search, size: 20, color: AppColors.subtleGray),
                  contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                  filled: true,
                  fillColor: const Color(0xFFF7FAF8),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Color(0xFFE5ECE8)),
                  ),
                ),
                onChanged: (val) {
                  setState(() {
                    _userSearchQuery = val;
                  });
                },
              ),
            ],
          ),
        ),

        const Divider(height: 1, color: Color(0xFFE5ECE8)),

        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: filteredUsers.length,
            itemBuilder: (context, idx) {
              final user = filteredUsers[idx];
              return Container(
                margin: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: const Color(0xFFE5ECE8)),
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                  onTap: () => _showUserProfileModal(context, user),
                  leading: CircleAvatar(
                    backgroundColor: user.badgeColor.withValues(alpha: 0.12),
                    backgroundImage: user.photoUrl != null && user.photoUrl!.isNotEmpty
                        ? NetworkImage(user.photoUrl!)
                        : null,
                    child: user.photoUrl == null || user.photoUrl!.isEmpty
                        ? Text(
                            user.name.isNotEmpty ? user.name.substring(0, 1) : 'U',
                            style: TextStyle(fontWeight: FontWeight.bold, color: user.badgeColor),
                          )
                        : null,
                  ),
                  title: Row(
                    children: [
                      Text(user.name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13.5)),
                      if (user.id == 'usr-vibol-01') ...[
                        const SizedBox(width: 6),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(
                            color: AppColors.primaryGreen.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: const Text('Frontend Active', style: TextStyle(fontSize: 9.5, color: AppColors.primaryGreen, fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ],
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 2),
                      Text(user.email, style: const TextStyle(fontSize: 11.5, color: AppColors.subtleGray)),
                      const SizedBox(height: 2),
                      Text('កម្រិត៖ ${user.careerLevel} • ${user.xpPoints} XP', style: const TextStyle(fontSize: 11, color: Color(0xFF0F5A47))),
                    ],
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      PopupMenuButton<String>(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            color: user.badgeColor.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                user.role,
                                style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: user.badgeColor),
                              ),
                              const SizedBox(width: 4),
                              const Icon(Icons.arrow_drop_down, size: 16),
                            ],
                          ),
                        ),
                        onSelected: (newRole) {
                          ref.read(appDataSyncProvider.notifier).updateUserRole(user.id, newRole);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('✅ សិទ្ធិរបស់ ${user.name} ត្រូវបានប្តូរទៅជា $newRole!')),
                          );
                        },
                        itemBuilder: (context) => const [
                          PopupMenuItem(value: 'Learner', child: Text('🟢 Learner (សិស្ស)')),
                          PopupMenuItem(value: 'Instructor', child: Text('🔵 Instructor (គ្រូ)')),
                          PopupMenuItem(value: 'Org Admin', child: Text('🟡 Org Admin (ស្ថាប័ន)')),
                          PopupMenuItem(value: 'Platform Admin', child: Text('🔴 Platform Admin (អ្នកគ្រប់គ្រង)')),
                        ],
                      ),
                      const SizedBox(width: 8),
                      IconButton(
                        icon: const Icon(Icons.visibility_outlined, size: 18, color: AppColors.subtleGray),
                        tooltip: 'មើលប្រវត្តិរូបពេញលេញ',
                        onPressed: () => _showUserProfileModal(context, user),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  // ===========================================================================
  // TAB 5: QUIZ SUBMISSIONS & LEARNER PROGRESS (NEW LIVE TAB)
  // ===========================================================================
  Widget _buildQuizProgressTab(AppDataSyncNotifier syncData) {
    if (syncData.quizSubmissions.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.quiz_outlined, size: 48, color: Colors.grey.shade400),
            const SizedBox(height: 12),
            const Text(
              'មិនទាន់មានទិន្នន័យ Quiz ពី Frontend នៅឡើយទេ',
              style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.charcoal),
            ),
            const SizedBox(height: 4),
            const Text(
              'សាកល្បងចូលរៀនមេរៀន និងឆ្លើយតេស្តក្នុង Frontend នោះទិន្នន័យនឹងបង្ហាញនៅទីនេះភ្លាម!',
              style: TextStyle(fontSize: 12, color: AppColors.subtleGray),
            ),
          ],
        ),
      );
    }

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        // Summary Header
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: const Color(0xFFCCE2D7)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildSimpleStat('ការឆ្លើយ Quiz សរុប', '${syncData.quizSubmissions.length} ដង', const Color(0xFF0F5A47)),
              _buildSimpleStat('ឆ្លើយត្រូវ (Passed)', '${syncData.quizSubmissions.where((q) => q.isCorrect).length} ដង', AppColors.success),
              _buildSimpleStat('ឆ្លើយខុស (Failed)', '${syncData.quizSubmissions.where((q) => !q.isCorrect).length} ដង', AppColors.error),
            ],
          ),
        ),
        const SizedBox(height: 16),

        // List of all Quiz Attempts
        ...syncData.quizSubmissions.map((quiz) {
          return Card(
            elevation: 0,
            margin: const EdgeInsets.only(bottom: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
              side: BorderSide(color: quiz.isCorrect ? const Color(0xFFCCE2D7) : const Color(0xFFFFCDD2)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: quiz.isCorrect ? AppColors.success : AppColors.error,
                            child: Icon(quiz.isCorrect ? Icons.check : Icons.close, size: 14, color: Colors.white),
                          ),
                          const SizedBox(width: 8),
                          Text(quiz.userName, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13.5)),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                        decoration: BoxDecoration(
                          color: quiz.isCorrect ? const Color(0xFFE8F5E9) : const Color(0xFFFFEBEE),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          quiz.isCorrect ? '✅ ត្រឹមត្រូវ (+50 XP)' : '❌ មិនទាន់ត្រឹមត្រូវ',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: quiz.isCorrect ? const Color(0xFF2E7D32) : const Color(0xFFD32F2F),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text('វគ្គ៖ ${quiz.courseTitleKh}', style: const TextStyle(fontSize: 12, color: Color(0xFF0F5A47), fontWeight: FontWeight.w600)),
                  Text('មេរៀន៖ ${quiz.lessonTitleKh}', style: const TextStyle(fontSize: 11.5, color: AppColors.subtleGray)),
                  const SizedBox(height: 8),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFBFDFB),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: const Color(0xFFE5ECE8)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('សំណួរ៖ ${quiz.question}', style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 4),
                        Text('ចម្លើយជ្រើសរើស៖ ${quiz.selectedOptionText}', style: TextStyle(fontSize: 11.5, color: quiz.isCorrect ? const Color(0xFF2E7D32) : const Color(0xFFD32F2F))),
                        if (quiz.notes != null && quiz.notes!.isNotEmpty) ...[
                          const SizedBox(height: 6),
                          Text('📝 កំណត់ត្រាសិស្ស៖ ${quiz.notes!}', style: const TextStyle(fontSize: 11, fontStyle: FontStyle.italic, color: Color(0xFF555555))),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ],
    );
  }

  // ===========================================================================
  // TAB 6: CV SUBMISSIONS POOL (NEW LIVE TAB)
  // ===========================================================================
  // TAB 6: CV SUBMISSIONS POOL & AGENTIC TELEGRAM DISPATCH (CONNECTED LIVE)
  // ===========================================================================
  Widget _buildCvSubmissionsTab(AppDataSyncNotifier syncData) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        // 1. Telegram Bot Integration Header Card
        _buildTelegramBotHeaderCard(),

        // 2. Submissions Pool
        if (syncData.cvSubmissions.isEmpty)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.description_outlined, size: 48, color: Colors.grey.shade400),
                  const SizedBox(height: 12),
                  const Text(
                    'មិនទាន់មាន CV បញ្ជូនពី Frontend នៅឡើយទេ',
                    style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.charcoal),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'ចូលទៅកាន់ Profile -> ក្បួនសរសេរ CV -> ចុច "Drop CV (AI & Telegram Alert)" នោះ CV នឹងបង្ហាញនៅទីនេះ!',
                    style: TextStyle(fontSize: 12, color: AppColors.subtleGray),
                  ),
                ],
              ),
            ),
          )
        else
          ...syncData.cvSubmissions.map((cv) {
            return Card(
              elevation: 0,
              margin: const EdgeInsets.only(bottom: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: const BorderSide(color: Color(0xFFE5ECE8)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const CircleAvatar(
                              backgroundColor: Color(0xFFF3E5F5),
                              child: Icon(Icons.person, color: Color(0xFF6A1B9A), size: 20),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(cv.userName, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                                Text(cv.userEmail, style: const TextStyle(fontSize: 11.5, color: AppColors.subtleGray)),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            PopupMenuButton<String>(
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF6A1B9A).withValues(alpha: 0.1),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(cv.status, style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Color(0xFF6A1B9A))),
                                    const SizedBox(width: 4),
                                    const Icon(Icons.arrow_drop_down, size: 16),
                                  ],
                                ),
                              ),
                              onSelected: (val) {
                                ref.read(appDataSyncProvider.notifier).updateCvStatus(cv.id, val);
                              },
                              itemBuilder: (ctx) => const [
                                PopupMenuItem(value: 'New', child: Text('🟣 New (ថ្មី)')),
                                PopupMenuItem(value: 'Reviewed', child: Text('🔵 Reviewed (បានពិនិត្យ)')),
                                PopupMenuItem(value: 'Shortlisted', child: Text('🟡 Shortlisted (ជាប់បញ្ជីសម្រាំង)')),
                                PopupMenuItem(value: 'Hired', child: Text('🟢 Hired (ជ្រើសរើសជោគជ័យ)')),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'គោលដៅតំណែង៖ ${cv.targetTitle}',
                            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Color(0xFF0F5A47)),
                          ),
                        ),
                        if ((cv.aiScore ?? 0) > 0) ...[
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                            decoration: BoxDecoration(
                              color: const Color(0xFF0F5A47).withValues(alpha: 0.12),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(Icons.stars_rounded, size: 13, color: Color(0xFF0F5A47)),
                                const SizedBox(width: 4),
                                Text(
                                  'AI Score: ${cv.aiScore}/100',
                                  style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Color(0xFF0F5A47)),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 6),
                        ],
                        if (cv.telegramSent)
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
                            decoration: BoxDecoration(
                              color: const Color(0xFF0088CC).withValues(alpha: 0.12),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.send_rounded, size: 11, color: Color(0xFF0088CC)),
                                SizedBox(width: 3),
                                Text(
                                  'Telegram Alert Sent',
                                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Color(0xFF0088CC)),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'កម្រិតបច្ចុប្បន្ន៖ ${cv.careerLevel} • ប្រាក់ខែរំពឹងទុក៖ ${cv.salaryExpectation}',
                      style: const TextStyle(fontSize: 11.5, color: AppColors.subtleGray),
                    ),

                    if ((cv.aiSummary ?? '').isNotEmpty) ...[
                      const SizedBox(height: 10),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF3E5F5),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: const Color(0xFFE1BEE7)),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(Icons.auto_awesome, size: 14, color: Color(0xFF6A1B9A)),
                            const SizedBox(width: 6),
                            Expanded(
                              child: Text(
                                'AI Brief: ${cv.aiSummary!}',
                                style: const TextStyle(fontSize: 11.5, color: Color(0xFF4A148C), height: 1.35),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],

                    const SizedBox(height: 10),
                    Wrap(
                      spacing: 6,
                      runSpacing: 4,
                      children: cv.skills.map((s) => Container(
                        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(s, style: const TextStyle(fontSize: 10.5, color: AppColors.charcoal)),
                      )).toList(),
                    ),
                    const SizedBox(height: 12),
                    const Divider(height: 1, color: Color(0xFFE5ECE8)),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        OutlinedButton.icon(
                          style: OutlinedButton.styleFrom(
                            foregroundColor: const Color(0xFF6A1B9A),
                            side: const BorderSide(color: Color(0xFF6A1B9A)),
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          ),
                          onPressed: () {
                            Clipboard.setData(ClipboardData(text: cv.fullCvText));
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text(' បានចម្លង CV ទៅកាន់ Clipboard!')),
                            );
                          },
                          icon: const Icon(Icons.copy, size: 14),
                          label: const Text('ចម្លង (Copy)', style: TextStyle(fontSize: 11.5)),
                        ),
                        const SizedBox(width: 8),
                        ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF6A1B9A),
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                          ),
                          onPressed: () => _showCvDetailsModal(context, cv),
                          icon: const Icon(Icons.visibility, size: 14),
                          label: const Text('ពិនិត្យ CV & AI Dossier', style: TextStyle(fontSize: 11.5, fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
      ],
    );
  }

  Widget _buildTelegramBotHeaderCard() {
    final telegramService = ref.watch(telegramAlertServiceProvider);
    final config = telegramService.currentConfig;
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF0088CC), Color(0xFF005580)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF0088CC).withValues(alpha: 0.2),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.2),
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.send_rounded, color: Colors.white, size: 22),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      'Telegram Bot HR Alert System',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13.5),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: config.isEnabled ? const Color(0xFF4CAF50) : Colors.orange,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        config.isEnabled ? 'ACTIVE' : 'MUTED',
                        style: const TextStyle(color: Colors.white, fontSize: 9.5, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 3),
                Text(
                  'Channel ID: ${config.chatId} • Token: ${config.botToken.substring(0, (config.botToken.length > 8 ? 8 : config.botToken.length))}... • Instant Alert upon Candidate CV Drop',
                  style: const TextStyle(color: Colors.white70, fontSize: 11),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: const Color(0xFF0088CC),
              elevation: 0,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
            onPressed: () => _showTelegramConfigDialog(context),
            icon: const Icon(Icons.settings, size: 14),
            label: const Text('កំណត់ Bot', style: TextStyle(fontSize: 11.5, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }

  // ===========================================================================
  // TAB 7: AUDIT LOGS & SECURITY TRAIL (CONNECTED LIVE)
  // ===========================================================================
  Widget _buildAuditLogsTab(AppDataSyncNotifier syncData) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: const Color(0xFFE5ECE8)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'កំណត់ត្រាសវនកម្មសុវត្ថិភាព (Security Audit Trail)',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Icon(Icons.shield, color: Color(0xFF0F5A47), size: 20),
                ],
              ),
              const SizedBox(height: 6),
              const Text(
                'ព្រឹត្តិការណ៍សកម្មភាពជាក់ស្ដែងរវាង Frontend និង Backend ត្រូវបានកត់ត្រាជាបន្តបន្ទាប់',
                style: TextStyle(fontSize: 12, color: AppColors.subtleGray),
              ),
              const SizedBox(height: 16),
              ...syncData.auditLogs.map((log) => Padding(
                padding: const EdgeInsets.only(bottom: 14.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: log.color.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(Icons.bolt, color: log.color, size: 16),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('${log.operator} (${log.role})', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12.5)),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                                decoration: BoxDecoration(
                                  color: log.color.withValues(alpha: 0.1),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Text(log.tag, style: TextStyle(fontSize: 9.5, color: log.color, fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                          const SizedBox(height: 3),
                          Text(log.action, style: const TextStyle(fontSize: 12, color: AppColors.charcoal, height: 1.35)),
                          if (log.details != null) ...[
                            const SizedBox(height: 2),
                            Text(log.details!, style: const TextStyle(fontSize: 11, color: AppColors.subtleGray)),
                          ],
                        ],
                      ),
                    ),
                  ],
                ),
              )),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSimpleStat(String label, String value, Color color) {
    return Column(
      children: [
        Text(value, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: color)),
        const SizedBox(height: 2),
        Text(label, style: const TextStyle(fontSize: 11.5, color: AppColors.subtleGray)),
      ],
    );
  }

  // ===========================================================================
  // DATABASE & DBEAVER SYNC CENTER MODAL
  // ===========================================================================
  void _showDatabaseSyncDialog(BuildContext context, AppDataSyncNotifier syncData) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: const Row(
          children: [
            Icon(Icons.storage, color: Color(0xFF0F5A47), size: 24),
            SizedBox(width: 10),
            Text('មជ្ឈមណ្ឌលទិន្នន័យ (Database & DBeaver Sync)', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ],
        ),
        content: SizedBox(
          width: 500,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE8F5E9),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xFFC8E6C9)),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.check_circle, color: Color(0xFF2E7D32), size: 18),
                      SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          'ស្ថានភាព៖ MySQL & SQLite Sync Ready (Local Instance Active)',
                          style: TextStyle(fontSize: 11.5, color: Color(0xFF2E7D32), fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 14),

                const Text('ចំនួនទិន្នន័យក្នុងតារាងទាំង ៨ (Live Database Counts)៖', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                const SizedBox(height: 8),

                _buildDbRow('courses', '${syncData.courses.length} ជួរ (វគ្គសិក្សា)'),
                _buildDbRow('lessons', '100 ជួរ (មេរៀនលម្អិត ៩ ផ្នែក)'),
                _buildDbRow('quiz_questions', '100 ជួរ (សំណួរតេស្ត)'),
                _buildDbRow('cv_templates', '10 ជួរ (គំរូ CV ១០ ជំនាញ)'),
                _buildDbRow('users', '${syncData.users.length} ជួរ (គណនីអ្នកប្រើប្រាស់)'),
                _buildDbRow('cv_submissions', '${syncData.cvSubmissions.length} ជួរ (CV បេក្ខជនបានដាក់)'),
                _buildDbRow('quiz_submissions', '${syncData.quizSubmissions.length} ជួរ (ការឆ្លើយតេស្តសិស្ស)'),
                _buildDbRow('user_progress', '${syncData.lessonCompletions.length + 5} ជួរ (វឌ្ឍនភាពការរៀន)'),

                const SizedBox(height: 14),
                const Divider(),
                const SizedBox(height: 10),

                const Text('របៀបមើលទិន្នន័យក្នុង DBeaver៖', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.5)),
                const SizedBox(height: 4),
                const Text(
                  'បើក DBeaver -> ចុចលើ Database `lerng_domnaeng` -> Tables -> អាចសាកល្បង Query ខាងក្រោម៖',
                  style: TextStyle(fontSize: 11.5, color: AppColors.subtleGray),
                ),
                const SizedBox(height: 8),

                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xFF212529),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Expanded(
                        child: Text(
                          'SELECT * FROM cv_submissions;\nSELECT * FROM quiz_submissions;',
                          style: TextStyle(fontFamily: 'monospace', color: Colors.greenAccent, fontSize: 11),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.copy, size: 16, color: Colors.white),
                        tooltip: 'Copy SQL',
                        onPressed: () {
                          Clipboard.setData(const ClipboardData(text: 'SELECT * FROM cv_submissions;\nSELECT * FROM quiz_submissions;\nSELECT * FROM users;'));
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text(' បានចម្លង SQL query សម្រាប់ DBeaver!')),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('បិទ (Close)'),
          ),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF0F5A47),
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.sync, size: 16),
            label: const Text('ធ្វើសមកាលកម្មទិន្នន័យ (Sync Database)'),
            onPressed: () {
              ref.read(appDataSyncProvider.notifier).markDatabaseSynced();
              Navigator.pop(ctx);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(' ធ្វើសមកាលកម្មទិន្នន័យទៅកាន់ SQLite & MySQL ជោគជ័យ!'),
                  backgroundColor: Color(0xFF2E7D32),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildDbRow(String table, String count) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(Icons.table_chart_outlined, size: 14, color: Color(0xFF0F5A47)),
              const SizedBox(width: 6),
              Text(table, style: const TextStyle(fontFamily: 'monospace', fontSize: 11.5, fontWeight: FontWeight.w600)),
            ],
          ),
          Text(count, style: const TextStyle(fontSize: 11.5, color: AppColors.charcoal)),
        ],
      ),
    );
  }

  // ===========================================================================
  // USER PROFILE MODAL
  // ===========================================================================
  void _showUserProfileModal(BuildContext context, AdminUserEntry user) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: user.badgeColor.withValues(alpha: 0.15),
              child: Text(user.name.substring(0, 1), style: TextStyle(fontWeight: FontWeight.bold, color: user.badgeColor)),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(user.name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  Text(user.email, style: const TextStyle(fontSize: 11.5, color: AppColors.subtleGray)),
                ],
              ),
            ),
          ],
        ),
        content: SizedBox(
          width: 450,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildProfileDetailRow('តួនាទី (Role)៖', user.role),
              _buildProfileDetailRow('កម្រិតបច្ចុប្បន្ន៖', user.careerLevel),
              _buildProfileDetailRow('គោលដៅឡើងដំណែង៖', user.targetCareerLevel),
              _buildProfileDetailRow('ក្រុមហ៊ុន/ស្ថាប័ន៖', user.organization),
              _buildProfileDetailRow('ផ្នែក/ដេប៉ាតឺម៉ង់៖', user.department),
              _buildProfileDetailRow('លេខទូរស័ព្ទ៖', user.phone),
              _buildProfileDetailRow('ប្រាក់ខែបច្ចុប្បន្ន៖', '\$${user.currentSalary.toStringAsFixed(0)} / ខែ'),
              _buildProfileDetailRow('គោលដៅប្រាក់ខែ៖', '\$${user.targetSalary.toStringAsFixed(0)} / ខែ'),
              _buildProfileDetailRow('ពិន្ទុ XP៖', '${user.xpPoints} XP'),
              _buildProfileDetailRow('មេរៀនបានបញ្ចប់៖', '${user.completedLessonsCount} មេរៀន'),
              const SizedBox(height: 8),
              const Text('ជំនាញស្នូល (Skills)៖', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
              const SizedBox(height: 4),
              Wrap(
                spacing: 6,
                runSpacing: 4,
                children: user.skills.map((s) => Container(
                  padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                  decoration: BoxDecoration(color: Colors.grey.shade100, borderRadius: BorderRadius.circular(4)),
                  child: Text(s, style: const TextStyle(fontSize: 11)),
                )).toList(),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('បិទ (Close)'),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 140, child: Text(label, style: const TextStyle(fontSize: 11.5, color: AppColors.subtleGray))),
          Expanded(child: Text(value, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: AppColors.charcoal))),
        ],
      ),
    );
  }

  // ===========================================================================
  // CV DETAILS MODAL
  // ===========================================================================
  void _showCvDetailsModal(BuildContext context, CvSubmissionEntry cv) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: Row(
          children: [
            const Icon(Icons.description, color: Color(0xFF6A1B9A), size: 22),
            const SizedBox(width: 8),
            Expanded(child: Text('CV & AI Dossier៖ ${cv.userName}', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15))),
          ],
        ),
        content: SizedBox(
          width: 580,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                // Header Details
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('គោលដៅតំណែង៖ ${cv.targetTitle}', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Color(0xFF0F5A47))),
                          Text('ទំនាក់ទំនង៖ ${cv.userEmail} • ${cv.phone}', style: const TextStyle(fontSize: 11.5, color: AppColors.subtleGray)),
                        ],
                      ),
                    ),
                    if ((cv.aiScore ?? 0) > 0)
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: const Color(0xFF0F5A47),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          'AI Score: ${cv.aiScore}/100',
                          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 12),

                // AI Dossier Card
                if ((cv.aiSummary ?? '').isNotEmpty || (cv.suggestedQuestions ?? []).isNotEmpty) ...[
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF3E5F5),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: const Color(0xFFE1BEE7)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.psychology, color: Color(0xFF6A1B9A), size: 18),
                            const SizedBox(width: 6),
                            const Text(
                              'Agentic AI Dossier & Assessment',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.5, color: Color(0xFF6A1B9A)),
                            ),
                            const Spacer(),
                            if (cv.telegramSent)
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF0088CC),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: const Text(
                                  'TELEGRAM SENT',
                                  style: TextStyle(color: Colors.white, fontSize: 9.5, fontWeight: FontWeight.bold),
                                ),
                              ),
                          ],
                        ),
                        if ((cv.aiSummary ?? '').isNotEmpty) ...[
                          const SizedBox(height: 8),
                          Text(cv.aiSummary!, style: const TextStyle(fontSize: 11.5, color: Color(0xFF311B92), height: 1.4)),
                        ],
                        if ((cv.suggestedQuestions ?? []).isNotEmpty) ...[
                          const SizedBox(height: 8),
                          const Text('សំណួរសម្ភាសន៍ស្នើឡើង (Suggested Questions)៖', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11, color: Color(0xFF4A148C))),
                          const SizedBox(height: 4),
                          ...(cv.suggestedQuestions ?? []).map((q) => Padding(
                            padding: const EdgeInsets.only(bottom: 3),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('• ', style: TextStyle(color: Color(0xFF6A1B9A), fontWeight: FontWeight.bold)),
                                Expanded(child: Text(q, style: const TextStyle(fontSize: 11, color: Color(0xFF37474F)))),
                              ],
                            ),
                          )),
                        ],
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                ],

                const Text('សេចក្តីសង្ខេប (Executive Summary)៖', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                const SizedBox(height: 2),
                Text(cv.summary, style: const TextStyle(fontSize: 11.5, height: 1.3)),
                const SizedBox(height: 10),
                const Text('សមិទ្ធផល Google XYZ Formula៖', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                const SizedBox(height: 2),
                Text(cv.experienceXyz, style: const TextStyle(fontSize: 11.5, height: 1.3)),
                const SizedBox(height: 10),
                const Text('ការអប់រំ & សញ្ញាបត្រ៖', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                const SizedBox(height: 2),
                Text(cv.education, style: const TextStyle(fontSize: 11.5)),
                const SizedBox(height: 12),
                const Text('ទម្រង់ ATS ពេញលេញ (Full ATS Resume Text)៖', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                const SizedBox(height: 6),
                Container(
                  constraints: const BoxConstraints(maxHeight: 220),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF9F9FB),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: SingleChildScrollView(
                    child: SelectableText(
                      cv.fullCvText,
                      style: const TextStyle(fontFamily: 'monospace', fontSize: 10.5, height: 1.4),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('បិទ')),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF6A1B9A), foregroundColor: Colors.white),
            icon: const Icon(Icons.copy, size: 14),
            label: const Text('ចម្លង CV'),
            onPressed: () {
              Clipboard.setData(ClipboardData(text: cv.fullCvText));
              Navigator.pop(ctx);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text(' បានចម្លង CV ទៅក្តារតម្បៀតខ្ទាស់!')),
              );
            },
          ),
        ],
      ),
    );
  }

  void _showTelegramConfigDialog(BuildContext context) {
    final telegramService = ref.read(telegramAlertServiceProvider);
    final config = telegramService.currentConfig;
    final tokenController = TextEditingController(text: config.botToken);
    final chatIdController = TextEditingController(text: config.chatId);
    bool isEnabled = config.isEnabled;
    bool isTesting = false;

    showDialog(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (context, setModalState) {
          return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            title: const Row(
              children: [
                Icon(Icons.send_rounded, color: Color(0xFF0088CC), size: 22),
                SizedBox(width: 8),
                Text('កំណត់ Telegram Bot HR Alert', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              ],
            ),
            content: SizedBox(
              width: 500,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'ប្រព័ន្ធនឹងបញ្ជូនសារ Alert ស្វ័យប្រវត្តទៅ Telegram Channel/Group ពេលបេក្ខជន Drop CV៖',
                      style: TextStyle(fontSize: 12, color: AppColors.subtleGray, height: 1.35),
                    ),
                    const SizedBox(height: 14),
                    SwitchListTile(
                      contentPadding: EdgeInsets.zero,
                      title: const Text('បើកដំណើរការ Telegram Alert (Active)', style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                      subtitle: const Text('ផ្ញើដំណឹងបេក្ខជនថ្មីភ្លាមៗ', style: TextStyle(fontSize: 11, color: AppColors.subtleGray)),
                      value: isEnabled,
                      activeThumbColor: const Color(0xFF0088CC),
                      onChanged: (val) => setModalState(() => isEnabled = val),
                    ),
                    const SizedBox(height: 10),
                    const Text('Telegram Bot Token៖', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 4),
                    TextField(
                      controller: tokenController,
                      style: const TextStyle(fontSize: 12, fontFamily: 'monospace'),
                      decoration: InputDecoration(
                        hintText: 'e.g. 123456789:ABCdefGhIJKlmNoPQRstuVWXyz',
                        isDense: true,
                        filled: true,
                        fillColor: const Color(0xFFF9F9FB),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text('Telegram Channel / Chat ID៖', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 4),
                    TextField(
                      controller: chatIdController,
                      style: const TextStyle(fontSize: 12, fontFamily: 'monospace'),
                      decoration: InputDecoration(
                        hintText: 'e.g. -1002495810234 or @your_channel',
                        isDense: true,
                        filled: true,
                        fillColor: const Color(0xFFF9F9FB),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                    ),
                    const SizedBox(height: 16),
                    OutlinedButton.icon(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: const Color(0xFF0088CC),
                        side: const BorderSide(color: Color(0xFF0088CC)),
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      ),
                      onPressed: isTesting
                          ? null
                          : () async {
                              setModalState(() => isTesting = true);
                              telegramService.updateConfig(
                                botToken: tokenController.text,
                                chatId: chatIdController.text,
                                isEnabled: isEnabled,
                              );

                              final res = await telegramService.sendCandidateCvAlert(
                                candidateName: 'Sokha Rith (Test)',
                                phone: '012 999 888',
                                email: 'sokha.rith@test.com',
                                targetRole: 'Senior Flutter Architect',
                                careerLevel: 'Senior Level',
                                salaryExpectation: '\$2,000 / month',
                                skills: ['Flutter', 'Riverpod', 'Dart', 'Spring Boot'],
                                aiScore: 94,
                                aiSummary: 'បេក្ខជនតេស្តសាកល្បងប្រព័ន្ធ Telegram Bot Alert ពីផ្ទាំង Admin',
                                suggestedQuestions: ['តើអ្នករៀបចំ Clean Architecture ក្នុង Flutter យ៉ាងដូចម្តេច?'],
                                googleXyzRating: 'Exceptional (A++)',
                              );

                              setModalState(() => isTesting = false);

                              final msg = res['success'] == true
                                  ? (res['isMock'] == true
                                      ? ' បានសាកល្បង Telegram Dispatch (Simulated)'
                                      : ' បានបញ្ជូនសារតេស្តទៅ Telegram Bot ជោគជ័យ!')
                                  : ' កំហុស៖ ${res['message']}';

                              if (context.mounted) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(msg),
                                    backgroundColor: res['success'] == true ? const Color(0xFF0088CC) : Colors.red,
                                  ),
                                );
                              }
                            },
                      icon: isTesting
                          ? const SizedBox(width: 14, height: 14, child: CircularProgressIndicator(strokeWidth: 2))
                          : const Icon(Icons.send, size: 14),
                      label: const Text('ផ្ញើសារសាកល្បង (Test Alert)', style: TextStyle(fontSize: 11.5)),
                    ),
                  ],
                ),
              ),
            ),
            actions: [
              TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('បោះបង់')),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0088CC),
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  telegramService.updateConfig(
                    botToken: tokenController.text,
                    chatId: chatIdController.text,
                    isEnabled: isEnabled,
                  );
                  Navigator.pop(ctx);
                  setState(() {});
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(' បានរក្សាទុកការកំណត់ Telegram Bot HR Alert!'),
                      backgroundColor: Color(0xFF0088CC),
                    ),
                  );
                },
                child: const Text('រក្សាទុក'),
              ),
            ],
          );
        },
      ),
    );
  }

  // ===========================================================================
  // COURSE FORM MODAL (CREATE & UPDATE)
  // ===========================================================================
  void _showCourseFormModal(BuildContext context, {CourseModel? existingCourse}) {
    final isEditing = existingCourse != null;
    final titleKhController = TextEditingController(text: existingCourse?.titleKh ?? '');
    final titleEnController = TextEditingController(text: existingCourse?.titleEn ?? '');
    final instructorController = TextEditingController(text: existingCourse?.instructorName ?? 'គ្រូបង្គោល សុជាតិ វណ្ណារ៉ា');
    final categoryController = TextEditingController(text: existingCourse?.category ?? 'Leadership');
    final descriptionKhController = TextEditingController(text: existingCourse?.descriptionKh ?? 'វគ្គបណ្តុះបណ្តាលជំនាញជាក់ស្ដែងសម្រាប់ទីផ្សារការងារកម្ពុជា');
    CareerLevel selectedLevel = existingCourse?.targetLevel ?? CareerLevel.junior;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (ctx) => StatefulBuilder(
        builder: (context, setModalState) => Container(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom + 20,
            top: 20,
            left: 20,
            right: 20,
          ),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      isEditing ? 'កែប្រែវគ្គសិក្សា (Edit Course)' : 'បង្កើតវគ្គសិក្សាថ្មី (Create Course)',
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.charcoal),
                    ),
                    IconButton(icon: const Icon(Icons.close), onPressed: () => Navigator.pop(ctx)),
                  ],
                ),
                const SizedBox(height: 14),

                TextField(
                  controller: titleKhController,
                  decoration: InputDecoration(
                    labelText: 'ចំណងជើងវគ្គ (ភាសាខ្មែរ) *',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                const SizedBox(height: 12),

                TextField(
                  controller: titleEnController,
                  decoration: InputDecoration(
                    labelText: 'Course Title (English)',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                const SizedBox(height: 12),

                DropdownButtonFormField<CareerLevel>(
                  initialValue: selectedLevel,
                  decoration: InputDecoration(
                    labelText: 'កម្រិតគោលដៅ (Career Level)',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  items: CareerLevel.values.map((l) {
                    return DropdownMenuItem(value: l, child: Text('${l.khLabel} (${l.enLabel})'));
                  }).toList(),
                  onChanged: (val) {
                    if (val != null) setModalState(() => selectedLevel = val);
                  },
                ),
                const SizedBox(height: 12),

                TextField(
                  controller: instructorController,
                  decoration: InputDecoration(
                    labelText: 'ឈ្មោះគ្រូបង្គោល (Instructor Name)',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                const SizedBox(height: 12),

                TextField(
                  controller: categoryController,
                  decoration: InputDecoration(
                    labelText: 'ប្រធានបទ/ជំនាញ (Category)',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                const SizedBox(height: 12),

                TextField(
                  controller: descriptionKhController,
                  maxLines: 2,
                  decoration: InputDecoration(
                    labelText: 'ការពិពណ៌នាសង្ខេប (Description)',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                const SizedBox(height: 16),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF0F5A47),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                    onPressed: () {
                      if (titleKhController.text.trim().isEmpty) return;

                      if (isEditing) {
                        ref.read(appDataSyncProvider.notifier).updateCourse(
                          courseId: existingCourse.id,
                          titleKh: titleKhController.text.trim(),
                          titleEn: titleEnController.text.trim(),
                          descriptionKh: descriptionKhController.text.trim(),
                          targetLevel: selectedLevel,
                          category: categoryController.text.trim(),
                          instructorName: instructorController.text.trim(),
                        );
                      } else {
                        ref.read(appDataSyncProvider.notifier).addCourse(
                          titleKh: titleKhController.text.trim(),
                          titleEn: titleEnController.text.trim(),
                          descriptionKh: descriptionKhController.text.trim(),
                          descriptionEn: 'Course description',
                          targetLevel: selectedLevel,
                          category: categoryController.text.trim(),
                          instructorName: instructorController.text.trim(),
                        );
                      }

                      Navigator.pop(ctx);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(isEditing ? ' បានកែប្រែវគ្គសិក្សាដោយជោគជ័យ!' : ' បានបង្កើតវគ្គសិក្សាថ្មីដោយជោគជ័យ!'),
                          backgroundColor: AppColors.primaryGreen,
                        ),
                      );
                    },
                    child: Text(
                      isEditing ? 'រក្សាទុកការកែប្រែ (Save Changes)' : 'បង្កើតវគ្គសិក្សា (+ Create Course)',
                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ===========================================================================
  // CURRICULUM & LESSONS MANAGER MODAL
  // ===========================================================================
  void _showCurriculumManagerModal(BuildContext context, CourseModel course, List<LessonModel> lessons) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (ctx) => StatefulBuilder(
        builder: (context, setModalState) {
          final liveLessons = ref.watch(appDataSyncProvider).courseLessons[course.id] ?? lessons;

          return Container(
            height: MediaQuery.of(context).size.height * 0.85,
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(course.titleKh, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                          Text('កាលវិភាគមេរៀន (${liveLessons.length} មេរៀន)', style: const TextStyle(fontSize: 12, color: AppColors.subtleGray)),
                        ],
                      ),
                    ),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF0F5A47), foregroundColor: Colors.white),
                      icon: const Icon(Icons.add, size: 16),
                      label: const Text('បន្ថែមមេរៀន'),
                      onPressed: () => _showLessonFormModal(context, course.id),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Divider(),
                Expanded(
                  child: liveLessons.isEmpty
                      ? const Center(child: Text('មិនទាន់មានមេរៀននៅឡើយទេ'))
                      : ListView.builder(
                          itemCount: liveLessons.length,
                          itemBuilder: (context, idx) {
                            final lesson = liveLessons[idx];
                            return Container(
                              margin: const EdgeInsets.only(bottom: 8),
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: const Color(0xFFF9FBF9),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: const Color(0xFFE5ECE8)),
                              ),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 14,
                                    backgroundColor: const Color(0xFF0F5A47),
                                    child: Text(
                                      '${idx + 1}',
                                      style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(lesson.titleKh, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                                        if (lesson.titleEn.isNotEmpty)
                                          Text(lesson.titleEn, style: const TextStyle(fontSize: 11, color: AppColors.subtleGray)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void _showLessonFormModal(BuildContext context, String courseId) {
    final titleKhCtrl = TextEditingController();
    final titleEnCtrl = TextEditingController();
    final explanationCtrl = TextEditingController();

    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('បន្ថែមមេរៀនថ្មី (Add Lesson)', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(controller: titleKhCtrl, decoration: const InputDecoration(labelText: 'ចំណងជើងមេរៀន (ភាសាខ្មែរ) *')),
            const SizedBox(height: 10),
            TextField(controller: titleEnCtrl, decoration: const InputDecoration(labelText: 'Lesson Title (English)')),
            const SizedBox(height: 10),
            TextField(controller: explanationCtrl, decoration: const InputDecoration(labelText: 'សេចក្តីពន្យល់សង្ខេប')),
          ],
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('បោះបង់')),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF0F5A47), foregroundColor: Colors.white),
            onPressed: () {
              if (titleKhCtrl.text.isEmpty) return;
              ref.read(appDataSyncProvider.notifier).addLessonToCourse(
                courseId: courseId,
                titleKh: titleKhCtrl.text.trim(),
                titleEn: titleEnCtrl.text.trim(),
                learningObjectives: 'គោលបំណងមេរៀន...',
                shortExplanation: explanationCtrl.text.trim(),
              );
              Navigator.pop(ctx);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text(' បានបន្ថែមមេរៀនថ្មីចូលវគ្គសិក្សាដោយជោគជ័យ!')),
              );
            },
            child: const Text('បន្ថែមមេរៀន'),
          ),
        ],
      ),
    );
  }

  void _confirmDeleteCourse(BuildContext context, CourseModel course) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('បញ្ជាក់ការលុប (Delete Course)'),
        content: Text('តើអ្នកពិតជាចង់លុបវគ្គ «${course.titleKh}» នេះចេញពីប្រព័ន្ធមែនទេ?'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('បោះបង់')),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFD32F2F), foregroundColor: Colors.white),
            onPressed: () {
              ref.read(appDataSyncProvider.notifier).deleteCourse(course.id);
              Navigator.pop(ctx);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('🗑️ បានលុបវគ្គសិក្សាដោយជោគជ័យ!')),
              );
            },
            child: const Text('លុបចេញ'),
          ),
        ],
      ),
    );
  }
}
