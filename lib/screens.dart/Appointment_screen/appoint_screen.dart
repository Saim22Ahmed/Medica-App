import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:medo_app/screens.dart/Appointment_screen/book_apnmt.dart';
import 'package:medo_app/screens.dart/Home_screen/bottombar.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Column(
        children: [],
      ),
    ));
  }
}
