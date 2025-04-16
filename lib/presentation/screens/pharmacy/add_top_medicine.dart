import 'package:flutter/material.dart';
import '../../widgets/general/appbar.dart';
import '../../widgets/pharmacy/pharmacy_drawer.dart';

class AddTopMedicineScreen extends StatelessWidget {
  const AddTopMedicineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appBarTitle: 'Add Top Medicine'),
      drawer: const PharmacyDrawer(name: "Pharma Company"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Input Section
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter topMedicine',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Submit logic here
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text('Submit'),
              ),
            ),

            // Network Status
            const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Text(
                '2.3 | 116KB/s',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ),

            const SizedBox(height: 30),

            // Medicine List
            const Text(
              'Current Top Medicines:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildMedicineItem('1. Metformin'),
            _buildMedicineItem('2. Amoxicillin'),
            _buildMedicineItem('3. Ibuprofen'),
            _buildMedicineItem('4. Paracetamol'),
          ],
        ),
      ),
    );
  }

  Widget _buildMedicineItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        children: [
          Expanded(child: Text(text)),
          IconButton(
            icon: const Icon(Icons.close, size: 20),
            onPressed: () {
              // Remove medicine logic
            },
          ),
        ],
      ),
    );
  }
}