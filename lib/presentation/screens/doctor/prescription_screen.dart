import 'package:flutter/material.dart';

class PrescriptionScreen extends StatelessWidget {
  const PrescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Personal Doctor')),
      body: Column(
        children: [
          const SizedBox(height: 20),
          const Text(
            'Prescriptions for 116779180351951502819',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 200,
            child: PageView(
              children: [
                Image.network('https://via.placeholder.com/150'),
                Image.network('https://via.placeholder.com/150'),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Text('Previous ● Next')
        ],
      ),
    );
  }
}