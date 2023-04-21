import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medo_app/models/DoctorModel.dart';
import 'package:medo_app/screens.dart/favourites_screen/ThemeAppbar.dart';
import 'package:medo_app/screens.dart/Doctors_screen/ItemWidget.dart';
import 'package:medo_app/utils/routes/routes_names.dart';
import 'package:provider/provider.dart';

import '../../Provider/Favourite_Provider.dart';
import '../../resources/pics.dart';

class Favourites_screen extends StatelessWidget {
  const Favourites_screen({super.key});

  @override
  Widget build(BuildContext context) {
    print('Build2');

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
          child: Consumer<FavoutitesModelProvider>(
              builder: (context, value, child) {
            print(value.cartitems);
            return ListView.builder(
              // itemExtent: 150,
              physics: BouncingScrollPhysics(),
              itemCount: value.cartitems.length,
              itemBuilder: (context, index) {
                return ItemWidget(
                  item: DoctorModel.items[index],
                  ontap: () {
                    if (value.cartitems.contains(index)) {
                      value.RemoveItemFromFav(index);
                    } else {
                      value.AddItemsToFav(index);
                    }
                  },
                  image: value.cartitems.contains(index)
                      ? MyPics.blueheart
                      : MyPics.ufblueheart,
                  ItemClickHandler: () {},
                );
              },
            );
          })),
    );
  }
}
