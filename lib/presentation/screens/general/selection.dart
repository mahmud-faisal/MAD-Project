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
              onPressed: () => _navigateToLogin(context, 'Doctor'),
              child: Text('Doctor'),
            ),
            // Add other user type buttons similarly...
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
}