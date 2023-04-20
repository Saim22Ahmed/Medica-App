import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:medo_app/Provider/DoctorsProvider.dart';
import 'package:medo_app/Provider/Favourite_Provider.dart';
import 'package:medo_app/models/DoctorModel.dart';
import 'package:medo_app/resources/pics.dart';
import 'package:medo_app/resources/widgets/ItemWidget.dart';
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
    print('DocsCatego');
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
            containerIndex == 0 ? All_Top_Docs() : SizedBox.shrink(),
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
class All_Top_Docs extends StatelessWidget {
  All_Top_Docs({
    super.key,
  });
  DoctorCategoryModel docscategory = DoctorCategoryModel();
  @override
  Widget build(BuildContext context) {
    return Expanded(child: Consumer<FavoutitesModelProvider>(
      builder: (context, value, child) {
        return ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: docscategory.alldocs.length,
          itemBuilder: (context, index) {
            final currentpage = docscategory.alldocs[index];
            return ItemWidget(
              item: currentpage,
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
      },
    ));
  }
}

//

class General_Docs extends StatelessWidget {
  General_Docs({
    super.key,
  });
  DoctorCategoryModel docscategory = DoctorCategoryModel();
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
              ItemClickHandler: () {},
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
  DoctorCategoryModel docscategory = DoctorCategoryModel();
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
              ItemClickHandler: () {},
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
  DoctorCategoryModel docscategory = DoctorCategoryModel();
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
                ItemClickHandler: () {});
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
  DoctorCategoryModel docscategory = DoctorCategoryModel();
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
                ItemClickHandler: () {});
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
  DoctorCategoryModel docscategory = DoctorCategoryModel();
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
                ItemClickHandler: () {});
          },
        );
      },
    ));
  }
}
