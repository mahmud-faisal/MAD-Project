import 'package:flutter/material.dart';
import '../../widgets/doctor/doctor_drawer.dart';
import '../../widgets/doctor/appBarDoctor.dart';

class DoctorHomeScreen extends StatelessWidget {
  const DoctorHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarDoctor(),
      drawer:  DoctorDrawer(
          name: 'Dr. John Doe',
          designation: 'General Practitioner',
        ),

      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, '/disease_detail'),
          child: const Text('COVID-19'),
        ),
      ),
    );
  }
}