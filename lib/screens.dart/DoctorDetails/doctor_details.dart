import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medo_app/controllers/RandomValue_controller.dart';
import 'package:medo_app/controllers/review_controller/reviews_controller.dart';
import 'package:medo_app/controllers/review_controller/user_controller.dart';
import 'package:medo_app/resources/colors.dart';
import 'package:medo_app/screens.dart/Doc_categoery_screens/docs_category.dart';
import 'package:medo_app/screens.dart/DoctorDetails/doctor%20reviews/extended_doc_review_screen.dart';
import 'package:medo_app/screens.dart/Home_screen/buttons.dart';
import 'package:medo_app/screens.dart/favourites_screen/ThemeAppbar.dart';
import 'package:readmore/readmore.dart';
import 'package:http/http.dart' as http;

import '../../models/DoctorModel.dart';
import '../../models/ReviewModel.dart';
import '../../resources/pics.dart';
import '../../resources/widgets/ThemeElevatedbtn.dart';
import 'Stats_bar.dart';
import 'bookApnmtBtn.dart';
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
  UserController userController = Get.put(UserController());
  ReviewController reviewController = Get.put(ReviewController());
  ScrollController scrollcontroller = ScrollController();

  @override
  Widget build(BuildContext context) {
    print('Doc Detail');
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: ThemeAppbar(
            title: doctor.name,
            ontap: () {
              Get.back();
            },
          ),
          body: Stack(
            children: [
              SingleChildScrollView(
                controller: scrollcontroller,
                physics: BouncingScrollPhysics(),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DoctorCard(doctor: doctor),
                      StatsBar(doctor: doctor),
                      DoctorAbout(doctor: doctor),

                      WorkingTime(),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Reviews',
                              style: TextStyle(
                                fontSize: 25.sp,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.5.w,
                              ),
                            ),
                            InkWell(
                              onTap: () async {
                                Get.to(() => ExtendedDocReviewScreen(
                                      doctor: doctor,
                                    ));
                                await scrollcontroller.animateTo(
                                  0,
                                  duration: Duration(milliseconds: 100),
                                  curve: Curves.easeInOut,
                                );
                              },
                              child: Text('See All',
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.5.w,
                                    color: colors.Logobg,
                                  )),
                            ),
                          ],
                        ),
                      ),

                      Obx(
                        () {
                          if (userController.isLoading.value) {
                            return Center(child: CircularProgressIndicator());
                          } else {
                            return Column(
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: 670.h,
                                      child: ListView.builder(
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        itemCount: 4,
                                        itemBuilder: (context, index) {
                                          final user =
                                              userController.users[index];
                                          return Obx(
                                            () => DocReviewScreen(
                                              doctor: doctor,
                                              username: user.name,
                                              userimage: user.imageUrl,
                                              LikeClickHandler: () {
                                                // userController.onTapLike();
                                              },
                                              likeimage:
                                                  userController.islike.value ==
                                                          true
                                                      ? MyPics.blueheart
                                                      : MyPics.ufblueheart,
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    bottomListGradient(),
                                  ],
                                ),
                              ],
                            );
                          }
                        },
                      )
                      //
                    ],
                  ),
                ),
              ),
              BookApmntBtn(),
            ],
          )),
    );
  }

  Positioned bottomListGradient() {
    return Positioned(
      bottom: 0.h,
      left: 0.w,
      right: 0.w,
      height: 70.h, // adjust height as needed
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(18.r),
            bottomRight: Radius.circular(18.r),
          ),
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color.fromARGB(15, 250, 242, 242).withOpacity(0.8),
              Color.fromARGB(0, 219, 217, 217),
            ],
          ),
        ),
      ),
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
