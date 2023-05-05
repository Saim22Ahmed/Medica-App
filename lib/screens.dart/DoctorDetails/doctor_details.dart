import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medo_app/resources/colors.dart';
import 'package:medo_app/screens.dart/Doc_categoery_screens/docs_category.dart';
import 'package:medo_app/screens.dart/Home_screen/buttons.dart';
import 'package:medo_app/screens.dart/favourites_screen/ThemeAppbar.dart';
import 'package:readmore/readmore.dart';

import '../../models/DoctorModel.dart';
import '../../resources/pics.dart';
import 'Stats_bar.dart';
import 'doctor_card.dart';

class DoctorDetailsScreen extends StatelessWidget {
  const DoctorDetailsScreen({
    super.key,
    required this.doctor,
  });

  final Item doctor;

  @override
  Widget build(BuildContext context) {
    print('Doc Detail');
    return SafeArea(
      child: Scaffold(
          appBar: ThemeAppbar(
            title: doctor.name,
            ontap: () {
              Get.back();
            },
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DoctorCard(doctor: doctor),
                StatsBar(doctor: doctor),
                Padding(
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
                        height: 10.h,
                      ),
                      ReadMoreText(
                        doctor.about,
                        style: TextStyle(fontSize: 16.sp, wordSpacing: 0.5.w),
                        trimLines: 4,
                        trimMode: TrimMode.Line,
                        colorClickableText: colors.Logobg,
                        trimCollapsedText: 'view more',
                        trimExpandedText: 'view less',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
