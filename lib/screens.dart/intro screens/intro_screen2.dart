import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:medo_app/resources/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../resources/widgets/widgets.dart';
import '../../utils/routes/routes_names.dart';

class IntroScreen2 extends StatelessWidget {
  const IntroScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: MyCircle(
              color: Color(0xff4683FF),
              height: 300.h,
              width: 300.w,
              radius: 150,
              margin: EdgeInsets.only(
                  top: 0.h, bottom: 260.h, left: 20.w, right: 0.w),
            ),
          ),
          MyCircle(
            color: Color(0xff7CA6FE),
            height: 33.h,
            width: 33.w,
            radius: 25,
            margin: EdgeInsets.only(top: 70.h, left: 30.w),
          ),
          MyCircle(
            color: Color(0xff7CA6FE),
            height: 25.h,
            width: 25.w,
            radius: 20,
            margin: EdgeInsets.only(top: 100.h, left: 355.w),
          ),
          MyCircle(
            color: Color(0xff7CA6FE),
            height: 15.h,
            width: 15.w,
            radius: 10,
            margin: EdgeInsets.only(top: 40.h, left: 290.w),
          ),
          MyCircle(
            color: Color(0xff7CA6FE),
            height: 10.h,
            width: 10.w,
            radius: 10,
            margin: EdgeInsets.only(top: 230.h, left: 20.w),
          ),
          MyCircle(
            color: Color(0xff7CA6FE),
            height: 10.h,
            width: 10.w,
            radius: 10,
            margin: EdgeInsets.only(top: 20.h, left: 120.w),
          ),
          MyCircle(
            color: Color(0xff7CA6FE),
            height: 6.h,
            width: 6.w,
            radius: 10,
            margin: EdgeInsets.only(top: 150.h, left: 80.w),
          ),
          MyCircle(
            color: Color(0xff7CA6FE),
            height: 6.h,
            width: 6.w,
            radius: 10,
            margin: EdgeInsets.only(top: 220.h, left: 380.w),
          ),
          MyCircle(
            color: Color(0xff7CA6FE),
            height: 10.h,
            width: 10.w,
            radius: 10,
            margin: EdgeInsets.only(top: 300.h, left: 385.w),
          ),
          MyCircle(
            color: Color(0xff7CA6FE),
            height: 6.h,
            width: 6.w,
            radius: 10,
            margin: EdgeInsets.only(top: 330.h, left: 20.w),
          ),
          AspectRatio(
            aspectRatio: 400 / 660,
            child: Container(
              // margin: EdgeInsets.only(top: 10, bottom: 20, right: 29, left: 20),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Black_doc.png'),
                  fit: BoxFit.cover,
                  // alignment: FractionalOffset.topCenter),
                ),
              ),
            ),
          ),
          BottomBar(context)
        ],
      ),
    );
  }

  Align BottomBar(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        alignment: Alignment.center,
        height: 380.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(55.r),
            topRight: Radius.circular(55.r),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  'Health checks &',
                  style: TextStyle(
                    height: 1.2,
                    fontSize: 34.sp,
                    fontWeight: FontWeight.w900,
                    color: colors.Logobg,
                  ),
                ),
                Text(
                  'consultations easily',
                  style: TextStyle(
                    height: 1.2.h,
                    fontSize: 34.sp,
                    fontWeight: FontWeight.w900,
                    color: colors.Logobg,
                  ),
                ),
                Text(
                  'anywhere anytime',
                  style: TextStyle(
                    height: 1.2.h,
                    fontSize: 34.sp,
                    fontWeight: FontWeight.w900,
                    color: colors.Logobg,
                  ),
                ),
                SizedBox(
                  height: 130.h,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
