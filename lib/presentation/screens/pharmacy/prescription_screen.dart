import 'package:flutter/material.dart';
import '../../widgets/general/appbar.dart';
import '../../widgets/pharmacy/pharmacy_drawer.dart';
import 'prescription_files.dart';

class PrescriptionScreen extends StatelessWidget {
  const PrescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appBarTitle: 'Prescription'),
      drawer: const PharmacyDrawer(name: "Pharma Company"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Disease Section
            const Text(
              'CANCER',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),

            // COVID-19 List Item
            ListTile(
              contentPadding: EdgeInsets.zero,
             // leading: const Text(style: TextStyle(fontSize: 18)),
              title: const Text(
                'COVID-19',
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),

              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PrescriptionFilesScreen(),
                  ),
                );
              },
            ),


            const Spacer(),

            // Navigation Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    // Previous logic
                  },
                  child: const Text(
                    'Previous',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Next logic
                  },
                  child: const Text(
                    'Next',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}