import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lerng_domnaeng/core/services/image_upload_service.dart';
import 'package:lerng_domnaeng/core/theme/app_theme.dart';
import '../../domain/profile_models.dart';

class EditProfileDialog extends StatefulWidget {
  final ExtendedUserProfile userProfile;
  final ValueChanged<ExtendedUserProfile> onSave;

  const EditProfileDialog({
    super.key,
    required this.userProfile,
    required this.onSave,
  });

  @override
  State<EditProfileDialog> createState() => _EditProfileDialogState();
}

class _EditProfileDialogState extends State<EditProfileDialog> {
  late TextEditingController _nameController;
  late TextEditingController _phoneController;
  late TextEditingController _bioController;
  late TextEditingController _orgController;
  late TextEditingController _deptController;
  late TextEditingController _skillsController;
  late TextEditingController _currentSalaryController;
  late TextEditingController _targetSalaryController;
  late TextEditingController _educationController;

  late String _selectedCareerLevel;
  late String _selectedTargetLevel;
  late String _selectedCompanyContext;
  String? _photoUrl;
  Uint8List? _pickedImageBytes;
  bool _isUploading = false;

  final List<String> _careerLevels = [
    'Intern (កូនជាង/ហាត់ការ)',
    'Junior Staff (បុគ្គលិកកម្រិតដំបូង)',
    'Senior Specialist (បុគ្គលិកជំនាញជាន់ខ្ពស់)',
    'Team Leader (ប្រធានក្រុមការងារ)',
    'Supervisor (ប្រធានផ្នែករង)',
    'Department Manager (ប្រធានផ្នែក)',
    'Head of Department (នាយកផ្នែក)',
    'Director (នាយកប្រតិបត្តិការងារ)',
    'Executive (ថ្នាក់ដឹកនាំកំពូល C-Suite)',
    'Founder & Owner (ស្ថាបនិក/ម្ចាស់អាជីវកម្ម)',
  ];

  @override
  void initState() {
    super.initState();
    final p = widget.userProfile;
    _nameController = TextEditingController(text: p.displayName);
    _phoneController = TextEditingController(text: p.phone);
    _bioController = TextEditingController(text: p.bio);
    _orgController = TextEditingController(text: p.organization);
    _deptController = TextEditingController(text: p.department);
    _skillsController = TextEditingController(text: p.skills.join(', '));
    _currentSalaryController = TextEditingController(text: p.currentSalaryUsd.toStringAsFixed(0));
    _targetSalaryController = TextEditingController(text: p.targetSalaryUsd.toStringAsFixed(0));
    _educationController = TextEditingController(text: p.education);

    _selectedCareerLevel = _careerLevels.firstWhere(
      (lvl) => lvl.startsWith(p.careerLevel.split(' ').first),
      orElse: () => _careerLevels[1],
    );
    _selectedTargetLevel = _careerLevels.firstWhere(
      (lvl) => lvl.startsWith(p.targetCareerLevel.split(' ').first),
      orElse: () => _careerLevels[3],
    );
    _selectedCompanyContext = p.companyContext;
    _photoUrl = p.photoUrl;
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _bioController.dispose();
    _orgController.dispose();
    _deptController.dispose();
    _skillsController.dispose();
    _currentSalaryController.dispose();
    _targetSalaryController.dispose();
    _educationController.dispose();
    super.dispose();
  }

