import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medo_app/controllers/FavouriteDoctors_controllers.dart';
import 'package:medo_app/models/DoctorModel.dart';
import 'package:medo_app/screens.dart/DoctorDetails/doctor_details.dart';
import 'package:medo_app/screens.dart/favourites_screen/ThemeAppbar.dart';
import 'package:medo_app/utils/routes/routes_names.dart';

import '../../resources/pics.dart';
import 'ItemCard.dart';

class DoctorsScreen extends StatelessWidget {
  DoctorsScreen({super.key});

  FavouriteDoctorControllers favouriteDoctorControllers =
      Get.put(FavouriteDoctorControllers());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ThemeAppbar(
            title: 'Top Doctors',
            ontap: () {
              Get.back();
            }),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: DoctorModel.items.length,
                  itemBuilder: (context, index) {
                    var currentdoctor = DoctorModel.items[index];
                    return Obx(
                      () => ItemCard(
                        currentdoctor: currentdoctor,
                        ItemClickedHandler: () {
                          Get.to(
                              () => DoctorDetailsScreen(doctor: currentdoctor));
                        },
                        FavIconClickHandler: () {
                          if (!favouriteDoctorControllers.cartitems
                              .contains(currentdoctor)) {
                            favouriteDoctorControllers.AddtoCart(currentdoctor);
                          } else {
                            favouriteDoctorControllers.RemoveFromCart(
                                currentdoctor);
                          }
                          favouriteDoctorControllers.Printitems();
                        },
                        favicon: favouriteDoctorControllers.cartitems
                                .contains(currentdoctor)
                            ? MyPics.blueheart
                            : MyPics.ufblueheart,
                      ),
                    );
                  }),
            ),
          ],
        ));
  }
}
