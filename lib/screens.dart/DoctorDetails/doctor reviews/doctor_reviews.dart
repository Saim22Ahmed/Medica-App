import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:medo_app/controllers/review_controller/reviews_controller.dart';
import 'package:medo_app/resources/colors.dart';
import '../../../controllers/RandomValue_controller.dart';
import '../../../models/DoctorModel.dart';
import '../../../resources/pics.dart';

class DocReviewScreen extends StatelessWidget {
  DocReviewScreen(
      {super.key,
      required this.doctor,
      required this.username,
      required this.userimage,
      required this.likeimage,
      required this.LikeClickHandler});

  final String username;
  final dynamic userimage;
  final Function LikeClickHandler;
  final dynamic likeimage;

  final Item doctor;
  RandomController randomController = Get.put(RandomController());
  ReviewController reviewController = Get.put(ReviewController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Card(
              elevation: 0.2,
              shadowColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.r),
              ),
              color: Colors.white,
              child: Container(
                // height: 200.h,
                width: double.infinity,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          ReviewHeader(),
                          SizedBox(
                            height: 12.h,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  randomController.RandomReviewText(),
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.5.sp,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          LikeSection(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  ReviewHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Transform.scale(
              scale: 1.h,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(55.r),
                child: Image(
                  image: NetworkImage(userimage),
                  height: 50.h,
                  width: 50.w,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                username,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.6.sp,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            ReviewTag(),
            SizedBox(
              width: 14.w,
            ),
            InkWell(
              onTap: () {},
              child: Image(
                image: MyPics.morebw,
                fit: BoxFit.cover,
                height: 25.h,
                width: 25.w,
              ),
            ),
          ],
        )
      ],
    );
  }

  LikeSection() {
    return Row(
      children: [
        InkWell(
          onTap: () => LikeClickHandler(),
          child: Image(
            image: likeimage,
            fit: BoxFit.cover,
            height: 25.h,
            width: 25.w,
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        Text(
          reviewController.RandomLikes(),
          style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
              color: colors.Logobg),
        ),
        SizedBox(
          width: 20.w,
        ),
        Text(
          reviewController.RandomReviewTime() + ' days ago',
          style: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.bold,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }

  ReviewTag() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 2.h),
        // width: 60.w,
        // height: 60.h,
        decoration: BoxDecoration(
          border: Border.all(color: colors.Logobg, width: 2.w),
          borderRadius: BorderRadius.circular(25.r),
        ),
        child: Row(
          children: [
            Image(
              image: MyPics.reviewstar,
              width: 12.w,
              height: 12.h,
            ),
            SizedBox(
              width: 8.w,
            ),
            Text(
              reviewController.RandomReview(),
              style:
                  TextStyle(color: colors.Logobg, fontWeight: FontWeight.w600),
            ),
          ],
        ));
  }
}
