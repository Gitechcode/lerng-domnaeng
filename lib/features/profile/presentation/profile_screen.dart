import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lerng_domnaeng/core/services/app_data_sync_service.dart';
import 'package:lerng_domnaeng/core/theme/app_theme.dart';
import 'package:lerng_domnaeng/features/auth/presentation/auth_providers.dart';
import '../domain/profile_models.dart';
import 'widgets/edit_profile_dialog.dart';
import 'widgets/salary_framework_sheet.dart';
import 'widgets/people_management_sheet.dart';
import 'widgets/benefits_sharing_sheet.dart';
import 'widgets/cv_builder_sheet.dart';
import 'widgets/cv_upload_management_card.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  bool _isUploadingPhoto = false;

  ExtendedUserProfile get _userProfile => ref.watch(appDataSyncProvider).currentUserProfile;

  Future<void> _quickUploadAvatar() async {
    try {
      setState(() => _isUploadingPhoto = true);
      final picker = ImagePicker();
      final XFile? image = await picker.pickImage(
        source: ImageSource.gallery,
        maxWidth: 512,
        maxHeight: 512,
        imageQuality: 85,
      );

      if (image != null) {
        final bytes = await image.readAsBytes();
        final base64String = base64Encode(bytes);
        final dataUri = 'data:image/jpeg;base64,$base64String';

        final updated = ref.read(appDataSyncProvider).currentUserProfile.copyWith(photoUrl: dataUri);
        ref.read(appDataSyncProvider.notifier).updateUserProfile(updated);
        setState(() => _isUploadingPhoto = false);

        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(' បានបញ្ចូលរូបថតកម្រងព័ត៌មានថ្មីជោគជ័យ!'),
              backgroundColor: AppColors.primaryGreen,
              duration: Duration(seconds: 2),
            ),
          );
        }
      } else {
        setState(() => _isUploadingPhoto = false);
      }
    } catch (e) {
      setState(() => _isUploadingPhoto = false);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('បរាជ័យក្នុងការបញ្ចូលរូបភាព៖ $e'), backgroundColor: Colors.red),
        );
      }
    }
  }

  void _openEditProfileDialog() {
    final current = ref.read(appDataSyncProvider).currentUserProfile;
    showDialog(
      context: context,
      builder: (ctx) => EditProfileDialog(
        userProfile: current,
        onSave: (updated) {
          ref.read(appDataSyncProvider.notifier).updateUserProfile(updated);
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(' បានរក្សាទុកការកែសម្រួលគណនី (Profile Updated & Synced to Backend) ជោគជ័យ!'),
              backgroundColor: AppColors.primaryGreen,
              duration: Duration(seconds: 2),
            ),
          );
        },
      ),
    );
  }

  void _showModalSheet(Widget sheet) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (ctx) => FractionallySizedBox(
        heightFactor: 0.90,
        child: sheet,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final userAsync = ref.watch(currentUserProfileProvider);

    // Sync display name & email from Firebase Auth if available
    userAsync.whenData((fbUser) {
      if (fbUser != null && _userProfile.displayName != fbUser.displayName) {
        // preserve updated local state if user modified it
      }
    });

    final salaryProgress = (_userProfile.currentSalaryUsd / _userProfile.targetSalaryUsd).clamp(0.0, 1.0);

    return Scaffold(
      appBar: AppBar(
        title: const Text('គណនី & ផែនការឡើងដំណែង'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit_outlined),
            tooltip: 'កែសម្រួលព័ត៌មាន (Edit Profile)',
            onPressed: _openEditProfileDialog,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hero Profile Card
            _buildProfileHeroCard(salaryProgress),

            const SizedBox(height: 20),

            // 4 Career & Leadership Masterclass Cards
            const Row(
              children: [
                Icon(Icons.workspace_premium, color: AppColors.primaryGreen, size: 20),
                SizedBox(width: 8),
                Text(
                  'ក្បួនយុទ្ធសាស្ត្រអាជីព & ថ្នាក់ដឹកនាំ',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.charcoal),
                ),
              ],
            ),
            const SizedBox(height: 12),

            // Card 1: Salary & Career Ladder
            _buildGuideCard(
              icon: Icons.monetization_on,
              iconColor: const Color(0xFF2E7D32),
              titleKh: 'ក្បួនកសាងតំណែង និងប្រាក់ខែ',
              subtitleKh: 'តារាងប្រាក់ខែ ១០ កម្រិតនៅកម្ពុជា (SME vs Corporate) & ក្បួនចរចាសុំឡើងប្រាក់ខែ',
              tagKh: '១០ កម្រិត',
              onTap: () => _showModalSheet(const SalaryFrameworkSheet()),
            ),

            // Card 2: People Management & Retention
            _buildGuideCard(
              icon: Icons.people_alt,
              iconColor: const Color(0xFF1565C0),
              titleKh: 'ក្បួនគ្រប់គ្រង និងរក្សាបុគ្គលិក',
              subtitleKh: 'ទ្រឹស្តីទឹកចិត្ត Dan Pink (Autonomy, Mastery, Purpose) & ក្បួនប្រជុំ ១ ទល់ ១',
              tagKh: 'Retention Playbook',
              onTap: () => _showModalSheet(const PeopleManagementSheet()),
            ),

            // Card 3: Benefits & Profit Sharing / ESOP
            _buildGuideCard(
              icon: Icons.pie_chart_outline,
              iconColor: const Color(0xFFE65100),
              titleKh: 'ការបែងចែកផលប្រយោជន៍ & ESOP',
              subtitleKh: 'ប.ស.ស, ប្រាក់ខែទី ១៣, មូលនិធិចែកប្រាក់ចំណេញ (Profit Pool) & ភាគហ៊ុនបុគ្គលិក',
              tagKh: 'Profit Sharing',
              onTap: () => _showModalSheet(const BenefitsSharingSheet()),
            ),

            // Card 4: Winning Executive CV & Generator
            _buildGuideCard(
              icon: Icons.description,
              iconColor: const Color(0xFF6A1B9A),
              titleKh: 'ក្បួនសរសេរ CV & ឧបករណ៍បង្កើត CV',
              subtitleKh: 'រូបមន្ត Google XYZ Formula, កំហុសធ្ងន់ធ្ងរទាំង ៥ & បង្កើត CV ស្តង់ដារ ATS ភ្លាមៗ',
              tagKh: 'CV Generator',
              onTap: () => _showModalSheet(CvBuilderSheet(userProfile: _userProfile)),
            ),

            const SizedBox(height: 20),

            // Settings & Platform Management
            const Row(
              children: [
                Icon(Icons.tune, color: AppColors.subtleGray, size: 20),
                SizedBox(width: 8),
                Text(
                  'ការកំណត់ & ប្រព័ន្ធ',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.charcoal),
                ),
              ],
            ),
            const SizedBox(height: 12),

            _buildSettingTile(
              icon: Icons.business,
              title: 'ស្ថាប័ន / ក្រុមហ៊ុន (Organization Workspace)',
              subtitle: _userProfile.organization,
              onTap: () {},
            ),
            _buildSettingTile(
              icon: Icons.language,
              title: 'ភាសាកម្មវិធី (Language)',
              subtitle: 'ភាសាខ្មែរ (Khmer)',
              onTap: () {},
            ),
            _buildSettingTile(
              icon: Icons.admin_panel_settings_outlined,
              title: 'ផ្ទាំងគ្រប់គ្រងគ្រូ & ប្រព័ន្ធ (Admin/Instructor Portal)',
              subtitle: 'សម្រាប់អ្នកគ្រប់គ្រង និងអ្នកបង្កើតមេរៀន',
              iconColor: AppColors.restrainedGold,
              onTap: () => context.push('/admin'),
            ),

            const SizedBox(height: 12),

            // Logout
            ListTile(
              leading: const Icon(Icons.logout, color: AppColors.error),
              title: const Text('ចាកចេញពីគណនី (Sign Out)', style: TextStyle(color: AppColors.error, fontWeight: FontWeight.bold)),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: const BorderSide(color: Color(0xFFFFCDD2)),
              ),
              tileColor: const Color(0xFFFFEBEE),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: const Text('ចាកចេញពីគណនី?'),
                    content: const Text('តើអ្នកពិតជាចង់ចាកចេញពី «ឡើងដំណែង» មែនទេ?'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(ctx),
                        child: const Text('បោះបង់'),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: AppColors.error),
                        onPressed: () async {
                          Navigator.pop(ctx);
                          await ref.read(firebaseAuthProvider).signOut();
                          if (context.mounted) {
                            context.go('/login');
                          }
                        },
                        child: const Text('ចាកចេញ'),
                      ),
                    ],
                  ),
                );
              },
            ),

            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileHeroCard(double salaryProgress) {
    ImageProvider? avatarProvider;
    if (_userProfile.photoUrl != null && _userProfile.photoUrl!.isNotEmpty) {
      if (_userProfile.photoUrl!.startsWith('data:image')) {
        avatarProvider = MemoryImage(base64Decode(_userProfile.photoUrl!.split(',').last));
      } else {
        avatarProvider = NetworkImage(_userProfile.photoUrl!);
      }
    }

    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(color: Color(0xFFE5ECE8)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Avatar with Camera Upload Icon
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 38,
                      backgroundColor: const Color(0xFFEFF5F2),
                      backgroundImage: avatarProvider,
                      child: avatarProvider == null
                          ? const Icon(Icons.person, size: 40, color: AppColors.primaryGreen)
                          : null,
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: InkWell(
                        onTap: _quickUploadAvatar,
                        child: Container(
                          padding: const EdgeInsets.all(6),
                          decoration: const BoxDecoration(
                            color: AppColors.primaryGreen,
                            shape: BoxShape.circle,
                          ),
                          child: _isUploadingPhoto
                              ? const SizedBox(
                                  width: 12,
                                  height: 12,
                                  child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2),
                                )
                              : const Icon(Icons.camera_alt, color: Colors.white, size: 14),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 16),

                // Name, Email & Badges
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _userProfile.displayName,
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.charcoal),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        _userProfile.email,
                        style: const TextStyle(fontSize: 12, color: AppColors.subtleGray),
                      ),
                      if (_userProfile.phone.isNotEmpty) ...[
                        const SizedBox(height: 2),
                        Text(
                          _userProfile.phone,
                          style: const TextStyle(fontSize: 12, color: AppColors.subtleGray),
                        ),
                      ],
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 6,
                        runSpacing: 4,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                            decoration: BoxDecoration(
                              color: AppColors.primaryGreen.withValues(alpha: 0.1),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Text(
                              _userProfile.careerLevel.split('(').first.trim(),
                              style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: AppColors.primaryGreen),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFF3E0),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Text(
                              _userProfile.companyContext,
                              style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Color(0xFFE65100)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

            if (_userProfile.bio.isNotEmpty) ...[
              const SizedBox(height: 14),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFFF9FBF9),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  _userProfile.bio,
                  style: const TextStyle(fontSize: 12, color: Color(0xFF424242), height: 1.4),
                ),
              ),
            ],

            const SizedBox(height: 14),

            // Salary & Promotion Goal Progress
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color(0xFFF4F7F5),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('ប្រាក់ខែបច្ចុប្បន្ន', style: TextStyle(fontSize: 11, color: AppColors.subtleGray)),
                          Text(
                            '\$${_userProfile.currentSalaryUsd.toStringAsFixed(0)} / ខែ',
                            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: AppColors.primaryGreen),
                          ),
                        ],
                      ),
                      const Icon(Icons.arrow_forward, color: AppColors.subtleGray, size: 18),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text('គោលដៅឡើងដំណែង', style: TextStyle(fontSize: 11, color: AppColors.subtleGray)),
                          Text(
                            '\$${_userProfile.targetSalaryUsd.toStringAsFixed(0)} / ខែ',
                            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Color(0xFFC59B27)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: LinearProgressIndicator(
                      value: salaryProgress,
                      minHeight: 6,
                      backgroundColor: Colors.grey.shade300,
                      valueColor: const AlwaysStoppedAnimation<Color>(AppColors.primaryGreen),
                    ),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'គោលដៅ៖ ${_userProfile.targetCareerLevel}',
                        style: const TextStyle(fontSize: 11, color: AppColors.subtleGray),
                      ),
                      Text(
                        '${(salaryProgress * 100).toStringAsFixed(0)}% នៃគោលដៅ',
                        style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: AppColors.primaryGreen),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 12),

            // Skills Chips
            Align(
              alignment: Alignment.centerLeft,
              child: Wrap(
                spacing: 6,
                runSpacing: 6,
                children: _userProfile.skills.map((skill) {
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Text(skill, style: const TextStyle(fontSize: 11, color: AppColors.charcoal)),
                  );
                }).toList(),
              ),
            ),

            // Personal CV Document Upload & Management (Above Edit Profile / CRUD)
            CvUploadManagementCard(
              userId: _userProfile.id,
              userName: _userProfile.displayName,
            ),

            const SizedBox(height: 14),

            // CRUD Action Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  foregroundColor: AppColors.primaryGreen,
                  side: const BorderSide(color: AppColors.primaryGreen),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.symmetric(vertical: 10),
                ),
                onPressed: _openEditProfileDialog,
                icon: const Icon(Icons.tune, size: 18),
                label: const Text('កែសម្រួលគណនី & ជំនាញ (Edit Profile / CRUD)'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGuideCard({
    required IconData icon,
    required Color iconColor,
    required String titleKh,
    required String subtitleKh,
    required String tagKh,
    required VoidCallback onTap,
  }) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
        side: const BorderSide(color: Color(0xFFE5ECE8)),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(14),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: iconColor.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(icon, color: iconColor, size: 24),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            titleKh,
                            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: AppColors.charcoal),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                          decoration: BoxDecoration(
                            color: iconColor.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            tagKh,
                            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: iconColor),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitleKh,
                      style: const TextStyle(fontSize: 12, color: AppColors.subtleGray, height: 1.35),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              const Icon(Icons.arrow_forward_ios, size: 14, color: AppColors.subtleGray),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSettingTile({
    required IconData icon,
    required String title,
    required String subtitle,
    Color? iconColor,
    required VoidCallback onTap,
  }) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.only(bottom: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: Color(0xFFE5ECE8)),
      ),
      child: ListTile(
        leading: Icon(icon, color: iconColor ?? AppColors.primaryGreen),
        title: Text(title, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: AppColors.charcoal)),
        subtitle: Text(subtitle, style: const TextStyle(fontSize: 11, color: AppColors.subtleGray)),
        trailing: const Icon(Icons.arrow_forward_ios, size: 12, color: AppColors.subtleGray),
        onTap: onTap,
      ),
    );
  }
}
