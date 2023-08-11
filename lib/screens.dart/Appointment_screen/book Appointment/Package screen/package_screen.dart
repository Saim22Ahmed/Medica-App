import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:medo_app/resources/pics.dart';
import 'package:medo_app/screens.dart/Appointment_screen/Booking_themebtn.dart';
import 'package:medo_app/screens.dart/Appointment_screen/book%20Appointment/Package%20screen/package_widget.dart';
import 'package:medo_app/screens.dart/favourites_screen/ThemeAppbar.dart';
import '../../../../controllers/calender_controller.dart';

class BookPackageScreen extends StatelessWidget {
  BookPackageScreen({super.key});

  final calendercontroller = CalenderController();
  final images = [DocDetail.chat, DocDetail.graph, MyPics.radiology];
  final titles = ['Messaging', 'Voice Call', 'Video Call'];
  final subtitles = [
    'Chat messages with doctor',
    'Voice call with doctor',
    'Video Call with doctor'
  ];
  final price = ['20', '40', '60'];
  final duration = ['/30 mins', '/30 mins', '/60 mins'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: ThemeAppbar(
        title: 'Select Package',
        ontap: () => Get.back(),
      ),
      body: Padding(
        padding:
            EdgeInsets.only(top: 30.h, left: 16.w, right: 16.w, bottom: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select Duration',
              style: TextStyle(
                fontSize: 25.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Select Package',
              style: TextStyle(
                fontSize: 25.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return PackageWidget(
                    package_title: titles[index],
                    image: images[index],
                    subtitle: subtitles[index],
                    price: price[index],
                    duration: duration[index]);
              },
            ),
            SizedBox(
              height: 100.h,
            ),
            BookingThemeButton(title: 'Next'),
          ],
        ),
      ),
    ));
  }
}
