import 'package:flutter/material.dart';

import '../../../routes/app_routes.dart';

class PharmacyDrawer extends StatelessWidget {
  final String name;
  final String designation = "pharmacyCompany";
  const PharmacyDrawer({required this.name, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  designation,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
          _buildDrawerItem(
            context,
            icon: Icons.notifications,
            title: 'Notification',
            route: '/notifications', // Add this route when you create the screen
          ),
          _buildDrawerItem(
            context,
            icon: Icons.info,
            title: 'Personal Information',
            route: '/personal_info',
    ),

          _buildDrawerItem(
            context,
            icon: Icons.medical_information,
            title: 'Add Top Medicine',
            route: AppRoutes.addTopMedicine, // Use the constant from AppRoutes
          ),
          _buildDrawerItem(
            context,
            icon: Icons.medical_information,
            title: 'View Medicine',
            route: '/view_medicine',
          ),
          _buildDrawerItem(
            context,
            icon: Icons.description,
            title: 'Patient Prescription',
            route: '/patient_prescription',
          ),
          _buildDrawerItem(
              context,
              icon: Icons.request_page,
              title: 'Request Patient Data',
              route: AppRoutes.requestPatientData,
            ),

          _buildDrawerItem(
            context,
            icon: Icons.description,
            title: 'Prescription',
            route: AppRoutes.prescription,
          ),
          _buildDrawerItem(
            context,
            icon: Icons.qr_code,
            title: 'Own QR Code',
            route: '/qr_code',
          ),
          _buildDrawerItem(
            context,
            icon: Icons.image,
            title: 'Image Scanner',
            route: '/image_scanner',
          ),
          _buildDrawerItem(
            context,
            icon: Icons.subscriptions,
            title: 'Subscription Status',
            route: '/subscription',
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerItem(BuildContext context, {

    required IconData icon,
    required String title,
    required String route,
  }) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () {
        Navigator.pop(context); // Close the drawer
        Navigator.pushNamed(context, route); // Navigate to the route
      },
    );
  }
}