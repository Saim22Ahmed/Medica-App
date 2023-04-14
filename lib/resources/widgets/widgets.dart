import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:medo_app/resources/colors.dart';

class MyCircle extends StatefulWidget {
  const MyCircle(
      {super.key,
      required this.color,
      this.margin,
      required this.height,
      required this.width,
      required this.radius});

  final dynamic color;
  final dynamic margin;
  final double height;
  final double width;
  final double radius;

  @override
  State<MyCircle> createState() => _MyCircleState();
}

class _MyCircleState extends State<MyCircle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(top: 100),
      margin: widget.margin,
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(widget.radius),
      ),
    );
  }
}

// Signin Button
class SigninButton extends StatefulWidget {
  const SigninButton({
    super.key,
    this.width = 350,
    this.height = 70,
    this.title,
    this.logo,
    this.color = Colors.white,
    this.border,
    this.borderradius = 20,
    this.fontsize = 20,
    this.fontweight,
    this.titlecolor = Colors.black,
    this.iconcolor,
    this.logosize = 25,
    this.icon,
    this.iconsize = 25,
  });

  final double width;
  final double height;
  final dynamic title;
  final dynamic logo;
  final dynamic color;
  final dynamic border;
  final double borderradius;
  final double fontsize;
  final dynamic fontweight;
  final dynamic titlecolor;
  final dynamic iconcolor;
  final double logosize;
  final dynamic icon;
  final double iconsize;

  @override
  State<SigninButton> createState() => _SigninButtonState();
}

class _SigninButtonState extends State<SigninButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        alignment: Alignment.center,
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          color: widget.color,
          border: widget.border,
          borderRadius: BorderRadius.circular(widget.borderradius),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Icon(
            //   widget.icon,
            //   color: widget.iconcolor,
            //   size: widget.iconsize,
            // ),
            // FaIcon(
            //   widget.icon,
            //   size: widget.iconsize,
            // ),
            Logo(
              widget.logo,
              size: widget.logosize,
            ),

            SizedBox(
              width: 15,
            ),
            Text(
              widget.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: widget.titlecolor,
                fontSize: widget.fontsize,
                fontWeight: widget.fontweight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Blue Button
class BlueButton extends StatefulWidget {
  const BlueButton({
    super.key,
    required this.title,
    this.width = 380,
    this.height = 55,
  });

  final String title;
  final double width;
  final double height;
  @override
  State<BlueButton> createState() => _BlueButtonState();
}

class _BlueButtonState extends State<BlueButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: widget.width.w,
      height: widget.height.h,
      decoration: BoxDecoration(
          color: colors.Logobg,
          borderRadius: BorderRadius.circular(30.r),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 9, 132, 189),
              blurRadius: 1,
              offset: Offset(
                0.w, // Move to right 5  horizontally
                1.0.h, // Move to bottom 5 Vertically
              ),
            )
          ]),
      child: Text(
        widget.title,
        style: TextStyle(
          wordSpacing: 1.5.w,
          fontSize: 20.sp,
          color: Colors.white,
        ),
      ),
    );
  }
}

// Small continue with

class SmallButton extends StatefulWidget {
  const SmallButton({
    super.key,
    this.logo,
    // this.bordercolor,
    this.border,
    this.borderradius = 15,
    // this.borderwidth = 2,
    this.height = 70,
    this.logosize = 30,
    this.width = 90,
  });

  final dynamic logo;
  final double logosize;
  final double width;
  final double height;
  final double borderradius;
  final dynamic border;
  // final double bordercolor;
  // final double borderwidth;

  @override
  State<SmallButton> createState() => _SmallButtonState();
}

class _SmallButtonState extends State<SmallButton> {
  bool _ontap = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _ontap = true;
        });
      },
      child: Container(
        alignment: Alignment.center,
        height: widget.height.h,
        width: widget.width.w,
        child: Logo(
          widget.logo,
          size: widget.logosize.w.h,
        ),
        decoration: BoxDecoration(
          color: _ontap ? colors.Logobg.withOpacity(0.15) : Colors.transparent,
          border: widget.border,
          borderRadius: BorderRadius.circular(widget.borderradius),
        ),
      ),
    );
  }
}
