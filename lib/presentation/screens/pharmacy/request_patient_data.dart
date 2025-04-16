import 'package:flutter/material.dart';
import '../../widgets/general/appbar.dart';
import '../../widgets/pharmacy/pharmacy_drawer.dart';

class RequestPatientDataScreen extends StatelessWidget {
  const RequestPatientDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appBarTitle: 'Request Patient data'),
      drawer: const PharmacyDrawer(name: "Pharma Company"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Disease Dropdown
            const Text('Select Disease', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                hintText: 'Select a disease',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              ),
              items: const [
                DropdownMenuItem(value: 'COVID-19', child: Text('COVID-19')),
                DropdownMenuItem(value: 'Cancer', child: Text('Cancer')),
                DropdownMenuItem(value: 'Diabetes', child: Text('Diabetes')),
              ],
              onChanged: (value) {
                // Handle disease selection
              },
            ),
            const SizedBox(height: 30),

            // Request Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Request data logic
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text('Request Patient Data'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}