  Future<void> _pickImage() async {
    try {
      setState(() => _isUploading = true);
      final picker = ImagePicker();
      final XFile? image = await picker.pickImage(
        source: ImageSource.gallery,
        maxWidth: 512,
        maxHeight: 512,
        imageQuality: 85,
      );

      if (image != null) {
        final bytes = await image.readAsBytes();
        
        // Upload image to remote storage server
        final uploadResult = await ImageUploadService().uploadProfileImage(
          imageBytes: bytes,
          fileName: image.name,
          userId: widget.userProfile.id,
        );

        final targetUrl = uploadResult.remoteUrl ?? 'data:image/jpeg;base64,${base64Encode(bytes)}';

        setState(() {
          _pickedImageBytes = bytes;
          _photoUrl = targetUrl;
          _isUploading = false;
        });

        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(' បាន Upload រូបថតទៅកាន់ Server ជោគជ័យ!'),
              backgroundColor: AppColors.primaryGreen,
              duration: Duration(seconds: 2),
            ),
          );
        }
      } else {
        setState(() => _isUploading = false);
      }
    } catch (e) {
      setState(() => _isUploading = false);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('បរាជ័យក្នុងការជ្រើសរើសរូបភាព៖ $e'), backgroundColor: Colors.red),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      insetPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 560, maxHeight: 720),
        child: Column(
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: AppColors.primaryGreen.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(Icons.edit_note, color: AppColors.primaryGreen, size: 24),
                  ),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Text(
                      'កែសម្រួលគណនី (CRUD Profile)',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.charcoal),
                    ),
                  ),
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.close),
                  ),
                ],
              ),
            ),
            const Divider(height: 1),

            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Avatar & Image Picker
                    Center(
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              CircleAvatar(
                                radius: 46,
                                backgroundColor: const Color(0xFFEFF5F2),
                                backgroundImage: _pickedImageBytes != null
                                    ? MemoryImage(_pickedImageBytes!)
                                    : (_photoUrl != null && _photoUrl!.isNotEmpty
                                        ? (_photoUrl!.startsWith('data:image')
                                            ? MemoryImage(base64Decode(_photoUrl!.split(',').last))
                                            : NetworkImage(_photoUrl!) as ImageProvider)
                                        : null),
                                child: (_photoUrl == null || _photoUrl!.isEmpty) && _pickedImageBytes == null
                                    ? const Icon(Icons.person, size: 48, color: AppColors.primaryGreen)
                                    : null,
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: InkWell(
                                  onTap: _pickImage,
                                  child: Container(
                                    padding: const EdgeInsets.all(7),
                                    decoration: const BoxDecoration(
                                      color: AppColors.primaryGreen,
                                      shape: BoxShape.circle,
                                    ),
                                    child: _isUploading
                                        ? const SizedBox(
                                            width: 14,
                                            height: 14,
                                            child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2),
                                          )
                                        : const Icon(Icons.camera_alt, color: Colors.white, size: 16),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton.icon(
                                onPressed: _pickImage,
                                icon: const Icon(Icons.upload_file, size: 16),
                                label: const Text('ផ្ទុកឡើងរូបថត (Upload Image)', style: TextStyle(fontSize: 12)),
                              ),
                              if (_photoUrl != null || _pickedImageBytes != null) ...[
                                const SizedBox(width: 8),
                                TextButton(
                                  onPressed: () {
                                    setState(() {
                                      _photoUrl = null;
                                      _pickedImageBytes = null;
                                    });
                                  },
                                  child: const Text('លុបរូប (Reset)', style: TextStyle(fontSize: 12, color: Colors.red)),
                                ),
                              ],
                            ],
                          ),

                          // Preset Avatars
                          const SizedBox(height: 6),
                          const Text('ឬជ្រើសរើសរូបថតគំរូវិជ្ជាជីវៈ (Preset Avatars)៖', style: TextStyle(fontSize: 11, color: AppColors.subtleGray)),
                          const SizedBox(height: 8),
                          SizedBox(
                            height: 48,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: ProfilePresetAvatars.avatars.length,
                              itemBuilder: (context, index) {
                                final avatar = ProfilePresetAvatars.avatars[index];
                                return Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 4),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        _photoUrl = avatar.avatarUrl;
                                        _pickedImageBytes = null;
                                      });
                                    },
                                    borderRadius: BorderRadius.circular(24),
                                    child: CircleAvatar(
                                      radius: 22,
                                      backgroundImage: NetworkImage(avatar.avatarUrl),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),
                    const Divider(),
                    const SizedBox(height: 12),

                    // Text Fields
                    _buildField(label: 'ឈ្មោះពេញ (Full Name)', controller: _nameController),
                    const SizedBox(height: 12),
                    _buildField(label: 'លេខទូរស័ព្ទ (Phone Number)', controller: _phoneController),
                    const SizedBox(height: 12),
                    _buildField(label: 'ជីវប្រវត្តិសង្ខេប (Bio & Career Summary)', controller: _bioController, maxLines: 3),
                    const SizedBox(height: 12),

                    // Career Level Dropdown
                    const Text('កម្រិតដំណែងបច្ចុប្បន្ន (Current Level)', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 6),
                    DropdownButtonFormField<String>(
                      initialValue: _selectedCareerLevel,
                      isExpanded: true,
                      decoration: InputDecoration(
                        isDense: true,
                        filled: true,
                        fillColor: const Color(0xFFFBFBFB),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                      items: _careerLevels.map((lvl) => DropdownMenuItem(value: lvl, child: Text(lvl, style: const TextStyle(fontSize: 12)))).toList(),
                      onChanged: (val) {
                        if (val != null) setState(() => _selectedCareerLevel = val);
                      },
                    ),

                    const SizedBox(height: 12),

                    // Target Career Level Dropdown
                    const Text('គោលដៅដំណែងបន្ទាប់ (Target Promotion Level)', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 6),
                    DropdownButtonFormField<String>(
                      initialValue: _selectedTargetLevel,
                      isExpanded: true,
                      decoration: InputDecoration(
                        isDense: true,
                        filled: true,
                        fillColor: const Color(0xFFFBFBFB),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                      items: _careerLevels.map((lvl) => DropdownMenuItem(value: lvl, child: Text(lvl, style: const TextStyle(fontSize: 12)))).toList(),
                      onChanged: (val) {
                        if (val != null) setState(() => _selectedTargetLevel = val);
                      },
                    ),

                    const SizedBox(height: 12),

                    // Company Context Radio
                    const Text('បរិបទក្រុមហ៊ុន (Company Context)', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () => setState(() => _selectedCompanyContext = 'SME Company'),
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                              decoration: BoxDecoration(
                                color: _selectedCompanyContext == 'SME Company' ? AppColors.primaryGreen.withValues(alpha: 0.1) : Colors.white,
                                border: Border.all(
                                  color: _selectedCompanyContext == 'SME Company' ? AppColors.primaryGreen : Colors.grey.shade300,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    _selectedCompanyContext == 'SME Company' ? Icons.radio_button_checked : Icons.radio_button_off,
                                    size: 16,
                                    color: _selectedCompanyContext == 'SME Company' ? AppColors.primaryGreen : Colors.grey,
                                  ),
                                  const SizedBox(width: 8),
                                  const Text('SME Company', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: InkWell(
                            onTap: () => setState(() => _selectedCompanyContext = 'Standard Corporate'),
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                              decoration: BoxDecoration(
                                color: _selectedCompanyContext == 'Standard Corporate' ? AppColors.primaryGreen.withValues(alpha: 0.1) : Colors.white,
                                border: Border.all(
                                  color: _selectedCompanyContext == 'Standard Corporate' ? AppColors.primaryGreen : Colors.grey.shade300,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    _selectedCompanyContext == 'Standard Corporate' ? Icons.radio_button_checked : Icons.radio_button_off,
                                    size: 16,
                                    color: _selectedCompanyContext == 'Standard Corporate' ? AppColors.primaryGreen : Colors.grey,
                                  ),
                                  const SizedBox(width: 8),
                                  const Text('Corporate Standard', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 12),
                    _buildField(label: 'ឈ្មោះស្ថាប័ន (Organization)', controller: _orgController),
                    const SizedBox(height: 12),
                    _buildField(label: 'ផ្នែក / ដេប៉ាតឺម៉ង់ (Department)', controller: _deptController),
                    const SizedBox(height: 12),
                    _buildField(label: 'ជំនាញស្នូល (Skills - ចែកដោយសញ្ញាក្បៀស)', controller: _skillsController),
                    const SizedBox(height: 12),

                    Row(
                      children: [
                        Expanded(
                          child: _buildField(
                            label: 'ប្រាក់ខែបច្ចុប្បន្ន (Current \$)',
                            controller: _currentSalaryController,
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: _buildField(
                            label: 'ប្រាក់ខែគោលដៅ (Target \$)',
                            controller: _targetSalaryController,
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 12),
                    _buildField(label: 'កម្រិតវប្បធម៌ (Education)', controller: _educationController),
                  ],
                ),
              ),
            ),

            const Divider(height: 1),

            // Action Buttons
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('បោះបង់ (Cancel)'),
                  ),
                  const SizedBox(width: 12),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryGreen,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    ),
                    onPressed: () {
                      final updated = widget.userProfile.copyWith(
                        displayName: _nameController.text.trim(),
                        phone: _phoneController.text.trim(),
                        bio: _bioController.text.trim(),
                        careerLevel: _selectedCareerLevel,
                        targetCareerLevel: _selectedTargetLevel,
                        companyContext: _selectedCompanyContext,
                        organization: _orgController.text.trim(),
                        department: _deptController.text.trim(),
                        skills: _skillsController.text.split(',').map((s) => s.trim()).where((s) => s.isNotEmpty).toList(),
                        currentSalaryUsd: double.tryParse(_currentSalaryController.text) ?? widget.userProfile.currentSalaryUsd,
                        targetSalaryUsd: double.tryParse(_targetSalaryController.text) ?? widget.userProfile.targetSalaryUsd,
                        education: _educationController.text.trim(),
                        photoUrl: _photoUrl,
                      );

                      widget.onSave(updated);
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.check, size: 18),
                    label: const Text('រក្សាទុក (Save Profile)'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildField({
    required String label,
    required TextEditingController controller,
    int maxLines = 1,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: AppColors.charcoal)),
        const SizedBox(height: 6),
        TextField(
          controller: controller,
          maxLines: maxLines,
          keyboardType: keyboardType,
          style: const TextStyle(fontSize: 13),
          decoration: InputDecoration(
            isDense: true,
            filled: true,
            fillColor: const Color(0xFFFBFBFB),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AppColors.primaryGreen, width: 1.5),
            ),
          ),
        ),
      ],
    );
  }
}
