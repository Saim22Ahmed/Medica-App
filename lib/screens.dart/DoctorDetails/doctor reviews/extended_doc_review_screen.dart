import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:medo_app/controllers/review_controller/reviews_controller.dart';
import 'package:medo_app/resources/colors.dart';
import 'package:medo_app/screens.dart/favourites_screen/ThemeAppbar.dart';

import '../../../controllers/review_controller/user_controller.dart';
import '../../../models/DoctorModel.dart';
import '../../../resources/pics.dart';
import 'ScrollUpButton.dart';
import 'doctor_reviews.dart';

class ExtendedDocReviewScreen extends StatelessWidget {
  ExtendedDocReviewScreen({super.key, required this.doctor});
  final Item doctor;

  UserController userController = Get.find<UserController>();
  ReviewController reviewcontroller = Get.find<ReviewController>();
  ScrollController _scrollController = ScrollController();

  String filter_reviews() {
    String reviews = doctor.reviews;
    String no_of_reviews = reviews.replaceAll(RegExp(r'[^0-9, ,a-z]'), '');
    return no_of_reviews;
  }

  @override
  Widget build(BuildContext context) {
    print('Widget');
    return SafeArea(
      child: Scaffold(
        appBar: ThemeAppbar(
          title: filter_reviews(),
          ontap: () {
            Get.back();
          },
        ),
        body: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  ListView.builder(
                    controller: _scrollController,
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: userController.users.length,
                    itemBuilder: (context, index) {
                      final user = userController.users[index];
                      return DocReviewScreen(
                        doctor: doctor,
                        username: user.name,
                        userimage: user.imageUrl,
                        LikeClickHandler: () {
                          userController.onTapLike();
                        },
                        likeimage: userController.islike.value == true
                            ? MyPics.blueheart
                            : MyPics.ufblueheart,
                      );
                    },
                  ),
                  Positioned(
                      bottom: 25.h,
                      right: 15.h,
                      child:
                          ScrollUpButton(scrollController: _scrollController)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
