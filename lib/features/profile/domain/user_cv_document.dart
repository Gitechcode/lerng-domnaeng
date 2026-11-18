import 'dart:convert';
import 'dart:typed_data';

/// Represents an uploaded personal CV document for a user.
/// Stored locally in user's profile storage (Owner-Only Access).
/// NOTE: This document is strictly for personal storage & management.
/// It is NOT sent to AI, Telegram, HR or external services.
class UserCvDocument {
  final String id;
  final String userId;
  final String fileName;
  final int fileSizeBytes;
  final String fileExtension;
  final String mimeType;
  final DateTime uploadedAt;
  final String? base64Content;
  final String storageLocation;

  const UserCvDocument({
    required this.id,
    required this.userId,
    required this.fileName,
    required this.fileSizeBytes,
    required this.fileExtension,
    required this.mimeType,
    required this.uploadedAt,
    this.base64Content,
    this.storageLocation = 'ឧបករណ៍ផ្ទុកទិន្នន័យក្នុងកម្មវិធី (Local Storage / Browser Cache)',
  });

  bool get isPdf => fileExtension.toLowerCase() == 'pdf';
  bool get isDocx => fileExtension.toLowerCase() == 'docx';

  String get formattedSize {
    if (fileSizeBytes < 1024) return '$fileSizeBytes B';
    if (fileSizeBytes < 1024 * 1024) {
      return '${(fileSizeBytes / 1024).toStringAsFixed(1)} KB';
    }
    return '${(fileSizeBytes / (1024 * 1024)).toStringAsFixed(2)} MB';
  }

  String get formattedUploadDate {
    final d = uploadedAt;
    final hour = d.hour.toString().padLeft(2, '0');
    final minute = d.minute.toString().padLeft(2, '0');
    return '${d.day.toString().padLeft(2, '0')}/${d.month.toString().padLeft(2, '0')}/${d.year} $hour:$minute';
  }

  Uint8List? get bytes {
    if (base64Content == null || base64Content!.isEmpty) return null;
    try {
      return base64Decode(base64Content!);
    } catch (_) {
      return null;
    }
  }

  Map<String, dynamic> toMap() => {
    'id': id,
    'userId': userId,
    'fileName': fileName,
    'fileSizeBytes': fileSizeBytes,
    'fileExtension': fileExtension,
    'mimeType': mimeType,
    'uploadedAt': uploadedAt.toIso8601String(),
    'base64Content': base64Content,
    'storageLocation': storageLocation,
  };

  factory UserCvDocument.fromMap(Map<String, dynamic> map) => UserCvDocument(
    id: map['id'] as String,
    userId: map['userId'] as String,
    fileName: map['fileName'] as String,
    fileSizeBytes: (map['fileSizeBytes'] as num).toInt(),
    fileExtension: (map['fileExtension'] as String).toLowerCase(),
    mimeType: map['mimeType'] as String? ?? 'application/octet-stream',
    uploadedAt: DateTime.tryParse(map['uploadedAt'] as String? ?? '') ?? DateTime.now(),
    base64Content: map['base64Content'] as String?,
    storageLocation: map['storageLocation'] as String? ?? 'ឧបករណ៍ផ្ទុកទិន្នន័យក្នុងកម្មវិធី (Local Storage / Browser Cache)',
  );

  String toJson() => jsonEncode(toMap());

  factory UserCvDocument.fromJson(String source) =>
      UserCvDocument.fromMap(jsonDecode(source) as Map<String, dynamic>);

  UserCvDocument copyWith({
    String? id,
    String? userId,
    String? fileName,
    int? fileSizeBytes,
    String? fileExtension,
    String? mimeType,
    DateTime? uploadedAt,
    String? base64Content,
    String? storageLocation,
  }) {
    return UserCvDocument(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      fileName: fileName ?? this.fileName,
      fileSizeBytes: fileSizeBytes ?? this.fileSizeBytes,
      fileExtension: fileExtension ?? this.fileExtension,
      mimeType: mimeType ?? this.mimeType,
      uploadedAt: uploadedAt ?? this.uploadedAt,
      base64Content: base64Content ?? this.base64Content,
      storageLocation: storageLocation ?? this.storageLocation,
    );
  }
}
