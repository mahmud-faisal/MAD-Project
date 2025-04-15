import 'package:flutter/material.dart';
import 'routes/app_routes.dart';
import './presentation/screens/auth/login_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.selectionPage,
      routes: AppRoutes.getRoutes(),
      onGenerateRoute: (settings) {
        // Handle routes with arguments
        if (settings.name == AppRoutes.loginPage) {
          final userType = settings.arguments as String;
          return MaterialPageRoute(
            builder: (context) => LoginScreen(userType: userType),
          );
        }
        return null;
      },
    );
  }
}