import 'package:flutter/material.dart';
import 'package:paitent_bio/presentation/screens/doctor/dr_info_screen.dart';
import 'package:paitent_bio/presentation/screens/doctor/doctorHome_screen.dart';
import '../presentation/screens/doctor/dr_info_screen.dart';
import 'package:paitent_bio/presentation/screens/doctor/patient_detail.dart';
import 'package:paitent_bio/presentation/screens/doctor/patient_list.dart';
import 'package:paitent_bio/presentation/screens/doctor/send_prescription.dart';
import '../presentation/screens/auth/login_screen.dart';
import '../presentation/screens/doctor/dr_qr.dart';
import '../presentation/screens/general/selection.dart';

class AppRoutes {
  // Test
  static const String testPage = '/';
  // Test 

  static const String selectionPage = '/selection';
  static const String loginPage = '/login';
  
  // Doctor Routes
  static const String doctorHome = '/doctor_home';
  static const String doctorPersonalInfo = '/doctor_personal_info';
  static const String doctorQR = '/doctor_qr';
  static const String doctorPatientList = '/doctor_patient_list';
  static const String doctorSendPrescription = '/doctor_send_prescription';
  static const String doctorPatientDetail = '/doctor_patient_detail';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      testPage: (context) => PatientList(), // Remove this in production

      selectionPage: (context) => SelectionScreen(),
      // loginPage: (context) => LoginScreen(),
      
      // Doctor routes
      doctorHome: (context) => DoctorHomeScreen(),
      doctorPersonalInfo: (context) => DoctorPersonalInfo(),
      doctorQR: (context) => DoctorQR(),
      doctorPatientList: (context) => PatientList(),
      doctorSendPrescription: (context) => DoctorSendPrescription(),
      // doctorPatientDetail: (context) => PatientDetailScreen(),
    };
  }
}