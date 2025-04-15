import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

class FirebaseInitializer {
  static Future<void> initialize() async {
    try {
      await Firebase.initializeApp(
        options: kIsWeb
            ? const FirebaseOptions(
                apiKey: "YOUR_API_KEY",
                appId: "YOUR_APP_ID",
                messagingSenderId: "YOUR_SENDER_ID",
                projectId: "YOUR_PROJECT_ID",
                storageBucket: "YOUR_STORAGE_BUCKET",
              )
            : null,
      );
    } catch (e) {
      throw Exception("Failed to initialize Firebase: $e");
    }
  }
}