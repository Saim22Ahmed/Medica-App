import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medo_app/resources/colors.dart';
import 'package:medo_app/utils/routes/routes_names.dart';

import '../../resources/widgets/widgets.dart';

class IntroScreen3 extends StatefulWidget {
  const IntroScreen3({super.key});

  @override
  State<IntroScreen3> createState() => _IntroScreen3State();
}

class _IntroScreen3State extends State<IntroScreen3> {
  // late Image _image;
  bool isHover = false;
  // ImageProvider _image = AssetImage("assets/images/she_doc.png");

  // @override
  // void initState() {
  //   // TODO: implement initState

  //   setState(() {
  //     _image = Image.asset('assets/images/she_doc.png');
  //   });
  //   super.initState();
  // }
  final _image = Image.asset(
    'assets/images/she_doc.png',
    // fit: BoxFit.cover,
  );

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    precacheImage(_image.image, context);

    super.didChangeDependencies();
  }

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
              radius: 150.r,
              margin: EdgeInsets.only(top: 0.h, bottom: 260.h, left: 45.w),
            ),
          ),
          MyCircle(
            color: Color(0xff7CA6FE),
            height: 33.h,
            width: 33.w,
            radius: 25.r,
            margin: EdgeInsets.only(top: 70.h, left: 30.w),
          ),
          MyCircle(
            color: Color(0xff7CA6FE),
            height: 25.h,
            width: 25.w,
            radius: 20.r,
            margin: EdgeInsets.only(top: 100.h, left: 355.w),
          ),
          MyCircle(
            color: Color(0xff7CA6FE),
            height: 15.h,
            width: 15.w,
            radius: 10.r,
            margin: EdgeInsets.only(top: 40.h, left: 290.w),
          ),
          MyCircle(
            color: Color(0xff7CA6FE),
            height: 10.h,
            width: 10.w,
            radius: 10.r,
            margin: EdgeInsets.only(top: 230.h, left: 20.w),
          ),
          MyCircle(
            color: Color(0xff7CA6FE),
            height: 10.h,
            width: 10.w,
            radius: 10.r,
            margin: EdgeInsets.only(top: 20.h, left: 120.w),
          ),
          MyCircle(
            color: Color(0xff7CA6FE),
            height: 6.h,
            width: 6.w,
            radius: 10.r,
            margin: EdgeInsets.only(top: 150.h, left: 80.w),
          ),
          MyCircle(
            color: Color(0xff7CA6FE),
            height: 6.h,
            width: 6.w,
            radius: 10.r,
            margin: EdgeInsets.only(top: 220.h, left: 380.w),
          ),
          MyCircle(
            color: Color(0xff7CA6FE),
            height: 10.h,
            width: 10.w,
            radius: 10.r,
            margin: EdgeInsets.only(top: 300.h, left: 385.w),
          ),
          MyCircle(
            color: Color(0xff7CA6FE),
            height: 6.h,
            width: 6.w,
            radius: 10.r,
            margin: EdgeInsets.only(top: 330.h, left: 20.w),
          ),
          AspectRatio(
            aspectRatio: 400 / 680,
            child: Container(
              margin: EdgeInsets.only(top: 25.h, right: 8.w),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: _image.image,
                  fit: BoxFit.cover,
                ),
                // image: DecorationImage(image: _image.image, fit: BoxFit.cover),
              ),
            ),
          ),
          BottomBar(context),
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
                  "Let's start living",
                  style: TextStyle(
                    height: 1.2.h,
                    fontSize: 34.sp,
                    fontWeight: FontWeight.w900,
                    color: colors.Logobg,
                  ),
                ),
                Text(
                  'healthy and well',
                  style: TextStyle(
                    height: 1.2.h,
                    fontSize: 34.sp,
                    fontWeight: FontWeight.w900,
                    color: colors.Logobg,
                  ),
                ),
                Text(
                  'with us right now!',
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
