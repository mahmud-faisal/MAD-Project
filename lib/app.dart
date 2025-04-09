import 'package:flutter/material.dart';
import 'routes/app_routes.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: AppRoutes.selectionPage, // Start from selection screen
      initialRoute:AppRoutes.testPage,
      routes: AppRoutes.getRoutes(),
    );
  }
}