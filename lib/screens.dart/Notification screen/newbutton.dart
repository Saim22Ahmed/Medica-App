import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medo_app/resources/colors.dart';

class Notibtn extends StatelessWidget {
  const Notibtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 56.w,
      height: 32.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colors.Logobg,
      ),
      child: Text(
        'New',
        style: TextStyle(
          color: Colors.white,
          fontSize: 15.sp,
        ),
      ),
    );
  }
}
