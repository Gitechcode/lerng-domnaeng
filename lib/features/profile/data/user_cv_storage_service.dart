import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../domain/user_cv_document.dart';

class CvValidationResult {
  final bool isValid;
  final String? errorMessageKh;

  const CvValidationResult({required this.isValid, this.errorMessageKh});

  factory CvValidationResult.valid() => const CvValidationResult(isValid: true);
  factory CvValidationResult.error(String message) => CvValidationResult(isValid: false, errorMessageKh: message);
}

/// Manages personal CV upload, local storage persistence, validation, and lifecycle.
/// STRICT PRIVACY NOTE:
/// This document is NEVER sent to AI, Telegram, HR or external services.
/// No AI scoring, parsing, or transmission occurs.
class UserCvStorageNotifier extends ChangeNotifier {
  static const int maxFileSizeBytes = 10 * 1024 * 1024; // 10 MB limit
  static const List<String> allowedExtensions = ['pdf', 'docx'];

  UserCvDocument? _currentDocument;
  bool _isLoading = false;
  double _uploadProgress = 0.0;
  String? _statusMessageKh;
  String? _errorMessageKh;
  bool _hasError = false;

  // Cached parameters for retry functionality
  String? _pendingUserId;
  String? _pendingFileName;
  int? _pendingFileSizeBytes;
  Uint8List? _pendingBytes;

  UserCvDocument? get currentDocument => _currentDocument;
  bool get isLoading => _isLoading;
  double get uploadProgress => _uploadProgress;
  String? get statusMessageKh => _statusMessageKh;
  String? get errorMessageKh => _errorMessageKh;
  bool get hasError => _hasError;
  bool get hasCv => _currentDocument != null;

  /// Validate a candidate file before attempting upload/replacement.
  CvValidationResult validateFile({
    required String? fileName,
    required int? fileSizeBytes,
    required Uint8List? bytes,
  }) {
    if (fileName == null || fileName.trim().isEmpty) {
      return CvValidationResult.error('សូមជ្រើសរើសឯកសារ CV ដែលមានសុពលភាព។');
    }

    final ext = fileName.contains('.') ? fileName.split('.').last.toLowerCase().trim() : '';
    if (!allowedExtensions.contains(ext)) {
      return CvValidationResult.error(
        'ទម្រង់ឯកសារមិនត្រឹមត្រូវឡើយ! ប្រព័ន្ធអនុញ្ញាតតែឯកសារប្រភេទ PDF (.pdf) ឬ Word (.docx) ប៉ុណ្ណោះ។',
      );
    }

    final size = fileSizeBytes ?? bytes?.lengthInBytes ?? 0;
    if (size <= 0) {
      return CvValidationResult.error('ឯកសារទទេ (0 Bytes) មិនអាចបញ្ចូលបានឡើយ។');
    }

    if (size > maxFileSizeBytes) {
      final sizeMb = (size / (1024 * 1024)).toStringAsFixed(1);
      return CvValidationResult.error(
        'ទំហំឯកសារលើសកម្រិតកំណត់! ឯកសាររបស់អ្នកមានទំហំ $sizeMb MB ដែលធំជាងកម្រិតអនុញ្ញាតអតិបរមា 10 MB។',
      );
    }

    return CvValidationResult.valid();
  }

