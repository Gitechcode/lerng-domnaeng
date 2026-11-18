import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lerng_domnaeng/core/theme/app_theme.dart';
import 'package:lerng_domnaeng/features/auth/domain/user_model.dart';
import 'package:lerng_domnaeng/features/auth/presentation/auth_providers.dart';
import 'package:lerng_domnaeng/features/courses/data/course_repository.dart';
import 'package:lerng_domnaeng/features/courses/domain/course_model.dart';
import 'package:lerng_domnaeng/core/services/ai_agent_service.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userAsync = ref.watch(currentUserProfileProvider);
    final coursesAsync = ref.watch(coursesStreamProvider);

    return Scaffold(
      backgroundColor: const Color(0xFFF4F7F5),
      body: Stack(
        children: [
          // Ambient soft glow gradient orbs for nice, luxury, clean background
          Positioned(
            top: 180,
            right: -60,
            child: Container(
              width: 240,
              height: 240,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    const Color(0xFF0F5A47).withValues(alpha: 0.08),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 480,
            left: -80,
            child: Container(
              width: 280,
              height: 280,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    AppColors.restrainedGold.withValues(alpha: 0.08),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),

          CustomScrollView(
            slivers: [
              // 1. Sleek Curved Emerald App Bar with User Profile & Brand
              SliverAppBar(
                expandedHeight: 215.0,
                floating: false,
                pinned: true,
                elevation: 0,
                backgroundColor: const Color(0xFF073327),
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFF04221A), Color(0xFF093E2F), Color(0xFF0E5440)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Top Brand Logo and Quick Actions
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(7),
                                      decoration: BoxDecoration(
                                        color: Colors.white.withValues(alpha: 0.15),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(color: AppColors.restrainedGold.withValues(alpha: 0.3)),
                                      ),
                                      child: const Icon(Icons.school, color: AppColors.restrainedGold, size: 22),
                                    ),
                                    const SizedBox(width: 10),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'ឡើងដំណែង',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w800,
                                            letterSpacing: 0.3,
                                          ),
                                        ),
                                        Text(
                                          'Lerng Domnaeng • Career Growth',
                                          style: TextStyle(
                                            color: Colors.white.withValues(alpha: 0.7),
                                            fontSize: 11,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    _buildCircleIconButton(
                                      icon: Icons.psychology,
                                      tooltip: 'គ្រូ AI (DeepSeek/Grok)',
                                      onTap: () => context.push('/ai-coach'),
                                    ),
                                    const SizedBox(width: 8),
                                    _buildCircleIconButton(
                                      icon: Icons.bookmark_outline,
                                      tooltip: 'Bookmarks',
                                      onTap: () => context.push('/bookmarks'),
                                    ),
                                    const SizedBox(width: 8),
                                    _buildCircleIconButton(
                                      icon: Icons.admin_panel_settings_outlined,
                                      tooltip: 'Admin Portal',
                                      onTap: () => context.push('/admin'),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            const SizedBox(height: 18),

                            // User Profile Info & Career Badge
                            userAsync.when(
                              data: (user) {
                                final name = user?.displayName ?? 'សុខ វិបុល';
                                final level = user?.careerLevel.khLabel ?? 'Junior (បុគ្គលិកដំបូង)';

                                return Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(2.5),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(color: AppColors.restrainedGold, width: 2),
                                      ),
                                      child: const CircleAvatar(
                                        radius: 26,
                                        backgroundColor: Colors.white,
                                        child: Icon(Icons.person, color: Color(0xFF0F5A47), size: 30),
                                      ),
                                    ),
                                    const SizedBox(width: 14),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'សួស្តី, $name 👋',
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(height: 4),
                                          Text(
                                            '«រៀន បង្កើនសមត្ថភាព ត្រៀមខ្លួនសម្រាប់តួនាទីថ្មី»',
                                            style: TextStyle(
                                              color: Colors.white.withValues(alpha: 0.8),
                                              fontSize: 11.5,
                                              fontStyle: FontStyle.italic,
                                            ),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                                      decoration: BoxDecoration(
                                        color: AppColors.restrainedGold,
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black.withValues(alpha: 0.2),
                                            blurRadius: 6,
                                            offset: const Offset(0, 2),
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          const Icon(Icons.workspace_premium, size: 14, color: Colors.white),
                                          const SizedBox(width: 4),
                                          Text(
                                            level,
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 10.5,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              },
                              loading: () => const SizedBox.shrink(),
                              error: (_, __) => const SizedBox.shrink(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // 2. Main Dashboard Content with Modern Cards
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Modern Quick Action Hub (4 Clean Cards)
                      _buildQuickActionHub(context),

                      const SizedBox(height: 18),

                      // Metric Cards: Progress (70%) and Certificates (1)
                      Row(
                        children: [
                          Expanded(
                            child: _buildMetricCard(
                              context,
                              percent: 0.70,
                              percentText: '៧០%',
                              title: 'វគ្គសិក្សារួចរាល់',
                              subtitle: '១២ ម៉ូឌុលចប់',
                              color: const Color(0xFF0F5A47),
                              icon: Icons.school_outlined,
                              onTap: () => context.go('/progress'),
                            ),
                          ),
                          const SizedBox(width: 14),
                          Expanded(
                            child: _buildCertificateCard(
                              context,
                              countText: '១ វិញ្ញាបនបត្រ',
                              title: 'ទទួលបានផ្លូវការ',
                              subtitle: 'ចុចដើម្បីពិនិត្យ',
                              color: AppColors.restrainedGold,
                              onTap: () => context.go('/progress'),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 18),

                      // AI Career Coach Hero Card (DeepSeek & Grok)
                      _buildAiCoachCard(context),

                      const SizedBox(height: 18),

                      // Agentic AI Drop CV & Telegram Alert Banner
                      _buildAgenticCvDropBanner(context),

                      const SizedBox(height: 18),

                      // World-Famous Leaders Council AI Section
                      _buildFamousLeadersSection(context, ref),

                      const SizedBox(height: 22),

                      // Highlighted Card: Daily Micro-Challenge (3 mins)
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(color: const Color(0xFF0F5A47).withValues(alpha: 0.15), width: 1.2),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xFF0F5A47).withValues(alpha: 0.04),
                              blurRadius: 12,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFE8F5E9),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: const Icon(Icons.timer_outlined, color: Color(0xFF0F5A47), size: 26),
                                ),
                                const SizedBox(width: 12),
                                const Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'ការប្រកួតប្រជែងប្រចាំថ្ងៃ',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: AppColors.charcoal,
                                            ),
                                          ),
                                          SizedBox(width: 6),
                                          Text(
                                            '• ៣ នាទី',
                                            style: TextStyle(
                                              fontSize: 11.5,
                                              color: Color(0xFF0F5A47),
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 2),
                                      Text(
                                        'តេស្តរហ័សវាស់ស្ទង់ EQ & ភាពជាអ្នកដឹកនាំ',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: AppColors.subtleGray,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFF0B4636),
                                    foregroundColor: Colors.white,
                                    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                  ),
                                  onPressed: () => context.go('/practice'),
                                  child: const Text('ចាប់ផ្តើម', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 14),

                      // Situation Simulation (Role-play)
                      Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Color(0xFFFBF4D9), Color(0xFFF7EAC0)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(color: AppColors.restrainedGold.withValues(alpha: 0.35)),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.restrainedGold.withValues(alpha: 0.08),
                              blurRadius: 10,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white.withValues(alpha: 0.8),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Icon(Icons.people_alt_outlined, color: Color(0xFF8A6508), size: 28),
                            ),
                            const SizedBox(width: 14),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'ជើងក្អែក: ចរចាប្រាក់ខែ',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF5A4100),
                                    ),
                                  ),
                                  const SizedBox(height: 3),
                                  Text(
                                    'ហាត់ប្រាណស្ថានការណ៍ពិត 1-on-1',
                                    style: TextStyle(
                                      fontSize: 11.5,
                                      color: const Color(0xFF5A4100).withValues(alpha: 0.8),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: const Color(0xFF5A4100),
                                elevation: 0.5,
                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              ),
                              onPressed: () => context.go('/practice'),
                              child: const Text('ចូលរួមឥឡូវនេះ', style: TextStyle(fontSize: 11.5, fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 24),

                      // Featured Courses Header
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'វគ្គសិក្សាពេញនិយម (Featured Courses)',
                            style: TextStyle(
                              fontSize: 16.5,
                              fontWeight: FontWeight.bold,
                              color: AppColors.charcoal,
                            ),
                          ),
                          TextButton(
                            onPressed: () => context.go('/learn'),
                            child: const Text(
                              'មើលទាំងអស់ >',
                              style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xFF0F5A47), fontSize: 13),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 8),

                      // Horizontal / Grid style Modern Course Cards
                      coursesAsync.when(
                        data: (courses) {
                          final list = courses.isNotEmpty ? courses : _getDemoCourses();
                          return SizedBox(
                            height: 250,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemCount: list.length,
                              separatorBuilder: (_, __) => const SizedBox(width: 14),
                              itemBuilder: (context, index) {
                                return _buildFeaturedCourseCard(context, list[index]);
                              },
                            ),
                          );
                        },
                        loading: () => const Center(child: CircularProgressIndicator()),
                        error: (_, __) => SizedBox(
                          height: 250,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: _getDemoCourses().length,
                            separatorBuilder: (_, __) => const SizedBox(width: 14),
                            itemBuilder: (context, index) {
                              return _buildFeaturedCourseCard(context, _getDemoCourses()[index]);
                            },
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      // Ethical Disclaimer
                      Container(
                        padding: const EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(color: const Color(0xFFE5ECE8)),
                        ),
                        child: const Row(
                          children: [
                            Icon(Icons.verified_user_outlined, color: Color(0xFF0F5A47), size: 22),
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                'ការបញ្ចប់វគ្គសិក្សាមិនមែនជាការធានានូវការឡើងតំណែងស្វ័យប្រវត្តិនោះទេ ប៉ុន្តែជាការបង្កើនសមត្ថភាពពិតប្រាកដ។',
                                style: TextStyle(fontSize: 11.5, color: Color(0xFF55605B), height: 1.4),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildQuickActionHub(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _buildQuickActionTile(
            icon: Icons.psychology,
            title: 'គ្រូ AI',
            subtitle: 'DeepSeek/Grok',
            color: const Color(0xFF0F5A47),
            onTap: () => context.push('/ai-coach'),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: _buildQuickActionTile(
            icon: Icons.hub_outlined,
            title: 'AI Workflow',
            subtitle: 'Auto Evaluation',
            color: const Color(0xFF0F5A47),
            onTap: () => context.go('/profile'),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: _buildQuickActionTile(
            icon: Icons.stars_rounded,
            title: 'មេដឹកនាំល្បីៗ',
            subtitle: '6 Global CEOs',
            color: const Color(0xFFC62828),
            onTap: () => context.push('/ai-coach'),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: _buildQuickActionTile(
            icon: Icons.rocket_launch_rounded,
            title: 'Drop CV',
            subtitle: 'AI & Telegram',
            color: const Color(0xFF6A1B9A),
            onTap: () => context.go('/profile'),
          ),
        ),
      ],
    );
  }

  Widget _buildQuickActionTile({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(14),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: color.withValues(alpha: 0.15)),
          boxShadow: [
            BoxShadow(
              color: color.withValues(alpha: 0.05),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(7),
              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: color, size: 20),
            ),
            const SizedBox(height: 6),
            Text(
              title,
              style: TextStyle(
                fontSize: 11.5,
                fontWeight: FontWeight.bold,
                color: color,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              subtitle,
              style: const TextStyle(
                fontSize: 9,
                color: AppColors.subtleGray,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAiCoachCard(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF073327), Color(0xFF0F5A47), Color(0xFF144D3D)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF0F5A47).withValues(alpha: 0.25),
            blurRadius: 16,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      padding: const EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.restrainedGold.withValues(alpha: 0.2),
                  border: Border.all(color: AppColors.restrainedGold, width: 1.5),
                ),
                child: const Icon(Icons.psychology, color: AppColors.restrainedGold, size: 24),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'គ្រូ AI ឡើងដំណែង',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(
                            color: AppColors.restrainedGold,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const Text(
                            'NEW AI',
                            style: TextStyle(
                              fontSize: 9.5,
                              fontWeight: FontWeight.w900,
                              color: Color(0xFF073327),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 2),
                    Text(
                      'AI Career Coach (DeepSeek & Grok)',
                      style: TextStyle(
                        color: Colors.white.withValues(alpha: 0.75),
                        fontSize: 11.5,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            'ពិភាក្សាយុទ្ធសាស្ត្រសុំឡើងតំណែង ដំឡើងប្រាក់ខែ ត្រៀមសម្ភាសន៍ និងកែប្រែ CV តាមក្បួន Google XYZ ជាមួយ AI ឆ្លាតវៃ។',
            style: TextStyle(
              color: Colors.white.withValues(alpha: 0.9),
              fontSize: 12.5,
              height: 1.45,
            ),
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () => context.push('/ai-coach'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.restrainedGold,
                    foregroundColor: const Color(0xFF073327),
                    padding: const EdgeInsets.symmetric(vertical: 11),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    elevation: 0,
                  ),
                  icon: const Icon(Icons.chat_bubble_outline, size: 16, color: Color(0xFF073327)),
                  label: const Text(
                    'ជជែកជាមួយគ្រូ AI ឥឡូវនេះ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFamousLeadersSection(BuildContext context, WidgetRef ref) {
    final famousLeaders = FamousLeaderPersona.values.where((p) => p != FamousLeaderPersona.general).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              children: [
                Icon(Icons.stars_rounded, color: AppColors.restrainedGold, size: 22),
                SizedBox(width: 8),
                Text(
                  'ក្រុមប្រឹក្សាអ្នកដឹកនាំល្បីៗ AI (Famous Leaders)',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.charcoal,
                  ),
                ),
              ],
            ),
            TextButton(
              onPressed: () => context.push('/ai-coach'),
              child: const Text(
                'មើលទាំងអស់ >',
                style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xFF0F5A47), fontSize: 12.5),
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        const Text(
          'ពិភាក្សាយុទ្ធសាស្ត្រដឹកនាំ និងដោះស្រាយបញ្ហាការងារផ្ទាល់ជាមួយ Jack Ma, Steve Jobs, Ren Zhengfei, Lee Kuan Yew, Elon Musk',
          style: TextStyle(fontSize: 12, color: AppColors.subtleGray, height: 1.4),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 180,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: famousLeaders.length,
            separatorBuilder: (_, __) => const SizedBox(width: 12),
            itemBuilder: (context, index) {
              final leader = famousLeaders[index];
              final color = Color(leader.colorHex);

              return Container(
                width: 250,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [color, color.withValues(alpha: 0.85)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: color.withValues(alpha: 0.25),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.white.withValues(alpha: 0.2),
                          child: Text(
                            leader.nameKh.substring(0, 1),
                            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                leader.nameKh,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                leader.company,
                                style: TextStyle(
                                  color: Colors.white.withValues(alpha: 0.8),
                                  fontSize: 11,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Text(
                      leader.quoteKh,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 11.5,
                        fontStyle: FontStyle.italic,
                        height: 1.4,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: color,
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        minimumSize: const Size(double.infinity, 32),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        elevation: 0,
                      ),
                      onPressed: () {
                        ref.read(aiChatNotifierProvider.notifier).switchPersona(leader);
                        context.push('/ai-coach');
                      },
                      child: Text(
                        'សួរ ${leader.nameKh.split(' ').first} (Consult)',
                        style: const TextStyle(fontSize: 11.5, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  static Widget _buildCircleIconButton({required IconData icon, required VoidCallback onTap, String? tooltip}) {
    return Tooltip(
      message: tooltip ?? '',
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.15),
          shape: BoxShape.circle,
        ),
        child: IconButton(
          icon: Icon(icon, color: Colors.white, size: 20),
          onPressed: onTap,
          constraints: const BoxConstraints(minWidth: 38, minHeight: 38),
          padding: EdgeInsets.zero,
        ),
      ),
    );
  }

  Widget _buildMetricCard(
    BuildContext context, {
    required double percent,
    required String percentText,
    required String title,
    required String subtitle,
    required Color color,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: const Color(0xFFE8EFEA)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.03),
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            SizedBox(
              width: 48,
              height: 48,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  CircularProgressIndicator(
                    value: percent,
                    strokeWidth: 4.5,
                    backgroundColor: color.withValues(alpha: 0.15),
                    valueColor: AlwaysStoppedAnimation<Color>(color),
                  ),
                  Center(
                    child: Text(
                      percentText,
                      style: TextStyle(
                        fontSize: 11.5,
                        fontWeight: FontWeight.bold,
                        color: color,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: AppColors.charcoal,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 2),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 11,
                      color: AppColors.subtleGray,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCertificateCard(
    BuildContext context, {
    required String countText,
    required String title,
    required String subtitle,
    required Color color,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: const Color(0xFFE8EFEA)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.03),
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.12),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.workspace_premium, color: color, size: 24),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    countText,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: color,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 2),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 11,
                      color: AppColors.subtleGray,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeaturedCourseCard(BuildContext context, CourseModel course) {
    return InkWell(
      onTap: () => context.push('/lesson/${course.id}/1'),
      borderRadius: BorderRadius.circular(16),
      child: Container(
        width: 260,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: const Color(0xFFE8EFEA)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.04),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF0F5A47), Color(0xFF1B7961)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              ),
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.2),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          course.targetLevel.khLabel.split(' ').first,
                          style: const TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(Icons.timer_outlined, size: 12, color: Colors.white70),
                          const SizedBox(width: 4),
                          Text(
                            '${course.estimatedMinutes} នាទី',
                            style: const TextStyle(color: Colors.white70, fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    course.category,
                    style: const TextStyle(color: AppColors.restrainedGold, fontSize: 11, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    course.titleKh,
                    style: const TextStyle(fontSize: 13.5, fontWeight: FontWeight.bold, color: AppColors.charcoal),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    course.descriptionKh,
                    style: const TextStyle(fontSize: 11.5, color: AppColors.subtleGray, height: 1.35),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${course.totalLessons} មេរៀន',
                        style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w600, color: Color(0xFF0F5A47)),
                      ),
                      const Icon(Icons.arrow_forward_ios_rounded, size: 12, color: AppColors.subtleGray),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAgenticCvDropBanner(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF311B92), Color(0xFF0F5A47)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF311B92).withValues(alpha: 0.22),
            blurRadius: 14,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      padding: const EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: AppColors.restrainedGold,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.bolt, size: 14, color: Colors.black87),
                    SizedBox(width: 4),
                    Text(
                      'AGENTIC AI WORKFLOW',
                      style: TextStyle(
                        fontSize: 10.5,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color(0xFF0088CC).withValues(alpha: 0.3),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: const Color(0xFF81D4FA).withValues(alpha: 0.6)),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.send_rounded, size: 12, color: Color(0xFF81D4FA)),
                    SizedBox(width: 4),
                    Text(
                      'Telegram Alert',
                      style: TextStyle(fontSize: 10.5, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Text(
            '🚀 ទម្លាក់ CV បញ្ជូនដំណឹងទៅ Telegram Bot',
            style: TextStyle(
              fontSize: 16.5,
              fontWeight: FontWeight.w800,
              color: Colors.white,
              letterSpacing: 0.2,
            ),
          ),
          const SizedBox(height: 6),
          const Text(
            'ប្រព័ន្ធ Agentic AI នឹងវាយតម្លៃកម្រិតរូបមន្ត Google XYZ, គណនាពិន្ទុ AI Match Score (0-100) និងផ្ញើដំណឹង Alert ទៅកាន់ក្រុមការងារ HR តាម Telegram ភ្លាមៗ!',
            style: TextStyle(
              fontSize: 12,
              color: Colors.white70,
              height: 1.45,
            ),
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              Wrap(
                spacing: 6,
                children: [
                  _buildTagPill('DeepSeek V3'),
                  _buildTagPill('xAI Grok'),
                  _buildTagPill('Bot Alert'),
                ],
              ),
              const Spacer(),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.restrainedGold,
                  foregroundColor: Colors.black87,
                  elevation: 2,
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 9),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: () => context.go('/profile'),
                icon: const Icon(Icons.rocket_launch, size: 14, color: Colors.black87),
                label: const Text(
                  'ទម្លាក់ CV ឥឡូវនេះ',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTagPill(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        label,
        style: const TextStyle(fontSize: 10, color: Colors.white, fontWeight: FontWeight.w600),
      ),
    );
  }

  List<CourseModel> _getDemoCourses() {
    return [
      CourseModel(
        id: 'course-intern-comm',
        titleKh: 'ទំនាក់ទំនង និងសីលធម៌ការងារប្រកបដោយវិជ្ជាជីវៈ',
        titleEn: 'Workplace Communication for Interns & Juniors',
        descriptionKh: 'រៀនពីការឆ្លើយតបអ៊ីមែល របៀបសួរនាំការងារ និងការទទួលយក Feedback ប្រកបដោយភាពចាស់ទុំ។',
        descriptionEn: 'Learn effective email etiquette, active listening, and constructive feedback.',
        targetLevel: CareerLevel.intern,
        category: 'Workplace Fundamentals',
        thumbnailUrl: '',
        instructorName: 'គ្រូ វ៉ាន់នី',
        totalLessons: 4,
        estimatedMinutes: 35,
        createdAt: DateTime.now(),
      ),
      CourseModel(
        id: 'demo-leader-1',
        titleKh: 'សិល្បៈនៃការចាត់ចែងការងារ និងការផ្ដល់ Feedback',
        titleEn: 'Delegation and Constructive Feedback for Team Leaders',
        descriptionKh: 'កសាងទំនុកចិត្តក្នុងក្រុម របៀបប្រគល់ភារកិច្ចដោយយុត្តិធម៌ និងដោះស្រាយការខ្វែងគំនិត។',
        descriptionEn: 'Build team trust, delegate tasks effectively, and conduct 1-on-1 feedback sessions.',
        targetLevel: CareerLevel.teamLeader,
        category: 'Management & Leadership',
        thumbnailUrl: '',
        instructorName: 'គ្រូ សុជាតិ',
        totalLessons: 5,
        estimatedMinutes: 50,
        createdAt: DateTime.now(),
      ),
      CourseModel(
        id: 'demo-founder-1',
        titleKh: 'ភាពជាអ្នកដឹកនាំ និងការកសាងក្រុមការងារ SME',
        titleEn: 'Leadership & Team Building for Founders',
        descriptionKh: 'យុទ្ធសាស្ត្រជ្រើសរើសបុគ្គលិក ការបង្កើតវប្បធម៌ការងារយុត្តិធម៌ និងការគ្រប់គ្រងហិរញ្ញវត្ថុបឋម។',
        descriptionEn: 'Strategic team building, hiring for SME, and ethical management.',
        targetLevel: CareerLevel.founder,
        category: 'Strategy & Leadership',
        thumbnailUrl: '',
        instructorName: 'គ្រូ ចាន់រិទ្ធ',
        totalLessons: 6,
        estimatedMinutes: 65,
        createdAt: DateTime.now(),
      ),
    ];
  }
}
