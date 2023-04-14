import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medo_app/resources/colors.dart';

import '../../utils/routes/routes_names.dart';

class ThemeElevatedButton extends StatefulWidget {
  const ThemeElevatedButton({
    super.key,
    required this.ontap,
    required this.text,
    this.width = 350,
    this.height = 55,
  });

  final void Function()? ontap;
  final String text;
  final double width;
  final double height;

  @override
  State<ThemeElevatedButton> createState() => _ThemeElevatedButtonState();
}

class _ThemeElevatedButtonState extends State<ThemeElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          fixedSize: Size(widget.width.w, widget.height.h),
          alignment: Alignment.center,
          backgroundColor: colors.Logobg,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.r),
          ),
          textStyle: TextStyle(
            color: Colors.white,
            fontSize: 19.sp,
          )),
      onPressed: widget.ontap,
      child: Text(
        widget.text,
        textAlign: TextAlign.center,
      ),
    );
  }
}

// Container(
//           alignment: Alignment.center,
//           width: 350.w,
//           height: 50.h,
//           child: Text(
//             'Next',
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 22.sp,
//             ),
//           ),
//           decoration: BoxDecoration(
//             color: colors.Logobg,
//             borderRadius: BorderRadius.circular(30.r),
//           ),
//         ),