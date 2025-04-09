import 'package:flutter/material.dart';
import '../../../routes/app_routes.dart';

class SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Select User Type")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(
            width: 150,
            
            child:  ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, AppRoutes.loginPage, arguments: 'doctor'),
              child: Text("Doctor"),
              
            )
          ),
          
         Container(
          width: 150,
             child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, AppRoutes.loginPage, arguments: 'patient'),
              child: Text("Patient"),
            )
         ),
            Container(
              width: 150,
              child:ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, AppRoutes.loginPage, arguments: 'pharmacist'),
              child: Text("Pharmacist"),
            ),
            
            ),
          ],
        ),
      ),
    );
  }
}