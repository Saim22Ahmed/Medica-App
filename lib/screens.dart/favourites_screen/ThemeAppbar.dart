import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../resources/pics.dart';

class ThemeAppbar extends StatefulWidget implements PreferredSizeWidget {
  const ThemeAppbar({
    super.key,
    required this.title,
    this.routeName,
    this.ontap,
  });
  final dynamic routeName;
  final void Function()? ontap;
  final String title;
  @override
  State<ThemeAppbar> createState() => _ThemeAppbarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _ThemeAppbarState extends State<ThemeAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80.h,
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Text(
        widget.title,
        style: TextStyle(
          color: Colors.black,
          fontSize: 25.sp,
          fontWeight: FontWeight.w600,
          letterSpacing: 1.w,
        ),
      ),
      leading: InkWell(
        onTap: widget.ontap,
        child: Padding(
          padding: EdgeInsets.only(left: 15.0.w),
          child: Icon(
            OctIcons.arrow_left_24,
            color: Colors.black,
            size: 32.h,
          ),
        ),
      ),
      leadingWidth: 50.w,
      actions: [
        // Icon(
        //   Bootstrap.search,
        //   size: 25,
        //   color: Colors.black,
        // ),
        Image(
          image: MyPics.search,
          width: 25.w,
          height: 25.h,
        ),
        SizedBox(
          width: 20.w,
        ),
        Image(
          image: MyPics.morebw,
          width: 30.w,
          height: 30.h,
        ),
        SizedBox(
          width: 15.w,
        ),
      ],
    );
  }
}
