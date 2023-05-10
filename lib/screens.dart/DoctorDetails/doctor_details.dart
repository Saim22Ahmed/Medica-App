import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medo_app/controllers/RandomValue_controller.dart';
import 'package:medo_app/controllers/doctors_controllers/reviews_controller.dart';
import 'package:medo_app/resources/colors.dart';
import 'package:medo_app/screens.dart/Doc_categoery_screens/docs_category.dart';
import 'package:medo_app/screens.dart/Home_screen/buttons.dart';
import 'package:medo_app/screens.dart/favourites_screen/ThemeAppbar.dart';
import 'package:readmore/readmore.dart';
import 'package:http/http.dart' as http;

import '../../models/DoctorModel.dart';
import '../../models/ReviewModel.dart';
import '../../resources/pics.dart';
import 'Stats_bar.dart';
import 'doctor reviews/doctor_reviews.dart';
import 'doctor_about.dart';
import 'doctor_card.dart';

class DoctorDetailsScreen extends StatelessWidget {
  DoctorDetailsScreen({
    super.key,
    required this.doctor,
  });

  final Item doctor;

  RandomController randomController = Get.put(RandomController());

  ReviewController reviewController = Get.put(ReviewController());

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
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DoctorCard(doctor: doctor),
                  StatsBar(doctor: doctor),
                  DoctorAbout(doctor: doctor),
                  WorkingTime(),
                  // DocReviewScreen(doctor: doctor),
                  Obx(
                    () => ListView.builder(
                      shrinkWrap: true,
                      itemCount: reviewController.userList.length,
                      itemBuilder: (context, index) {
                        reviewController.getRandomUserApi();
                        final user = reviewController.userList[index];
                        final email = user['email'];
                        if (reviewController.userList == null) {
                          return CircularProgressIndicator();
                        } else {
                          return Column(
                            children: [
                              Text(reviewController.userList[index]['name']
                                      ['first']
                                  .toString())
                            ],
                          );
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }

  Padding WorkingTime() {
    return Padding(
      padding: EdgeInsets.only(left: 18, bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Working Time',
            style: TextStyle(
              fontSize: 25.sp,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5.w,
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Text(
            randomController.DoctorTimings(),
            style: TextStyle(
              fontSize: 17.sp,
              letterSpacing: 0.5.w,
            ),
          ),
        ],
      ),
    );
  }
}
