import 'package:flutter/material.dart';
import '../../widgets/general/appbar.dart';
import '../../widgets/doctor/doctor_drawer.dart';
class DoctorPersonalInfo extends StatelessWidget {
  const DoctorPersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
     final String drName= "Dr. Rafin Ahmed";
     final String drId= "11677915846857";
     final String drBMDCId= "18092595";
     final String drSpeciality= "Cardiology";
     final String drEmail= "drrafin@example.com";
     final String drConsultFee= "800";
     final String drXp= "5";
     
    return Scaffold(
      appBar:CustomAppBar(appBarTitle: 'Personal Detail') ,
      drawer:DoctorDrawer(name: drName) ,
      body: Center(
  child: Container(
    padding: EdgeInsets.all(15),
    margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
    decoration: BoxDecoration(
      color: Colors.white, // Background color for children
      borderRadius: BorderRadius.circular(10), // Optional rounded edges
      boxShadow: [
        BoxShadow(
          color: Colors.grey.shade200,
          spreadRadius: 3,
          blurRadius: 7,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min, // Adjust the column height to fit its children
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Doctor Basic Information',
           style: 
           TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),
           textAlign: TextAlign.center,
           
          ),
          SizedBox(height:8.0),
          Text('Name : $drName', style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
          SizedBox(height:8),
          Text('Doctor Id: $drId', style: TextStyle(fontSize: 16,)),
          Text('BMDC Id: $drBMDCId', style: TextStyle(fontSize: 16)),
          Text('Speciality: $drSpeciality', style: TextStyle(fontSize: 16)),
          Text('Email: $drEmail', style: TextStyle(fontSize: 16)),
          Text('Consultation Fee: $drConsultFee', style: TextStyle(fontSize: 16)),
          Text('Year of Experience: $drXp', style: TextStyle(fontSize: 16)),
        ],
      ),
    ),
  ),
),
    );
  }
}