import 'package:flutter/material.dart';

class DoctorDrawer extends StatelessWidget {
  final String name;
  final String designation = "Doctor";
   const DoctorDrawer({required this.name, Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
// through the options in the drawer if there isn't enough vertical
// space to fit everything.
child: ListView(
  // Important: Remove any padding from the ListView.
  padding: EdgeInsets.zero,
  children: [
   DrawerHeader(
        decoration:BoxDecoration(
          color: Colors.blue,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name,
            style: TextStyle(
                 fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,

            ),
            ),
            Text(
                  designation,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white70,
                  ),
                ),

          ],
        ),

      
    ),
    ListTile(
      leading: Icon(Icons.notifications),
      title: const Text('Notification'),
      // onTap: () {
      //   // Update the state of the app.
      //   // ...
      // },
    ),
    ListTile(
      leading: Icon(Icons.info),
      title: const Text('Personal Info'),
      // onTap: () {
      //   // Update the state of the app.
      //   // ...
      // },
    ),
    ListTile(
      leading: Icon(Icons.info),
      title: const Text('Send Prescription'),
      // onTap: () {f
      //   // Update the state of the app.
      //   // ...
      // },
    ),
    ListTile(
      leading: Icon(Icons.info),
      title: const Text('Patients'),
      // onTap: () {
      //   // Update the state of the app.
      //   // ...
      // },
    ),
    ListTile(
      leading: Icon(Icons.info),
      title: const Text('Patient Prescriptions'),
      // onTap: () {
      //   // Update the state of the app.
      //   // ...
      // },
    ),
    ListTile(
      leading: Icon(Icons.info),
      title: const Text('Data from Pathologist'),
      // onTap: () {
      //   // Update the state of the app.
      //   // ...
      // },
    ),
    ListTile(
      leading: Icon(Icons.info),
      title: const Text('Data to Pathologist'),
      // onTap: () {
      //   // Update the state of the app.
      //   // ...
      // },
    ),
    ListTile(
      leading: Icon(Icons.info),
      title: const Text('Own QR Code'),
      // onTap: () {
      //   // Update the state of the app.
      //   // ...
      // },
    ),
    ListTile(
      leading: Icon(Icons.info),
      title: const Text('Image Scanner'),
      // onTap: () {
      //   // Update the state of the app.
      //   // ...
      // },
    ),
    ListTile(
      leading: Icon(Icons.info),
      title: const Text('Subscription Status'),
      // onTap: () {
      //   // Update the state of the app.
      //   // ...
      // },
    ),
    ListTile(
      leading: Icon(Icons.info),
      title: const Text('Patient Basic Information'),
      // onTap: () {
      //   // Update the state of the app.
      //   // ...
      // },
    ),
  ],
),
    );
  }
}