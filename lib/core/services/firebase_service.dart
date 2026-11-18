import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

/// Firebase initialization service supporting Web, Android, iOS and fallback
class FirebaseService {
  static bool _isInitialized = false;
  static bool get isInitialized => _isInitialized;

  static Future<void> initialize() async {
    try {
      if (Firebase.apps.isNotEmpty) {
        _isInitialized = true;
        return;
      }

      // Default Web & mobile Firebase project options for Lerng Domnaeng
      const firebaseOptions = FirebaseOptions(
        apiKey: 'AIzaSyDemo-LerngDomnaengApiKey1234567890',
        appId: '1:190504046623:web:lerngdomnaengwebclient',
        messagingSenderId: '190504046623',
        projectId: 'lerng-domnaeng',
        authDomain: 'lerng-domnaeng.firebaseapp.com',
        storageBucket: 'lerng-domnaeng.appspot.com',
      );

      await Firebase.initializeApp(options: firebaseOptions);
      _isInitialized = true;
      debugPrint('Firebase initialized successfully for Lerng Domnaeng project.');
    } catch (e) {
      debugPrint('Firebase initialization notice: $e (Graceful offline/demo fallback active)');
      _isInitialized = false;
    }
  }
}
