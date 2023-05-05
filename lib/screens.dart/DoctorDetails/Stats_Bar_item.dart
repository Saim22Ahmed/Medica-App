import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medo_app/resources/colors.dart';
import '../../resources/pics.dart';

class StatsBarItem extends StatelessWidget {
  const StatsBarItem({
    super.key,
    this.image,
    required this.data,
    required this.attribute,
    this.height = 40,
    this.width = 40,
  });

  final dynamic image;
  final String data;
  final String attribute;
  final double height;
  final double width;
  // final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          // height: 70.h,
          // width: 70.w,
          padding: EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 24, 88, 160).withOpacity(0.1),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Image(
            image: image,
            // color: color,
            height: height.h,
            width: width.w,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Center(
          child: RichText(
            text: TextSpan(
                text: data,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontFamily: GoogleFonts.mukta().fontFamily,
                  fontWeight: FontWeight.bold,
                  color: colors.Logobg,
                  height: 1.5.h,
                ),
                children: [
                  TextSpan(
                      text: attribute == 'patients' || attribute == 'years exp.'
                          ? '+'
                          : '',
                      style: TextStyle(
                        fontSize: 18.h,
                      ))
                ]),
          ),
        ),
        Text(
          attribute,
          style: TextStyle(
            fontSize: 15.sp,
            height: 1.5.h,
          ),
        ),
      ],
    );
  }
}
