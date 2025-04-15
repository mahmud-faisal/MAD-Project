import 'package:flutter/material.dart';
import 'package:paitent_bio/presentation/widgets/doctor/doctor_drawer.dart';
import 'package:paitent_bio/presentation/widgets/general/appbar.dart';
import './patient_detail.dart';

class PatientList extends StatelessWidget {
   PatientList({super.key});
  final String drName = "Dr Rafin Ahmed";
  
  // Sample patient data
  final List<Map<String, String>> patients = [
    {
      'name': 'John Doe',
      'age': '32',
      'gender': 'Male',
      'lastVisit': '2023-05-15',
    },
    {
      'name': 'Jane Smith',
      'age': '28',
      'gender': 'Female',
      'lastVisit': '2023-06-20',
    },
    {
      'name': 'Robert Johnson',
      'age': '45',
      'gender': 'Male',
      'lastVisit': '2023-04-10',
    },
    {
      'name': 'Emily Davis',
      'age': '38',
      'gender': 'Female',
      'lastVisit': '2023-07-05',
    },
    {
      'name': 'Michael Wilson',
      'age': '50',
      'gender': 'Male',
      'lastVisit': '2023-03-22',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appBarTitle: 'Patients'),
      drawer: DoctorDrawer(name: 'Dr Rafin Ahmed'),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                spreadRadius: 3,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                // ... your header code ...
                
                Expanded(
                  child: ListView.builder(
                    itemCount: patients.length,
                    itemBuilder: (context, index) {
                      final patient = patients[index];
                      return Card(
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        elevation: 2,
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.blue[100],
                            child: Icon(
                              patient['gender'] == 'Male' 
                                ? Icons.male 
                                : Icons.female,
                              color: Colors.blue[800],
                            ),
                          ),
                          title: Text(
                            patient['name']!,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            'Age: ${patient['age']} | Last Visit: ${patient['lastVisit']}',
                          ),
                          trailing: const Icon(Icons.chevron_right),
                          onTap: () => _navigateToPatientDetails(context, patient),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
    // Helper method for navigation
  void _navigateToPatientDetails(BuildContext context, Map<String, String> patient) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PatientDetailsPage(patient: patient),
      ),
    );
  }

}