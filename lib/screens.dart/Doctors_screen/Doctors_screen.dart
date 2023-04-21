import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medo_app/models/DoctorModel.dart';
import 'package:medo_app/screens.dart/DoctorDetails/doctor_details.dart';
import 'package:medo_app/screens.dart/favourites_screen/ThemeAppbar.dart';

import '../../resources/pics.dart';
import 'ItemCard.dart';

class DoctorsScreen extends StatelessWidget {
  const DoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ThemeAppbar(title: 'Top Doctors'),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: DoctorModel.items.length,
                  itemBuilder: (context, index) {
                    var currentdoctor = DoctorModel.items[index];
                    return ItemCard(
                      currentdoctor: currentdoctor,
                      ItemClickedHandler: () {
                        Get.to(() => DoctorDetailsScreen());
                      },
                    );
                  }),
            ),
          ],
        ));
  }
}
