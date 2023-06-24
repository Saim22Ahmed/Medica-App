import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:medo_app/screens.dart/favourites_screen/ThemeAppbar.dart';

class Bookinginfo extends StatelessWidget {
  const Bookinginfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: ThemeAppbar(
        title: 'Booking Details',
        ontap: () => Get.back(),
      ),
      body: Column(
        children: [
          Text('Booking Info'),
        ],
      ),
    ));
  }
}
