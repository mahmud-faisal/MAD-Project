import 'package:flutter/material.dart';
import 'package:paitent_bio/presentation/screens/doctor/dr_info_screen.dart';
import 'package:paitent_bio/presentation/screens/doctor/patient_detail.dart';
import 'package:paitent_bio/presentation/screens/doctor/patient_list.dart';
import 'package:paitent_bio/presentation/screens/pharmacy/pharmacy_home_screen.dart';
import 'package:paitent_bio/presentation/screens/doctor/send_prescription.dart';
import 'package:paitent_bio/presentation/screens/pharmacy/pharmacy_personal_info.dart';
// import '../presentation/screens/login_screen.dart';
// import '../presentation/screens/home_screen.dart';
// import '../presentation/screens/disease_screen.dart';
// import '../presentation/screens/prescription_screen.dart';
import '../presentation/screens/general/selection.dart';
import '../presentation/screens/doctor/doctorHome_screen.dart';
import '../presentation/screens/pharmacy/add_top_medicine.dart';
import '../presentation/screens/pharmacy/prescription_files.dart';

import '../presentation/screens/pharmacy/prescription_screen.dart';
import '../presentation/screens/pharmacy/request_patient_data.dart';
import '../presentation/screens/pharmacy/view_medicine.dart';


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
  static const String pharmacyHome = '/pharmacy_home';
  static const String personalInfo = '/personal_info';
  static const String addTopMedicine = '/add_top_medicine';
  static const String viewMedicine = '/view_medicine';
  static const String patient_prescription = '/patient_prescription';
  static const String requestData = '/request_data';
  static const String prescription = '/prescription';
  static const String requestPatientData = '/request_patient_data';
  static const String prescriptionList = '/prescription_list';
  static const String prescriptionFiles = '/prescription_files';

  static const String qrCode = '/qr_code';
  static const String imageScanner = '/image_scanner';
  static const String subscription = '/subscription';



  static Map<String, WidgetBuilder> getRoutes() {
    return {
    testPage : (context) => PharmacyHomeScreen(),

      // selectionPage: (context) => SelectionScreen(),
      // loginPage: (context) => LoginScreen(),

      // doctorHome: (context) => DoctorHomeScreen(),
      // doctorDisease: (context) => DoctorDiseaseScreen(),
      // doctorPrescription: (context) => DoctorPrescriptionScreen(),

      // patientHome: (context) => PatientHomeScreen(),
      // patientDisease: (context) => PatientDiseaseScreen(),
      // patientPrescription: (context) => PatientPrescriptionScreen(),

      pharmacyHome: (context) => PharmacyHomeScreen(),
      personalInfo: (context) => const PharmacyPersonalInfo(),
      addTopMedicine: (context) => const AddTopMedicineScreen(),
      viewMedicine: (context) => const ViewMedicineScreen(),
      prescription: (context) => const PrescriptionScreen(),
      requestPatientData: (context) => const RequestPatientDataScreen(),

        prescriptionFiles: (context) => const PrescriptionFilesScreen(),

      // Add these placeholder screens:

      qrCode: (context) => _placeholderScreen('QR Code'),
      imageScanner: (context) => _placeholderScreen('Image Scanner'),
      subscription: (context) => _placeholderScreen('Subscription'),



    };
  }

  static Widget _placeholderScreen(String name) {
    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: Center(child: Text('$name Screen')),
    );
  }
}
