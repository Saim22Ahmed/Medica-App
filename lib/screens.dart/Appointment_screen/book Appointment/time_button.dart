import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:medo_app/controllers/calender_controller.dart';
import 'package:medo_app/resources/colors.dart';

class AppnmtTimeButton extends StatelessWidget {
  AppnmtTimeButton({
    super.key,
    required this.time,
    required this.index,
  });

  final String time;
  final int index;

  CalenderController calenderController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.0.w),
      child: Obx(
        () => Container(
          width: 80.w,
          height: 40.h,
          padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 12.w),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  time,
                  style: TextStyle(
                      color: calenderController.SelectedIndex.value == index
                          ? Colors.white
                          : colors.Logobg,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(
              color: calenderController.SelectedIndex.value == index
                  ? colors.Logobg
                  : Colors.white,
              border: Border.all(width: 2.w, color: colors.Logobg),
              borderRadius: BorderRadius.circular(50.r)),
        ),
      ),
    );
  }
}
