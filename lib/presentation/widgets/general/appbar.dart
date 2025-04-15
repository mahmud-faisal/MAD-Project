import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String appBarTitle;

  const CustomAppBar({required this.appBarTitle, Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight); // Default height of the AppBar

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFF8B3DFF), // Background color
      title: Text(
        appBarTitle,
        style: TextStyle(
          color: Colors.white, // Title text color
        ),
      ),
    );
  }
}