import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:medo_app/Provider/DoctorsProvider.dart';
import 'package:medo_app/Provider/Favourite_Provider.dart';
import 'package:medo_app/models/DoctorModel.dart';
import 'package:medo_app/resources/pics.dart';
import 'package:medo_app/screens.dart/favourites_screen/ItemWidget.dart';
import 'package:medo_app/screens.dart/favourites_screen/ThemeAppbar.dart';
import 'package:medo_app/screens.dart/favourites_screen/fav_screen.dart';
import 'package:provider/provider.dart';

import '../../utils/routes/routes_names.dart';
import '../Home_screen/TopDocsBar.dart';

class DocsCategory extends StatefulWidget {
  DocsCategory({
    super.key,
  });

  @override
  State<DocsCategory> createState() => _DocsCategoryState();
}

class _DocsCategoryState extends State<DocsCategory> {
  @override
  Widget build(BuildContext context) {
    print('DocsCategory');
    final containerIndex = ModalRoute.of(context)!.settings.arguments as int;

    return Scaffold(
        appBar: ThemeAppbar(
          title: 'Top Doctors',
          ontap: () {
            Navigator.popAndPushNamed(context, MyRoutes.HomepageRoute);
          },
        ),
        body: Column(
          children: [
            TopDocsBar(),
            containerIndex == 0 ? Top_Docs() : SizedBox.shrink(),
            containerIndex == 1 ? General_Docs() : SizedBox.shrink(),
            containerIndex == 2 ? Dentist() : SizedBox.shrink(),
            containerIndex == 3 ? Nutritionist() : SizedBox.shrink(),
            containerIndex == 4 ? Opthalmologist() : SizedBox.shrink(),
            containerIndex == 5 ? Pediatric() : SizedBox.shrink(),
          ],
        ));
  }
}

//
class Top_Docs extends StatelessWidget {
  Top_Docs({
    super.key,
  });
  DoctorCategory docscategory = DoctorCategory();
  @override
  Widget build(BuildContext context) {
    return Expanded(child: Consumer<FavoutitesModelProvider>(
      builder: (context, value, child) {
        return ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: docscategory.alldocs.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: docscategory.alldocs[index],
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
            );
          },
        );
      },
    ));
  }
}

//

class General_Docs extends StatelessWidget {
  General_Docs({
    super.key,
  });
  DoctorCategory docscategory = DoctorCategory();
  @override
  Widget build(BuildContext context) {
    return Expanded(child: Consumer<FavoutitesModelProvider>(
      builder: (context, value, child) {
        return ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: docscategory.generalDocs.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: docscategory.generalDocs[index],
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
            );
          },
        );
      },
    ));
  }
}

class Dentist extends StatelessWidget {
  Dentist({
    super.key,
  });
  DoctorCategory docscategory = DoctorCategory();
  @override
  Widget build(BuildContext context) {
    print('Dentist Wigdet');
    return Expanded(child: Consumer<FavoutitesModelProvider>(
      builder: (context, value, child) {
        return ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: docscategory.dentist.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: docscategory.dentist[index],
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
            );
          },
        );
      },
    ));
  }
}

class Nutritionist extends StatelessWidget {
  Nutritionist({
    super.key,
  });
  DoctorCategory docscategory = DoctorCategory();
  @override
  Widget build(BuildContext context) {
    return Expanded(child: Consumer<FavoutitesModelProvider>(
      builder: (context, value, child) {
        return ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: docscategory.nutritionist.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: docscategory.nutritionist[index],
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
            );
          },
        );
      },
    ));
  }
}

class Opthalmologist extends StatelessWidget {
  Opthalmologist({
    super.key,
  });
  DoctorCategory docscategory = DoctorCategory();
  @override
  Widget build(BuildContext context) {
    return Expanded(child: Consumer<FavoutitesModelProvider>(
      builder: (context, value, child) {
        return ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: docscategory.Opthalmologist.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: docscategory.Opthalmologist[index],
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
            );
          },
        );
      },
    ));
  }
}

class Pediatric extends StatelessWidget {
  Pediatric({
    super.key,
  });
  DoctorCategory docscategory = DoctorCategory();
  @override
  Widget build(BuildContext context) {
    return Expanded(child: Consumer<FavoutitesModelProvider>(
      builder: (context, value, child) {
        return ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: docscategory.Pediatric.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: docscategory.Pediatric[index],
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
            );
          },
        );
      },
    ));
  }
}
