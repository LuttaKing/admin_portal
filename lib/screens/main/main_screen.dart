import 'package:admin/screens/dashbooard/dashboard_screen.dart';
import 'package:admin/screens/main/components/side_menu.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Expanded(
          //default flex == 1
          child: SideMenu()),
        Expanded(
          // takes 5/6 of screen
          flex: 5,child: DashboardScreen()),

      ],),
    ),);
  }
}

