import 'dart:typed_data';

import 'file_download_stub.dart'
    if (dart.library.js_interop) 'file_download_web.dart' as platform;

class FileDownloadHelper {
  static void download({
    required Uint8List bytes,
    required String fileName,
    required String mimeType,
  }) {
    platform.downloadFile(bytes, fileName, mimeType);
  }
}
