import 'package:flutter/material.dart';
import '../../widgets/general/appbar.dart';
import '../../widgets/pharmacy/pharmacy_drawer.dart';

class ViewMedicineScreen extends StatelessWidget {
  const ViewMedicineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appBarTitle: 'View Medicine'),
      drawer: const PharmacyDrawer(name: "Pharma Company"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Network Status
            const Text(
              '2.3 | 116KB/s',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
            const SizedBox(height: 20),

            // Medicine List Header
            const Text(
              'Current Medicines:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            // Medicine List
            _buildMedicineItem('1. Metformin'),
            _buildMedicineItem('2. Amoxicillin'),
            _buildMedicineItem('3. Ibuprofen'),
            _buildMedicineItem('4. Paracetamol'),

            const SizedBox(height: 30),

            // Action Buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/add_top_medicine');
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text('Add New Medicine'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMedicineItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(4),
        ),
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Expanded(child: Text(text)),
            IconButton(
              icon: const Icon(Icons.edit, size: 20),
              onPressed: () {
                // Edit medicine logic
              },
            ),
            IconButton(
              icon: const Icon(Icons.delete, size: 20),
              onPressed: () {
                // Delete medicine logic
              },
            ),
          ],
        ),
      ),
    );
  }
}