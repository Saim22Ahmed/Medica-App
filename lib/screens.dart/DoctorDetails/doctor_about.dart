import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';
import 'package:medo_app/resources/colors.dart';
import '../../models/DoctorModel.dart';

class DoctorAbout extends StatelessWidget {
  const DoctorAbout({
    super.key,
    required this.doctor,
  });

  final Item doctor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About me',
            style: TextStyle(
              fontSize: 25.sp,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5.w,
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          ReadMoreText(
            doctor.about,
            style:
                TextStyle(fontSize: 17.sp, wordSpacing: 0.5.w, height: 1.4.h),
            trimLines: 4,
            trimMode: TrimMode.Line,
            colorClickableText: colors.Logobg,
            trimCollapsedText: 'view more',
            trimExpandedText: 'view less',
          ),
        ],
      ),
    );
  }
}
