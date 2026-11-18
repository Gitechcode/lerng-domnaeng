import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:file_picker/file_picker.dart';
import 'package:lerng_domnaeng/core/theme/app_theme.dart';
import 'package:lerng_domnaeng/core/utils/file_download_helper.dart';
import '../../data/user_cv_storage_service.dart';
import '../../domain/user_cv_document.dart';

/// Card widget for uploading and managing user personal CV document.
/// Placed above "Edit Profile / CRUD" on Profile Screen.
/// STRICT PRIVACY NOTE:
/// This document is NEVER sent to AI, Telegram, HR or external services.
/// No AI scoring, parsing, or transmission occurs.
class CvUploadManagementCard extends ConsumerStatefulWidget {
  final String userId;
  final String userName;

  const CvUploadManagementCard({
    super.key,
    required this.userId,
    required this.userName,
  });

  @override
  ConsumerState<CvUploadManagementCard> createState() => _CvUploadManagementCardState();
}

class _CvUploadManagementCardState extends ConsumerState<CvUploadManagementCard> {
  @override
  void initState() {
    super.initState();
    // Load persisted CV for this user on startup
    Future.microtask(() {
      if (mounted) {
        ref.read(userCvStorageProvider).loadCvForUser(widget.userId);
      }
    });
  }

