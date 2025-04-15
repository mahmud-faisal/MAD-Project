import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/app.dart';
import './core/firebase/firebase_init.dart';
import './application/providers/auth_provider.dart';
import './core/firebase/auth_service.dart';
import 'package:provider/provider.dart';

// import '/core/config/environment.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Load environment variables
  // await Environment().load();
  
// Initialize FireB 
await FirebaseInitializer.initialize();


  // Set preferred orientations
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(AuthService())..initialize(),
        ),
        // Add other providers here as needed
      ],
      child: MyApp(),
    ),
  );
}