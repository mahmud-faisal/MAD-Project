import 'package:flutter/material.dart';

class SelectDiseasePage extends StatelessWidget {
  final List<String> diseases = [
    'Flu', 'Cold', 'COVID-19', 'Cancer', 'Malaria', 'Asthma', 'Diabetes', 'Tuberculosis',
    'Hypertension', 'Cholera', 'Hepatitis', 'Dengue', 'Arthritis', 'Pneumonia', 'Leukemia'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Disease'),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        itemCount: diseases.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(8),
            elevation: 5,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: ListTile(
              contentPadding: EdgeInsets.all(16),
              title: Text(
                diseases[index],
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PrescriptionPage(disease: diseases[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class PrescriptionPage extends StatelessWidget {
  final String disease;

  PrescriptionPage({required this.disease});

  String getPrescription(String disease) {
    switch (disease) {
      case 'Flu':
        return 'Rest, Fluids, Antipyretics (Paracetamol)';
      case 'Cold':
        return 'Rest, Decongestants, Pain relievers';
      case 'COVID-19':
        return 'Rest, Monitor symptoms, Seek medical care if needed';
      case 'Cancer':
        return 'Chemotherapy, Surgery, Radiation therapy';
      case 'Malaria':
        return 'Antimalarial drugs (e.g., Artemisinin-based combination therapy)';
      default:
        return 'No prescription available for this disease.';
    }
  }

  String getResearch(String disease) {
    switch (disease) {
      case 'Flu':
        return 'Recent studies show that antiviral drugs like Oseltamivir can reduce the severity and duration of flu symptoms.';
      case 'COVID-19':
        return 'Ongoing research into vaccines and antiviral treatments has shown promising results in reducing severe symptoms and improving recovery rates.';
      case 'Cancer':
        return 'Studies on immunotherapy and gene-editing techniques show significant improvements in treating various types of cancer.';
      default:
        return 'No recent research available.';
    }
  }

  String getPrevention(String disease) {
    switch (disease) {
      case 'Flu':
        return 'Wash hands frequently, get vaccinated annually, avoid close contact with sick individuals.';
      case 'COVID-19':
        return 'Wear masks, maintain social distancing, and get vaccinated.';
      case 'Cancer':
        return 'Avoid smoking, maintain a healthy weight, exercise regularly, and get regular screenings.';
      default:
        return 'Prevention strategies vary based on disease.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$disease Overview'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Disease title and prescription in a styled container
              _buildSectionTitle('Prescription for $disease'),
              _buildCard(
                content: getPrescription(disease),
                color: Colors.lightBlue[100]!,
              ),
              SizedBox(height: 20),

              // Research findings section with eye-catching card
              _buildSectionTitle('Research Findings'),
              _buildCard(
                content: getResearch(disease),
                color: Colors.green[100]!,
              ),
              SizedBox(height: 20),

              // Prevention and lifestyle tips in a container
              _buildSectionTitle('Prevention & Lifestyle'),
              _buildCard(
                content: getPrevention(disease),
                color: Colors.orange[100]!,
              ),
              SizedBox(height: 20),

              // Optional: Clinical Trials info in a container
              _buildSectionTitle('Clinical Trials'),
              _buildCard(
                content: 'Check local medical databases for ongoing clinical trials on $disease.',
                color: Colors.purple[100]!,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper function to build section titles with custom font and color
  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(top: 20, bottom: 10),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.blueAccent,
        ),
      ),
    );
  }

  // Helper function to create a card for each section with content
  Widget _buildCard({required String content, required Color color}) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: color,
      elevation: 6,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          content,
          style: TextStyle(fontSize: 18, color: Colors.black87),
        ),
      ),
    );
  }
}