  @override
  void didUpdateWidget(covariant CvUploadManagementCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.userId != widget.userId) {
      ref.read(userCvStorageProvider).loadCvForUser(widget.userId);
    }
  }

  Future<void> _pickAndUploadCv({bool isReplacing = false}) async {
    final storageNotifier = ref.read(userCvStorageProvider);
    storageNotifier.clearError();

    try {
      final result = await FilePicker.pickFile(
        type: FileType.custom,
        allowedExtensions: UserCvStorageNotifier.allowedExtensions,
      );

      // User cancelled picker -> preserve existing CV completely!
      if (result == null) {
        return;
      }

      final file = result;
      final bytes = await file.readAsBytes();

      if (bytes.isEmpty) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('មិនអាចអានទិន្នន័យឯកសារបានឡើយ។ សូមសាកល្បងម្ដងទៀត។'),
              backgroundColor: AppColors.error,
              behavior: SnackBarBehavior.floating,
            ),
          );
        }
        return;
      }

      final success = await storageNotifier.uploadCv(
        userId: widget.userId,
        fileName: file.name,
        fileSizeBytes: bytes.lengthInBytes,
        bytes: bytes,
      );

      if (mounted) {
        if (success) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Row(
                children: [
                  const Icon(Icons.check_circle_rounded, color: Colors.white, size: 20),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      isReplacing
                          ? '✅ បានផ្លាស់ប្តូរឯកសារ CV «${file.name}» ជោគជ័យ!'
                          : '✅ បានរក្សាទុកឯកសារ CV «${file.name}» ជោគជ័យ!',
                      style: const TextStyle(fontSize: 12.5, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              backgroundColor: const Color(0xFF0F5A47),
              behavior: SnackBarBehavior.floating,
              duration: const Duration(seconds: 3),
            ),
          );
        } else if (storageNotifier.errorMessageKh != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(storageNotifier.errorMessageKh!),
              backgroundColor: AppColors.error,
              behavior: SnackBarBehavior.floating,
              duration: const Duration(seconds: 4),
            ),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('កំហុសក្នុងការជ្រើសរើសឯកសារ៖ $e'),
            backgroundColor: AppColors.error,
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    }
  }

  void _viewCvDetails(UserCvDocument doc) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        titlePadding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        actionsPadding: const EdgeInsets.all(16),
        title: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: (doc.isPdf ? const Color(0xFFD32F2F) : const Color(0xFF1976D2)).withValues(alpha: 0.12),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                doc.isPdf ? Icons.picture_as_pdf_rounded : Icons.description_rounded,
                color: doc.isPdf ? const Color(0xFFD32F2F) : const Color(0xFF1976D2),
                size: 24,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'ព័ត៌មានលម្អិតឯកសារ CV',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: AppColors.charcoal),
                  ),
                  Text(
                    doc.isPdf ? 'ឯកសារទម្រង់ Adobe PDF' : 'ឯកសារទម្រង់ Microsoft Word',
                    style: const TextStyle(fontSize: 11, color: AppColors.subtleGray),
                  ),
                ],
              ),
            ),
          ],
        ),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Divider(height: 1),
              const SizedBox(height: 12),

              _buildDetailRow('ឈ្មោះឯកសារ៖', doc.fileName, isBold: true),
              const SizedBox(height: 8),
              _buildDetailRow('ទំហំឯកសារ៖', doc.formattedSize),
              const SizedBox(height: 8),
              _buildDetailRow('កាលបរិច្ឆេទបង្ហោះ៖', doc.formattedUploadDate),
              const SizedBox(height: 8),
              _buildDetailRow('ម្ចាស់គណនី (Owner)៖', widget.userName),
              const SizedBox(height: 8),
              _buildDetailRow('ទីតាំងរក្សាទុក៖', doc.storageLocation),

              const SizedBox(height: 14),

              // Privacy & demo disclosure box
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFFEFF7F3),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: const Color(0xFFCCE2D7)),
                ),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.lock_outline_rounded, size: 16, color: Color(0xFF0F5A47)),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'ការការពារឯកជនភាព៖ ឯកសារនេះត្រូវបានរក្សាទុកសម្រាប់តែអ្នកផ្ទាល់ (Owner Access Only)។ មិនត្រូវបានបញ្ជូនទៅ AI, Telegram ឬ HR ឡើយ (គ្មានការវិភាគ ឬដាក់ពិន្ទុ)។',
                        style: TextStyle(fontSize: 11, color: Color(0xFF0F5A47), height: 1.4),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('បិទ'),
          ),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF0F5A47),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
            icon: const Icon(Icons.download_rounded, size: 16),
            label: const Text('ទាញយកឯកសារ'),
            onPressed: () {
              Navigator.pop(ctx);
              _downloadCv(doc);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildDetailRow(String label, String value, {bool isBold = false}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 130,
          child: Text(
            label,
            style: const TextStyle(fontSize: 11.5, color: AppColors.subtleGray),
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: TextStyle(
              fontSize: 12,
              fontWeight: isBold ? FontWeight.bold : FontWeight.w500,
              color: AppColors.charcoal,
            ),
          ),
        ),
      ],
    );
  }

  void _downloadCv(UserCvDocument doc) {
    final bytes = doc.bytes;
    if (bytes == null || bytes.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('មិនមានទិន្នន័យឯកសារសម្រាប់ទាញយកឡើយ។'),
          backgroundColor: AppColors.error,
          behavior: SnackBarBehavior.floating,
        ),
      );
      return;
    }

    try {
      FileDownloadHelper.download(
        bytes: bytes,
        fileName: doc.fileName,
        mimeType: doc.mimeType,
      );

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('📥 កំពុងទាញយកឯកសារ «${doc.fileName}»...'),
          backgroundColor: const Color(0xFF0F5A47),
          behavior: SnackBarBehavior.floating,
          duration: const Duration(seconds: 2),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('បរាជ័យក្នុងការទាញយក៖ $e'),
          backgroundColor: AppColors.error,
          behavior: SnackBarBehavior.floating,
        ),
      );
    }
  }

  void _confirmRemoveCv(UserCvDocument doc) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: const Row(
          children: [
            Icon(Icons.warning_amber_rounded, color: AppColors.error, size: 24),
            SizedBox(width: 8),
            Text('លុបឯកសារ CV?', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          ],
        ),
        content: Text(
          'តើអ្នកពិតជាចង់លុបឯកសារ CV «${doc.fileName}» នេះមែនទេ? សកម្មភាពនេះមិនអាចត្រឡប់ក្រោយវិញបានឡើយ។',
          style: const TextStyle(fontSize: 13, color: AppColors.charcoal, height: 1.4),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('បោះបង់'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.error,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
            onPressed: () async {
              Navigator.pop(ctx);
              final success = await ref.read(userCvStorageProvider).removeCv(widget.userId);
              if (mounted) {
                if (success) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(' ឯកសារ CV ត្រូវបានលុបចេញពីប្រព័ន្ធដោយជោគជ័យ!'),
                      backgroundColor: Color(0xFF0F5A47),
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('បរាជ័យក្នុងការលុបឯកសារ។'),
                      backgroundColor: AppColors.error,
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                }
              }
            },
            child: const Text('លុបឯកសារ'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final storageState = ref.watch(userCvStorageProvider);
    final doc = storageState.currentDocument;

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 14, bottom: 6),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFFF9FCFA),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFFCCE2D7)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Row
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: const Color(0xFF0F5A47).withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(Icons.file_present_rounded, color: Color(0xFF0F5A47), size: 18),
              ),
              const SizedBox(width: 8),
              const Expanded(
                child: Text(
                  'ឯកសារ CV ផ្ទាល់ខ្លួន (Personal CV)',
                  style: TextStyle(
                    fontSize: 13.5,
                    fontWeight: FontWeight.bold,
                    color: AppColors.charcoal,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                decoration: BoxDecoration(
                  color: const Color(0xFF0F5A47).withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Text(
                  'PDF / DOCX (≤ 10MB)',
                  style: TextStyle(
                    fontSize: 9.5,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0F5A47),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 10),

          // Upload Progress Bar
          if (storageState.isLoading) ...[
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: const Color(0xFFCCE2D7)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        storageState.statusMessageKh ?? 'កំពុងដំណើរការ...',
                        style: const TextStyle(fontSize: 11.5, fontWeight: FontWeight.bold, color: Color(0xFF0F5A47)),
                      ),
                      Text(
                        '${(storageState.uploadProgress * 100).toInt()}%',
                        style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Color(0xFF0F5A47)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: LinearProgressIndicator(
                      value: storageState.uploadProgress,
                      backgroundColor: const Color(0xFFE5ECE8),
                      valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFF0F5A47)),
                      minHeight: 6,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
          ],

          // Error Banner with Retry
          if (storageState.hasError && storageState.errorMessageKh != null) ...[
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color(0xFFFFEBEE),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: const Color(0xFFFFCDD2)),
              ),
              child: Row(
                children: [
                  const Icon(Icons.error_outline_rounded, color: AppColors.error, size: 18),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      storageState.errorMessageKh!,
                      style: const TextStyle(fontSize: 11.5, color: AppColors.error),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      minimumSize: const Size(50, 28),
                    ),
                    onPressed: () => storageState.retryUpload(),
                    child: const Text('សាកល្បង', style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
          ],

          // Body Content: Upload Dropzone OR Stored CV View
          if (doc == null && !storageState.isLoading)
            _buildEmptyUploadZone()
          else if (doc != null)
            _buildStoredCvCard(doc),

          const SizedBox(height: 8),

          // Privacy Guarantee and Demo Disclose
          const Text(
            '🔒 ឯកសារត្រូវបានរក្សាទុកក្នុង Local Storage សម្រាប់គណនីរបស់អ្នកប៉ុណ្ណោះ។ មិនត្រូវបានបញ្ជូនទៅ AI, Telegram ឬ HR ឡើយ (គ្មានការវិភាគ ឬដាក់ពិន្ទុ)។',
            style: TextStyle(
              fontSize: 10.5,
              color: AppColors.subtleGray,
              height: 1.35,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyUploadZone() {
    return InkWell(
      onTap: () => _pickAndUploadCv(isReplacing: false),
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: const Color(0xFF0F5A47).withValues(alpha: 0.35), width: 1.2),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color(0xFF0F5A47).withValues(alpha: 0.08),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.cloud_upload_outlined, color: Color(0xFF0F5A47), size: 28),
            ),
            const SizedBox(height: 8),
            const Text(
              'ចុចទីនេះដើម្បីបញ្ចូលឯកសារ CV របស់អ្នក',
              style: TextStyle(
                fontSize: 12.5,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0F5A47),
              ),
            ),
            const SizedBox(height: 3),
            const Text(
              'គាំទ្រឯកសារ PDF (.pdf) ឬ Word (.docx) អតិបរមា 10 MB ក្នុងមួយគណនី',
              style: TextStyle(fontSize: 11, color: AppColors.subtleGray),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStoredCvCard(UserCvDocument doc) {
    final iconColor = doc.isPdf ? const Color(0xFFD32F2F) : const Color(0xFF1976D2);
    final iconData = doc.isPdf ? Icons.picture_as_pdf_rounded : Icons.description_rounded;
    final typeBadge = doc.isPdf ? 'PDF' : 'DOCX';

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xFFCCE2D7)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: iconColor.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(iconData, color: iconColor, size: 22),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doc.fileName,
                      style: const TextStyle(
                        fontSize: 12.5,
                        fontWeight: FontWeight.bold,
                        color: AppColors.charcoal,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 2),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                          decoration: BoxDecoration(
                            color: iconColor.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: Text(
                            typeBadge,
                            style: TextStyle(fontSize: 9.5, fontWeight: FontWeight.bold, color: iconColor),
                          ),
                        ),
                        const SizedBox(width: 6),
                        Text(
                          '${doc.formattedSize} • ${doc.formattedUploadDate}',
                          style: const TextStyle(fontSize: 11, color: AppColors.subtleGray),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 10),
          const Divider(height: 1, color: Color(0xFFE5ECE8)),
          const SizedBox(height: 8),

          // Action Buttons: View, Download, Replace, Remove
          Wrap(
            spacing: 8,
            runSpacing: 6,
            alignment: WrapAlignment.end,
            children: [
              // 1. View Button
              OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  minimumSize: const Size(60, 32),
                  side: const BorderSide(color: Color(0xFF0F5A47)),
                  foregroundColor: const Color(0xFF0F5A47),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                ),
                icon: const Icon(Icons.visibility_outlined, size: 14),
                label: const Text('មើល (View)', style: TextStyle(fontSize: 11)),
                onPressed: () => _viewCvDetails(doc),
              ),

              // 2. Download Button
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0F5A47),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  minimumSize: const Size(60, 32),
                  elevation: 0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                ),
                icon: const Icon(Icons.download_rounded, size: 14),
                label: const Text('ទាញយក', style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold)),
                onPressed: () => _downloadCv(doc),
              ),

              // 3. Replace Button
              TextButton.icon(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                  minimumSize: const Size(60, 32),
                  foregroundColor: const Color(0xFF1976D2),
                ),
                icon: const Icon(Icons.change_circle_outlined, size: 14),
                label: const Text('ប្តូរឯកសារ (Replace)', style: TextStyle(fontSize: 11)),
                onPressed: () => _pickAndUploadCv(isReplacing: true),
              ),

              // 4. Remove Button
              TextButton.icon(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                  minimumSize: const Size(50, 32),
                  foregroundColor: AppColors.error,
                ),
                icon: const Icon(Icons.delete_outline_rounded, size: 14),
                label: const Text('លុប', style: TextStyle(fontSize: 11)),
                onPressed: () => _confirmRemoveCv(doc),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
