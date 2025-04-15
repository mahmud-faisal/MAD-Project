import 'package:flutter/material.dart';
import 'routes/app_routes.dart';
import './presentation/screens/auth/login_screen.dart';
import './presentation/screens/ResearchLab/homePage.dart';

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       initialRoute: AppRoutes.selectionPage,
//       routes: AppRoutes.getRoutes(),
//       onGenerateRoute: (settings) {
//         // Handle routes with arguments
//         if (settings.name == AppRoutes.loginPage) {
//           final userType = settings.arguments as String;
//           return MaterialPageRoute(
//             builder: (context) => LoginScreen(userType: userType),
//           );
//         }
//         return null;
//       },
//     );
//   }
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.selectionPage,
      routes: AppRoutes.getRoutes(),
      onGenerateRoute: (settings) {
        if (settings.name == AppRoutes.loginPage) {
          final userType = settings.arguments as String;
          return MaterialPageRoute(
            builder: (context) => LoginScreen(userType: userType),
          );
        } else if (settings.name == AppRoutes.researchLabHomePage) {
          // You can also pass arguments if needed
          return MaterialPageRoute(
            builder: (context) => ResearchLabHomePage(),
          );
        }
        return null;
      },
    );
  }
}

