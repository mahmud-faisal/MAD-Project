import 'package:flutter/material.dart';
import '../../../routes/app_routes.dart';

class SelectionScreen extends StatelessWidget {
  const SelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Select User Type')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _navigateToLogin(context, 'Patient'),
              child: Text('Patient'),
            ),
            ElevatedButton(
              onPressed: () => _navigateToLogin(context, 'Doctor'),
              child: Text('Doctor'),
            ),
            ElevatedButton(
              onPressed: () => _navigateToLogin(context, 'Pathologist'),
              child: Text('Pathologist'),
            ),
            ElevatedButton(
              onPressed: () => _navigateToLogin(context, 'Admin'),
              child: Text('Admin'),
            ),
            ElevatedButton(
              onPressed: () => _navigateToResearch(context, 'Lab Specialist'),
              child: Text('Lab Specialist'),
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToLogin(BuildContext context, String userType) {
    Navigator.pushNamed(
      context,
      AppRoutes.loginPage,
      arguments: userType,
    );
  }

  void _navigateToResearch(BuildContext context, String userType) {
    Navigator.pushNamed(
      context,
      AppRoutes.researchLabHomePage,
      arguments: userType,
    );
  }
}
