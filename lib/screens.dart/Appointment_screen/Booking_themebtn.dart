import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:medo_app/resources/colors.dart';
import 'package:medo_app/screens.dart/Appointment_screen/book%20Appointment/book_apnmt.dart';
import 'package:medo_app/screens.dart/Doctors_screen/Doctors_screen.dart';

class BookingThemeButton extends StatelessWidget {
  BookingThemeButton({super.key, required this.title, this.icon, this.ontap});

  final String title;
  final Icon? icon;
  final ontap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 60.h,
        width: 390.h,
        child: FloatingActionButton.extended(
          onPressed: () => ontap(),
          icon: icon,
          label: Text(title),
          backgroundColor: colors.Logobg,
          extendedPadding:
              EdgeInsets.symmetric(horizontal: 100.w, vertical: 100.h),
          extendedTextStyle: TextStyle(fontSize: 18.sp),
          splashColor: Colors.white,
        ),
      ),
    );
  }
}
