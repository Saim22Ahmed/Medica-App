import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:medo_app/resources/colors.dart';
import 'package:medo_app/resources/pics.dart';

class CupButton extends StatefulWidget {
  const CupButton({
    super.key,
    required this.title,
    required this.image,
    this.color,
    this.fontweight = FontWeight.w600,
  });

  final String title;
  final AssetImage image;
  final dynamic color;
  final FontWeight fontweight;

  @override
  State<CupButton> createState() => _CupButtonState();
}

class _CupButtonState extends State<CupButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 70.h,
          width: 70.w,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 77, 124, 218).withOpacity(0.12),
            borderRadius: BorderRadius.circular(40),
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.grey.shade400,
            //     offset: Offset(0, 2),
            //     blurRadius: 2,
            //     // spreadRadius: 1,
            //   ),
            // ],
          ),
          child: Image(
            image: widget.image,
            fit: BoxFit.cover,
            width: 45.w,
            height: 45.h,
            color: widget.color,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          widget.title,
          textAlign: TextAlign.center,

          // overflow: TextOverflow.clip,
          style: TextStyle(
            // letterSpacing: 1.w,
            fontWeight: widget.fontweight,
            fontSize: 16.sp,
          ),
        ),
      ],
    );
  }
}
