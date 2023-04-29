import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:medo_app/models/DoctorModel.dart';
import 'package:medo_app/screens.dart/Doctors_screen/ItemCard.dart';
import 'package:medo_app/screens.dart/favourites_screen/ThemeAppbar.dart';
import 'package:medo_app/screens.dart/Doctors_screen/ItemWidget.dart';
import 'package:medo_app/utils/routes/routes_names.dart';
import 'package:provider/provider.dart';

import '../../Provider/Favourite_Provider.dart';
import '../../controllers/FavouriteDoctors_controllers.dart';
import '../../resources/pics.dart';

class Favourites_screen extends StatelessWidget {
  Favourites_screen({super.key});
  FavouriteDoctorControllers favouriteDoctorControllers =
      Get.put(FavouriteDoctorControllers());
  @override
  Widget build(BuildContext context) {
    // final favouritesProvider = Provider.of<FavoutitesModelProvider>(context);
    return Scaffold(
      appBar: ThemeAppbar(
        title: 'My Favourites',
        ontap: () {
          Navigator.pop(context);
        },
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
          child: ListView.builder(
            // itemExtent: 150,
            physics: BouncingScrollPhysics(),
            itemCount: favouriteDoctorControllers.cartitems.length,
            itemBuilder: (context, index) {
              var currentdoctor = favouriteDoctorControllers.cartitems[index];
              return ItemCard(
                  favicon: favouriteDoctorControllers.cartitems
                          .contains(currentdoctor)
                      ? MyPics.blueheart
                      : MyPics.ufblueheart,
                  currentdoctor: currentdoctor,
                  ItemClickedHandler: () {},
                  FavIconClickHandler: () {});
            },
          )),
    );
  }
}
