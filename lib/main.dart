import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/app.dart';
// import '/core/config/environment.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Load environment variables
  // await Environment().load();
  
  // Set preferred orientations
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  
  runApp( MyApp());
}