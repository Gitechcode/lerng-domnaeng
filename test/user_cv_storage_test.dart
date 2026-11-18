import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:lerng_domnaeng/features/profile/domain/user_cv_document.dart';
import 'package:lerng_domnaeng/features/profile/data/user_cv_storage_service.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('UserCvDocument Domain Model Tests', () {
    test('Correctly identifies PDF and DOCX mime types and formats size', () {
      final sampleBytes = Uint8List.fromList(utf8.encode('%PDF-1.4 test content'));
      final base64String = base64Encode(sampleBytes);
      final now = DateTime(2026, 10, 28, 14, 30);

      final pdfDoc = UserCvDocument(
        id: 'cv_001',
        userId: 'user_123',
        fileName: 'Sok_Dara_CV_2026.pdf',
        fileSizeBytes: 2048,
        fileExtension: 'pdf',
        mimeType: 'application/pdf',
        uploadedAt: now,
        base64Content: base64String,
      );

      expect(pdfDoc.isPdf, isTrue);
      expect(pdfDoc.isDocx, isFalse);
      expect(pdfDoc.formattedSize, '2.0 KB');
      expect(pdfDoc.formattedUploadDate, contains('28/10/2026'));
      expect(pdfDoc.bytes, equals(sampleBytes));
    });

    test('Correctly serializes and deserializes from JSON / Map', () {
      final sampleBytes = Uint8List.fromList([1, 2, 3, 4, 5]);
      final base64String = base64Encode(sampleBytes);
      final doc = UserCvDocument(
        id: 'cv_002',
        userId: 'user_123',
        fileName: 'resume.docx',
        fileSizeBytes: 5 * 1024 * 1024, // 5 MB
        fileExtension: 'docx',
        mimeType: 'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
        uploadedAt: DateTime.now(),
        base64Content: base64String,
        storageLocation: 'Browser LocalStorage / SharedPreferences',
      );

      final jsonMap = doc.toMap();
      final revived = UserCvDocument.fromMap(jsonMap);

      expect(revived.id, 'cv_002');
      expect(revived.userId, 'user_123');
      expect(revived.fileName, 'resume.docx');
      expect(revived.fileSizeBytes, 5 * 1024 * 1024);
      expect(revived.formattedSize, '5.00 MB');
      expect(revived.fileExtension, 'docx');
      expect(revived.isDocx, isTrue);
      expect(revived.isPdf, isFalse);
      expect(revived.base64Content, base64String);
      expect(revived.bytes, equals(sampleBytes));
    });
  });

  group('UserCvStorageNotifier Validation & Storage Tests', () {
    late UserCvStorageNotifier storageNotifier;

    setUp(() {
      SharedPreferences.setMockInitialValues({});
      storageNotifier = UserCvStorageNotifier();
    });

    test('Validates file extension: accepts PDF and DOCX, rejects others', () {
      final dummyBytes = Uint8List.fromList([1, 2, 3]);

      final validPdf = storageNotifier.validateFile(
        fileName: 'my_cv.pdf',
        fileSizeBytes: 1024,
        bytes: dummyBytes,
      );
      expect(validPdf.isValid, isTrue);

      final validDocx = storageNotifier.validateFile(
        fileName: 'my_resume.docx',
        fileSizeBytes: 2048,
        bytes: dummyBytes,
      );
      expect(validDocx.isValid, isTrue);

      final invalidExe = storageNotifier.validateFile(
        fileName: 'virus.exe',
        fileSizeBytes: 1024,
        bytes: dummyBytes,
      );
      expect(invalidExe.isValid, isFalse);
      expect(invalidExe.errorMessageKh, contains('PDF'));

      final invalidPng = storageNotifier.validateFile(
        fileName: 'photo.png',
        fileSizeBytes: 1024,
        bytes: dummyBytes,
      );
      expect(invalidPng.isValid, isFalse);
    });

    test('Validates file size: rejects files larger than 10 MB', () {
      const tenMb = 10 * 1024 * 1024;
      final dummyBytes = Uint8List.fromList([1, 2, 3]);

      final exactTenMb = storageNotifier.validateFile(
        fileName: 'large.pdf',
        fileSizeBytes: tenMb,
        bytes: dummyBytes,
      );
      expect(exactTenMb.isValid, isTrue);

      final overTenMb = storageNotifier.validateFile(
        fileName: 'too_large.pdf',
        fileSizeBytes: tenMb + 1,
        bytes: dummyBytes,
      );
      expect(overTenMb.isValid, isFalse);
      expect(overTenMb.errorMessageKh, contains('10 MB'));
    });

    test('Uploads CV successfully and persists across user session / refresh', () async {
      final dummyBytes = Uint8List.fromList(utf8.encode('CV content Sok Dara'));
      final uploadSuccess = await storageNotifier.uploadCv(
        userId: 'user_123',
        fileName: 'Sok_Dara_CV.pdf',
        fileSizeBytes: dummyBytes.lengthInBytes,
        bytes: dummyBytes,
      );

      expect(uploadSuccess, isTrue);
      expect(storageNotifier.currentDocument, isNotNull);
      expect(storageNotifier.currentDocument!.fileName, 'Sok_Dara_CV.pdf');
      expect(storageNotifier.currentDocument!.isPdf, isTrue);
      expect(storageNotifier.uploadProgress, 1.0);
      expect(storageNotifier.isLoading, isFalse);
      expect(storageNotifier.hasCv, isTrue);

      // Verify persistence across reload
      final newNotifier = UserCvStorageNotifier();
      await newNotifier.loadCvForUser('user_123');

      expect(newNotifier.currentDocument, isNotNull);
      expect(newNotifier.currentDocument!.fileName, 'Sok_Dara_CV.pdf');
      expect(newNotifier.currentDocument!.bytes, equals(dummyBytes));
    });

    test('Preserves existing CV when replacement fails validation', () async {
      final originalBytes = Uint8List.fromList(utf8.encode('Original valid CV'));
      await storageNotifier.uploadCv(
        userId: 'user_123',
        fileName: 'original_cv.pdf',
        fileSizeBytes: originalBytes.lengthInBytes,
        bytes: originalBytes,
      );

      expect(storageNotifier.currentDocument?.fileName, 'original_cv.pdf');

      // Attempt to replace with an invalid file (> 10MB)
      final tooLargeBytes = Uint8List(11 * 1024 * 1024);
      final replaceSuccess = await storageNotifier.uploadCv(
        userId: 'user_123',
        fileName: 'invalid_huge.pdf',
        fileSizeBytes: tooLargeBytes.lengthInBytes,
        bytes: tooLargeBytes,
      );

      expect(replaceSuccess, isFalse);
      expect(storageNotifier.errorMessageKh, isNotNull);
      // PRESERVED: original CV is still intact!
      expect(storageNotifier.currentDocument?.fileName, 'original_cv.pdf');
      expect(storageNotifier.currentDocument?.bytes, equals(originalBytes));
    });

    test('Confirmed Remove deletes CV from state and local storage', () async {
      final bytes = Uint8List.fromList(utf8.encode('CV to be deleted'));
      await storageNotifier.uploadCv(
        userId: 'user_123',
        fileName: 'delete_me.pdf',
        fileSizeBytes: bytes.lengthInBytes,
        bytes: bytes,
      );
      expect(storageNotifier.currentDocument, isNotNull);

      // Perform confirmed remove
      final removeSuccess = await storageNotifier.removeCv('user_123');
      expect(removeSuccess, isTrue);
      expect(storageNotifier.currentDocument, isNull);
      expect(storageNotifier.hasCv, isFalse);

      // Verify that reloading after refresh yields null
      final freshNotifier = UserCvStorageNotifier();
      await freshNotifier.loadCvForUser('user_123');
      expect(freshNotifier.currentDocument, isNull);
    });

    test('Strict Owner Access Separation between users', () async {
      final userABytes = Uint8List.fromList(utf8.encode('User A CV'));
      final userBBytes = Uint8List.fromList(utf8.encode('User B CV'));

      await storageNotifier.uploadCv(
        userId: 'user_A',
        fileName: 'UserA_CV.pdf',
        fileSizeBytes: userABytes.lengthInBytes,
        bytes: userABytes,
      );

      await storageNotifier.uploadCv(
        userId: 'user_B',
        fileName: 'UserB_CV.docx',
        fileSizeBytes: userBBytes.lengthInBytes,
        bytes: userBBytes,
      );

      // Load for User A
      await storageNotifier.loadCvForUser('user_A');
      expect(storageNotifier.currentDocument?.fileName, 'UserA_CV.pdf');
      expect(storageNotifier.currentDocument?.isPdf, isTrue);

      // Load for User B
      await storageNotifier.loadCvForUser('user_B');
      expect(storageNotifier.currentDocument?.fileName, 'UserB_CV.docx');
      expect(storageNotifier.currentDocument?.isDocx, isTrue);
    });
  });
}
