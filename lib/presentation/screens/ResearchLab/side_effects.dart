import 'package:flutter/material.dart';

class SideEffects extends StatelessWidget {
  final List<Map<String, String>> medicines = [
    {
      'name': 'Paracetamol',
      'sideEffect': 'Liver damage (in high doses), nausea',
      'alternative': 'Ibuprofen, Aspirin'
    },
    {
      'name': 'Ibuprofen',
      'sideEffect': 'Stomach ulcers, kidney issues',
      'alternative': 'Paracetamol, Naproxen'
    },
    {
      'name': 'Amoxicillin',
      'sideEffect': 'Allergic reaction, diarrhea',
      'alternative': 'Azithromycin, Doxycycline'
    },
    {
      'name': 'Cetirizine',
      'sideEffect': 'Drowsiness, dry mouth',
      'alternative': 'Loratadine, Fexofenadine'
    },
    {
      'name': 'Metformin',
      'sideEffect': 'Stomach upset, metallic taste',
      'alternative': 'Glipizide, Sitagliptin'
    },
    {
      'name': 'Omeprazole',
      'sideEffect': 'Headache, abdominal pain',
      'alternative': 'Pantoprazole, Ranitidine'
    },
    {
      'name': 'Lisinopril',
      'sideEffect': 'Cough, dizziness',
      'alternative': 'Losartan, Enalapril'
    },
    {
      'name': 'Amlodipine',
      'sideEffect': 'Swelling, fatigue',
      'alternative': 'Nifedipine, Verapamil'
    },
    {
      'name': 'Atorvastatin',
      'sideEffect': 'Muscle pain, liver enzyme changes',
      'alternative': 'Rosuvastatin, Simvastatin'
    },
    {
      'name': 'Azithromycin',
      'sideEffect': 'Nausea, vomiting',
      'alternative': 'Doxycycline, Clarithromycin'
    },
  ];

  void _showDetails(BuildContext context, Map<String, String> medicine) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        title: Text(medicine['name']!, style: const TextStyle(fontWeight: FontWeight.bold)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Side Effects:', style: TextStyle(fontWeight: FontWeight.bold)),
            Text(medicine['sideEffect'] ?? ''),
            const SizedBox(height: 10),
            const Text('Alternatives:', style: TextStyle(fontWeight: FontWeight.bold)),
            Text(medicine['alternative'] ?? ''),
          ],
        ),
        actions: [
          TextButton(
            child: const Text('Close', style: TextStyle(color: Colors.teal)),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          'Medicines & Side Effects',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.separated(
          itemCount: medicines.length,
          separatorBuilder: (context, index) => const SizedBox(height: 12),
          itemBuilder: (context, index) {
            final medicine = medicines[index];
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 4,
              shadowColor: Colors.teal.withOpacity(0.3),
              child: ListTile(
                leading: const Icon(Icons.medication, color: Colors.teal),
                title: Text(
                  medicine['name']!,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                trailing: const Icon(Icons.info_outline),
                onTap: () => _showDetails(context, medicine),
              ),
            );
          },
        ),
      ),
    );
  }
}
