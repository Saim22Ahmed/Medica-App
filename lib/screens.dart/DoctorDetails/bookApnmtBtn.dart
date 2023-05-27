import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medo_app/resources/colors.dart';

class BookApmntBtn extends StatelessWidget {
  const BookApmntBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20.h,
      left: 0.w,
      right: 0.w,
      child: Center(
        child: Container(
          height: 60.h,
          width: 390.h,
          child: FloatingActionButton.extended(
            icon: Icon(Icons.bookmark_add),
            onPressed: () {},
            label: Text('Book Appointment'),
            backgroundColor: colors.Logobg,
            extendedPadding:
                EdgeInsets.symmetric(horizontal: 100.w, vertical: 100.h),
            extendedTextStyle: TextStyle(fontSize: 18.sp),
            splashColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
