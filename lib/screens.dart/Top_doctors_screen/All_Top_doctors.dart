import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medo_app/Provider/Favourite_Provider.dart';
import 'package:medo_app/resources/colors.dart';
import 'package:medo_app/resources/pics.dart';
import 'package:provider/provider.dart';

import '../../models/DoctorModel.dart';
import '../../resources/widgets/ItemWidget.dart';
import '../favourites_screen/ThemeAppbar.dart';
import '../Home_screen/list_view_item.dart';
import '../../utils/routes/routes_names.dart';

class TopDoctors extends StatefulWidget {
  const TopDoctors({super.key});

  @override
  State<TopDoctors> createState() => _TopDoctorsState();
}

class _TopDoctorsState extends State<TopDoctors> {
  @override
  Widget build(BuildContext context) {
    final DocsSlideBar = ModalRoute.of(context)!.settings.arguments as Widget;
    final FavouriteProvider =
        Provider.of<FavoutitesModelProvider>(context, listen: false);
    print('Build1');

    return Scaffold(
      appBar: ThemeAppbar(
        title: 'Top Doctors',
        ontap: () {
          setState(() {
            Navigator.popAndPushNamed(context, MyRoutes.HomepageRoute);
          });
        },
      ),
      body: Column(
        children: [
          SizedBox(
            child: DocsSlideBar,
            height: 50.h,
          ),
          Expanded(
            flex: 12,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 10.w),
              child: ListView.builder(
                // itemExtent: 150,
                physics: BouncingScrollPhysics(),
                itemCount: DoctorModel.items.length,
                itemBuilder: (context, index) {
                  return Consumer<FavoutitesModelProvider>(
                      builder: (context, value, child) {
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
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
