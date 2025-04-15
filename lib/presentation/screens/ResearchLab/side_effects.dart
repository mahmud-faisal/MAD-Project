import 'package:flutter/material.dart';

class MedicineInfoPage extends StatefulWidget {
  @override
  _MedicineInfoPageState createState() => _MedicineInfoPageState();
}

class _MedicineInfoPageState extends State<MedicineInfoPage> {
  int? expandedIndex;

  final List<Map<String, dynamic>> medicines = [
    {
      'name': 'Paracetamol',
      'sideEffects': 'Nausea, rash, liver issues (rare)',
      'alternatives': ['Ibuprofen', 'Aspirin'],
    },
    {
      'name': 'Oseltamivir',
      'sideEffects': 'Vomiting, headache, nausea',
      'alternatives': ['Zanamivir'],
    },
    {
      'name': 'Remdesivir',
      'sideEffects': 'Liver damage, chills, nausea',
      'alternatives': ['Molnupiravir'],
    },
    {
      'name': 'Ibuprofen',
      'sideEffects': 'Stomach upset, ulcers, kidney issues',
      'alternatives': ['Naproxen', 'Paracetamol'],
    },
    {
      'name': 'Dexamethasone',
      'sideEffects': 'Insomnia, mood swings, weight gain',
      'alternatives': ['Prednisone', 'Methylprednisolone'],
    },
    {
      'name': 'Artemether',
      'sideEffects': 'Dizziness, fever, weakness',
      'alternatives': ['Quinine', 'Chloroquine'],
    },
    {
      'name': 'Lumefantrine',
      'sideEffects': 'Fatigue, headache, dizziness',
      'alternatives': ['Artesunate'],
    },
    {
      'name': 'Zanamivir',
      'sideEffects': 'Cough, sinus pain, throat irritation',
      'alternatives': ['Oseltamivir'],
    },
    {
      'name': 'Molnupiravir',
      'sideEffects': 'Diarrhea, dizziness, rash',
      'alternatives': ['Remdesivir'],
    },
    {
      'name': 'Prednisone',
      'sideEffects': 'Weight gain, mood change, swelling',
      'alternatives': ['Hydrocortisone'],
    },
    {
      'name': 'Chloroquine',
      'sideEffects': 'Blurred vision, itching, nausea',
      'alternatives': ['Hydroxychloroquine'],
    },
    {
      'name': 'Naproxen',
      'sideEffects': 'Heartburn, drowsiness, upset stomach',
      'alternatives': ['Ibuprofen'],
    },
    {
      'name': 'Aspirin',
      'sideEffects': 'Bleeding, stomach ulcers, nausea',
      'alternatives': ['Paracetamol'],
    },
    {
      'name': 'Hydrocortisone',
      'sideEffects': 'Irritation, dryness, redness',
      'alternatives': ['Prednisone'],
    },
    {
      'name': 'Methylprednisolone',
      'sideEffects': 'Bloating, acne, increased appetite',
      'alternatives': ['Dexamethasone'],
    },
    {
      'name': 'Chemotherapy',
      'sideEffects': 'Hair loss, fatigue, infection risk',
      'alternatives': ['Radiation therapy'],
    },
    {
      'name': 'Radiation therapy',
      'sideEffects': 'Skin changes, fatigue, nausea',
      'alternatives': ['Chemotherapy'],
    },
    {
      'name': 'Acetaminophen',
      'sideEffects': 'Liver toxicity in overdose',
      'alternatives': ['Ibuprofen'],
    },
    {
      'name': 'Amoxicillin',
      'sideEffects': 'Diarrhea, rash, allergic reaction',
      'alternatives': ['Azithromycin'],
    },
    {
      'name': 'Azithromycin',
      'sideEffects': 'Nausea, abdominal pain, headache',
      'alternatives': ['Clarithromycin'],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medicine Info'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: medicines.length,
        itemBuilder: (context, index) {
          final medicine = medicines[index];
          final isExpanded = expandedIndex == index;

          return Card(
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: InkWell(
              onTap: () {
                setState(() {
                  expandedIndex = isExpanded ? null : index;
                });
              },
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      medicine['name'],
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    if (isExpanded) ...[
                      SizedBox(height: 12),
                      Text(
                        "Side Effects:",
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.redAccent),
                      ),
                      Text(medicine['sideEffects']),
                      SizedBox(height: 10),
                      Text(
                        "Alternatives:",
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
                      ),
                      for (var alt in medicine['alternatives'])
                        Text("- $alt"),
                    ],
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
