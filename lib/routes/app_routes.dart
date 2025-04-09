import 'package:flutter/material.dart';
import 'package:paitent_bio/presentation/screens/doctor/dr_info_screen.dart';
import 'package:paitent_bio/presentation/screens/doctor/send_prescription.dart';
// import '../presentation/screens/login_screen.dart';
// import '../presentation/screens/home_screen.dart';
// import '../presentation/screens/disease_screen.dart';
// import '../presentation/screens/prescription_screen.dart';
import '../presentation/screens/general/selection.dart';
import '../presentation/screens/doctor/doctorHome_screen.dart';

class AppRoutes {
// Test
  static const String testPage  = '/';
// Test 


  static const String selectionPage = '/selection';
  static const String loginPage = '/login';
  
  // Doctor Routes
  static const String doctorHome = '/doctor_home';
  static const String doctorPersonalInfo = '/doctor_presonal_info';
  static const String doctorDisease = '/doctor_disease';
  static const String doctorPrescription = '/doctor_prescription';

  // Patient Routes
  static const String patientHome = '/patient_home';
  static const String patientDisease = '/patient_disease';
  static const String patientPrescription = '/patient_prescription';

  // Pharmacist Routes
  static const String pharmacistHome = '/pharmacist_home';
  static const String pharmacistDisease = '/pharmacist_disease';
  static const String pharmacistPrescription = '/pharmacist_prescription';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      testPage : (context) => DoctorSendPrescription(),

      // selectionPage: (context) => SelectionScreen(),
      // loginPage: (context) => LoginScreen(),
      
      // doctorHome: (context) => DoctorHomeScreen(),
      // doctorDisease: (context) => DoctorDiseaseScreen(),
      // doctorPrescription: (context) => DoctorPrescriptionScreen(),

      // patientHome: (context) => PatientHomeScreen(),
      // patientDisease: (context) => PatientDiseaseScreen(),
      // patientPrescription: (context) => PatientPrescriptionScreen(),

      // pharmacistHome: (context) => PharmacistHomeScreen(),
      // pharmacistDisease: (context) => PharmacistDiseaseScreen(),
      // pharmacistPrescription: (context) => PharmacistPrescriptionScreen(),
    };
  }
}