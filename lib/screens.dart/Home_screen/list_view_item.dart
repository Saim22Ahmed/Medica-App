import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medo_app/resources/colors.dart';

class ListItem extends StatefulWidget {
  const ListItem(
      {super.key,
      this.width = 63,
      this.height = 40,
      this.fillcolor = Colors.white,
      this.TextColor = colors.Logobg,
      required this.Text});

  final double width;
  final double height;
  final dynamic fillcolor;
  final dynamic TextColor;
  final String Text;

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(3),
      alignment: Alignment.center,
      width: widget.width.w,
      height: widget.height.h,
      decoration: BoxDecoration(
        color: widget.fillcolor,
        border: Border.all(
          width: 2.w,
          color: colors.Logobg,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        widget.Text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: widget.TextColor,
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
