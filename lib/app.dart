import 'package:flutter/material.dart';
// import 'package:paitent_bio/presentation/screens/doctor/doctorHome_screen';'
import '/presentation/screens/doctor/doctorHome_screen.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter App',
        debugShowCheckedModeBanner: false,
        home:DoctorHomeScreen()
      );
    
  }
}