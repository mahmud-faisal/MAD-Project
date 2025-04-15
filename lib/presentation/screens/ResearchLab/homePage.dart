import 'package:flutter/material.dart';

import '../../../routes/app_routes.dart';


class ResearchLabHomePage extends StatelessWidget {
  const ResearchLabHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      appBar: AppBar(
        title: const Text(
          "Medical Research Lab",
          style: TextStyle(color: Colors.white), // white text color
        ),
        backgroundColor: Colors.indigo,
        centerTitle: true,
        elevation: 4,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // Drawer Header (Optional)
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.indigo,
              ),
              child: Text(
                "Menu",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // ListTile for Lab Notes
            ListTile(
              title: Text("Medical Lab Information"),
              onTap: () {
                // Navigate to the Lab Notes page
                Navigator.pushNamed(context, AppRoutes.personalInfoPage);
              },
            ),
            // ListTile for Research Discussions
            ListTile(
              title: Text("Side effects of medicines"),
              onTap: () {
                // Navigate to the Research Discussions page
                Navigator.pushNamed(context, AppRoutes.sideEffects);
              },
            ),
            // ListTile for Lab Inventory

            ListTile(
              title: Text("Select Disease"),
              onTap: () {
                // Navigate to the Data Visualization page
                Navigator.pushNamed(context, AppRoutes.selectDiseasePage);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.science_rounded, size: 64, color: Colors.deepPurple),
                  const SizedBox(height: 20),
                  const Text(
                    "Welcome to the Medical Research Lab",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      color: Colors.deepPurple,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Explore insights, manage lab data,\nand collaborate on groundbreaking research projects.",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black87,
                      height: 1.4,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
