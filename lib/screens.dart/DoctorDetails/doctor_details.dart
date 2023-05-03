import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medo_app/screens.dart/Doc_categoery_screens/docs_category.dart';
import 'package:medo_app/screens.dart/favourites_screen/ThemeAppbar.dart';

import '../../models/DoctorModel.dart';
import '../../resources/pics.dart';
import 'doctor_card.dart';

class DoctorDetailsScreen extends StatelessWidget {
  const DoctorDetailsScreen({
    super.key,
    required this.doctor,
  });

  final Item doctor;

  @override
  Widget build(BuildContext context) {
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
              children: [
                DoctorCard(doctor: doctor),
              ],
            ),
          )),
    );
  }
}
