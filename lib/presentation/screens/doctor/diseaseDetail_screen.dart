import 'package:flutter/material.dart';
import '../../widgets/doctor/doctor_drawer.dart';
import '../../widgets/doctor/appBarDoctor.dart';

class DiseaseDetailScreen extends StatelessWidget {
  const DiseaseDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarDoctor(),
      drawer:  DoctorDrawer(
          name: 'Dr. John Doe',
          designation: 'General Practitioner',
        ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('disease COVID-19', style: TextStyle(fontSize: 18)),
          const SizedBox(height: 20),
          Card(
            color: Colors.deepPurple.shade100,
            margin: const EdgeInsets.all(16),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('UserType: doctor'),
                  Text('Id: 116779180351951502819'),
                  Text('Name: Dr. Rafin Ahmed'),
                  Text('Email: majedur15-14708@diu.edu.bd'),
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/prescriptions'),
            child: const Text('View Prescriptions'),
          )
        ],
      ),
    );
  }
}