import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medo_app/resources/colors.dart';

class CheckNowbtn extends StatefulWidget {
  const CheckNowbtn(
      {super.key, required this.title, this.width = 110, this.height = 37});

  final String title;
  final double width;
  final double height;

  @override
  State<CheckNowbtn> createState() => _CheckNowbtnState();
}

class _CheckNowbtnState extends State<CheckNowbtn> {
  bool istap = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          istap = true;
        });
      },
      child: Container(
        alignment: Alignment.center,
        width: widget.width.w,
        height: widget.height.h,
        child: Text(
          widget.title,
          style: TextStyle(
            color: istap ? Colors.white : colors.Logobg,
            fontWeight: FontWeight.w900,
            fontSize: 17.sp,
          ),
        ),
        decoration: BoxDecoration(
          color: istap ? colors.Logobg : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
