import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medo_app/resources/colors.dart';
import '../../../../resources/pics.dart';

class PackageWidget extends StatelessWidget {
  const PackageWidget({
    super.key,
    required this.image,
    required this.subtitle,
    required this.price,
    required this.duration,
    this.package_title,
  });

  final image;
  final package_title;
  final subtitle;
  final price;
  final duration;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Card(
        elevation: 0.8,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.r)),
        child: Container(
          width: double.infinity.w,
          height: 125.h,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30.r)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 18.w,
              ),
              CircleAvatar(
                radius: 30.r,
                backgroundColor: Colors.grey[100],
                child: Image(
                  image: image,
                  height: 25.h,
                ),
              ),
              SizedBox(
                width: 15.w,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    package_title,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(color: Colors.grey[600], fontSize: 14.sp),
                  )
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    price,
                    style: TextStyle(
                      color: colors.Logobg,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    duration,
                    style: TextStyle(color: Colors.grey[600], fontSize: 13.sp),
                  ),
                ],
              ),
              Radio(
                  fillColor: MaterialStateProperty.all(colors.Logobg),
                  value: 'value',
                  groupValue: 'groupValue',
                  onChanged: (_) {})
            ],
          ),
        ),
      ),
    );
  }
}
