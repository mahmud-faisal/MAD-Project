import 'package:flutter/material.dart';
import '../../widgets/general/appbar.dart';
import '../../widgets/pharmacy/pharmacy_drawer.dart';

class PharmacyPersonalInfo extends StatelessWidget {
  const PharmacyPersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final String pName = "Pharma Company";
    final String pId = "11121300001100200372";
    final String pLicId = "12876394";
    final String pInfo = "Diabetes";
    final String pEmail = "nilamony@gmail.com";
    final String pRt = "5";

    return Scaffold(
      appBar: CustomAppBar(appBarTitle: 'Personal Information'),
      drawer: PharmacyDrawer(name: pName),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Pharmacy Company Information',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                _buildInfoRow('Company Name', pName),
                _buildInfoRow('Company ID', pId),
                _buildInfoRow('Licence ID', pLicId),
                _buildInfoRow('Product Information', pInfo),
                _buildInfoRow('Email', pEmail),
                _buildInfoRow('Pharmacy Rating', pRt),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 150,
            child: Text(
              '$label:',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Text(value),
          ),
        ],
      ),
    );
  }
}