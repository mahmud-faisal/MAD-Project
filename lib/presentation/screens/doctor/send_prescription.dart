import 'package:flutter/material.dart';
import 'package:paitent_bio/presentation/widgets/doctor/doctor_drawer.dart';
import 'package:paitent_bio/presentation/widgets/general/appbar.dart';

class DoctorSendPrescription extends StatelessWidget {
  const DoctorSendPrescription({super.key});

  final String name="Dr Rafin Islam";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appBarTitle: "Send Prescription"),
      drawer: DoctorDrawer(name: name),
    );
  }
}