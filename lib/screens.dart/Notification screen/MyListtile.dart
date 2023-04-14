import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:medo_app/resources/pics.dart';

import 'newbutton.dart';

class MyListTile extends StatelessWidget {
  const MyListTile(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.desc,
      this.icon,
      this.trailing,
      this.iconbgcolor});

  final String title;
  final String subtitle;
  final String desc;
  final dynamic icon;
  final dynamic trailing;
  final dynamic iconbgcolor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          horizontalTitleGap: 18,
          leading: CircleAvatar(
            radius: 28.h,
            backgroundColor: iconbgcolor,
            child: Center(
              child: icon,
            ),
          ),
          title: Text(
            title.toString(),
            style: TextStyle(
              height: 0.5.h,
              fontWeight: FontWeight.bold,
              fontSize: 21.sp,
            ),
          ),

          subtitle: Text(
            subtitle.toString(),
            style: TextStyle(
              height: 2.h,
              wordSpacing: 5.w,
              fontSize: 18.sp,
            ),
          ),
          trailing: trailing,

          // contentPadding: EdgeInsetsDirectional.all(5),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 20.0.h),
          child: Text(
            desc.toString(),
            textAlign: TextAlign.start,
            style: TextStyle(
              height: 1.3.h,
              color: Colors.grey[700],
              fontSize: 17.1.sp,
              wordSpacing: 1.w,
            ),
          ),
        )
      ],
    );
  }
}
