import 'package:flutter/material.dart';
import 'package:paitent_bio/presentation/widgets/pharmacy/pharmacy_drawer.dart';
import '../../widgets/general/appbar.dart';

class PharmacyHomeScreen extends StatelessWidget {
  const PharmacyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appBarTitle: 'Pharmacy Home'),
      drawer: const PharmacyDrawer(name: "Pharma Company"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ElevatedButton(
            //   onPressed: () => Navigator.pushNamed(context, '/prototype'),
            //   child: const Text('View Patient Bio Prototype'),
            // ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/personal_info'),
              child: const Text('View Personal Information'),
            ),
          ],
        ),
      ),
    );
  }
}