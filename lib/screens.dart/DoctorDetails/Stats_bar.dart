import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medo_app/controllers/RandomValue_controller.dart';
import 'package:medo_app/resources/colors.dart';
import '../../models/DoctorModel.dart';
import '../../resources/pics.dart';
import 'Stats_Bar_item.dart';

class StatsBar extends StatelessWidget {
  StatsBar({super.key, required this.doctor});

  final Item doctor;

  String filter_reviews() {
    String reviews = doctor.reviews;
    String no_of_reviews = reviews.replaceAll(RegExp(r'[^0-9,]'), '');
    return no_of_reviews;
  }

  // RandomNumbers(attribute) {
  //   Random random = Random();

  //   var min = attribute == 'patients' ? 2000 : 5;
  //   var max = attribute == 'patients' ? 8000 : 15;
  //   final value = min + random.nextInt(max - min);
  //   return value.toString();
  // }
  RandomController randomController = Get.put(RandomController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          StatsBarItem(
            image: DocDetail.patient,
            attribute: 'patients',
            data: randomController.RandomNumbers('patients'),
            width: 32.w,
            height: 32.h,
          ),
          StatsBarItem(
            image: DocDetail.graph,
            attribute: 'years exp.',
            data: randomController.RandomNumbers('years exp.'),
            width: 30.w,
            height: 30.h,
          ),
          StatsBarItem(
            image: MyPics.halfstar,
            attribute: 'rating',
            data: doctor.rating,
            width: 32.w,
            height: 32.h,
          ),
          StatsBarItem(
            image: DocDetail.chat,
            attribute: 'reviews',
            data: filter_reviews(),
            width: 30.w,
            height: 30.h,
          ),
        ],
      ),
    );
  }
}
