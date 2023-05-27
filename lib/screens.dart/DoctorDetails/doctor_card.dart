import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../models/DoctorModel.dart';

class DoctorCard extends StatelessWidget {
  DoctorCard({
    super.key,
    required this.doctor,
  });

  final Item doctor;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      // shadowColor: Colors.blue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.r),
      ),
      color: Colors.white,
      child: Container(
        height: 140.h,
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              top: 15.h,
              left: 10.w,
              child: Transform.scale(
                scale: 1.h,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25.r),
                  child: Image(
                    image: doctor.image,
                    height: 110.h,
                    width: 108.w,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 135.w,
              top: 15.h,
              child: Text(
                doctor.name,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5.sp,
                ),
              ),
            ),
            Positioned(
              left: 135.w,
              top: 70.h,
              child: Text(
                doctor.category,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5.sp,
                ),
              ),
            ),
            Positioned(
              left: 135.w,
              top: 100.h,
              child: Row(
                children: [
                  Text(
                    doctor.hospital,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.3.sp,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.0.w),
                    child: SizedBox(
                      // width: 8.w,
                      child: Text(
                        'in',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.3.sp,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    doctor.location,
                    style: TextStyle(
                      color: Color.fromRGBO(117, 117, 117, 1),
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.3.sp,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