  /// Load persisted CV document for the specified user from SharedPreferences.
  Future<void> loadCvForUser(String userId) async {
    _isLoading = true;
    _errorMessageKh = null;
    _hasError = false;
    notifyListeners();

    try {
      final prefs = await SharedPreferences.getInstance();
      final storageKey = 'user_cv_doc_$userId';
      final jsonString = prefs.getString(storageKey);

      if (jsonString != null && jsonString.isNotEmpty) {
        final doc = UserCvDocument.fromJson(jsonString);
        // Owner verification check
        if (doc.userId == userId) {
          _currentDocument = doc;
        } else {
          _currentDocument = null;
        }
      } else {
        _currentDocument = null;
      }
    } catch (e) {
      debugPrint('Error loading CV from storage: $e');
      _currentDocument = null;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  /// Upload or replace CV document.
  /// NOTE: If upload fails or is cancelled, the existing CV remains 100% preserved.
  Future<bool> uploadCv({
    required String userId,
    required String fileName,
    required int fileSizeBytes,
    required Uint8List bytes,
  }) async {
    // 1. Validation check
    final validation = validateFile(
      fileName: fileName,
      fileSizeBytes: fileSizeBytes,
      bytes: bytes,
    );

    if (!validation.isValid) {
      _errorMessageKh = validation.errorMessageKh;
      _hasError = true;
      notifyListeners();
      return false;
    }

    // Cache for potential retry
    _pendingUserId = userId;
    _pendingFileName = fileName;
    _pendingFileSizeBytes = fileSizeBytes;
    _pendingBytes = bytes;

    _isLoading = true;
    _hasError = false;
    _errorMessageKh = null;
    _uploadProgress = 0.1;
    _statusMessageKh = 'កំពុងពិនិត្យសុពលភាពទម្រង់ឯកសារ...';
    notifyListeners();

    try {
      // Simulate stepped progress indicator
      await Future.delayed(const Duration(milliseconds: 200));
      _uploadProgress = 0.45;
      _statusMessageKh = 'កំពុងរក្សាទុកឯកសារក្នុង Local Storage...';
      notifyListeners();

      await Future.delayed(const Duration(milliseconds: 250));
      _uploadProgress = 0.80;
      _statusMessageKh = 'កំពុងកត់ត្រាព័ត៌មានឯកសារ (Metadata)...';
      notifyListeners();

      final ext = fileName.split('.').last.toLowerCase().trim();
      final mimeType = ext == 'pdf'
          ? 'application/pdf'
          : 'application/vnd.openxmlformats-officedocument.wordprocessingml.document';

      final base64Content = base64Encode(bytes);
      final newDoc = UserCvDocument(
        id: 'cv-${DateTime.now().millisecondsSinceEpoch}',
        userId: userId,
        fileName: fileName,
        fileSizeBytes: fileSizeBytes,
        fileExtension: ext,
        mimeType: mimeType,
        uploadedAt: DateTime.now(),
        base64Content: base64Content,
        storageLocation: 'ឧបករណ៍ផ្ទុកទិន្នន័យក្នុងកម្មវិធី (Local Storage / Browser Cache)',
      );

      // Persist to SharedPreferences
      final prefs = await SharedPreferences.getInstance();
      final storageKey = 'user_cv_doc_$userId';
      final saved = await prefs.setString(storageKey, newDoc.toJson());

      if (!saved) {
        throw Exception('មិនអាចរក្សាទុកឯកសារក្នុង Storage បានឡើយ។');
      }

      await Future.delayed(const Duration(milliseconds: 150));
      _uploadProgress = 1.0;
      _statusMessageKh = 'បានរក្សាទុកឯកសារ CV ជោគជ័យ!';
      _currentDocument = newDoc;
      _hasError = false;
      _errorMessageKh = null;

      // Clear pending retry cache on success
      _pendingUserId = null;
      _pendingFileName = null;
      _pendingFileSizeBytes = null;
      _pendingBytes = null;

      notifyListeners();
      return true;
    } catch (e) {
      debugPrint('Error uploading CV: $e');
      _hasError = true;
      _errorMessageKh = 'បរាជ័យក្នុងការបញ្ចូលឯកសារ៖ $e (ឯកសារចាស់របស់អ្នកនៅរក្សាដដែល)';
      // Important: _currentDocument is NOT overwritten, preserving existing CV!
      notifyListeners();
      return false;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  /// Retry the last failed upload if data was cached.
  Future<bool> retryUpload() async {
    if (_pendingUserId != null &&
        _pendingFileName != null &&
        _pendingFileSizeBytes != null &&
        _pendingBytes != null) {
      return await uploadCv(
        userId: _pendingUserId!,
        fileName: _pendingFileName!,
        fileSizeBytes: _pendingFileSizeBytes!,
        bytes: _pendingBytes!,
      );
    }
    return false;
  }

  /// Remove current CV document after user confirms.
  Future<bool> removeCv(String userId) async {
    _isLoading = true;
    notifyListeners();

    try {
      final prefs = await SharedPreferences.getInstance();
      final storageKey = 'user_cv_doc_$userId';
      await prefs.remove(storageKey);

      _currentDocument = null;
      _uploadProgress = 0.0;
      _statusMessageKh = null;
      _errorMessageKh = null;
      _hasError = false;
      notifyListeners();
      return true;
    } catch (e) {
      debugPrint('Error removing CV: $e');
      _errorMessageKh = 'មិនអាចលុបឯកសារបានឡើយ៖ $e';
      notifyListeners();
      return false;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  void clearError() {
    _hasError = false;
    _errorMessageKh = null;
    notifyListeners();
  }
}

final userCvStorageProvider = ChangeNotifierProvider<UserCvStorageNotifier>((ref) {
  return UserCvStorageNotifier();
});
