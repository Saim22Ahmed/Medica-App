import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:medo_app/controllers/bottombar_controller.dart';
import 'package:medo_app/resources/colors.dart';
import 'package:medo_app/screens.dart/Appointment_screen/appoint_screen.dart';
import 'package:medo_app/utils/routes/routes_names.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

BottomBarController _bottomBarController = Get.put(BottomBarController());

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    var colors;
    return ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: Container(
          color: Colors.grey.shade200,
          // height: 100.h,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 13),
            child: BottomNavigationBar(
              onTap: (index) {
                _bottomBarController.onChanged(index);
              },
              elevation: 0,
              currentIndex: _bottomBarController.selectedIndex.value,
              type: BottomNavigationBarType.fixed,
              iconSize: 30.sp,
              backgroundColor: Colors.grey.shade200,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Color(0xff1976d2),
              items: [
                BottomNavigationBarItem(
                    icon: Icon(
                      EvaIcons.home,

                      // size: 28.sp,
                    ),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(
                      BoxIcons.bxs_calendar,

                      // size: 28.sp,
                    ),
                    label: 'Appointment'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.receipt_long,

                      // size: 28.sp,
                    ),
                    label: 'History'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.article_rounded,

                      // size: 28.sp,
                    ),
                    label: 'Articles'),
                BottomNavigationBarItem(
                    icon: Icon(
                      BoxIcons.bxs_user,
                      // Icons.person,

                      // size: 28.sp,
                    ),
                    label: 'Profile'),
              ],
            ),
          ),
        ));
  }
}























//  BottomAppBar(
//             shape: CircularNotchedRectangle(),
//             elevation: 4,
//             notchMargin: 10,
//             color: Colors.grey.shade200,
//             height: 68.h,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Icon(
//                   OctIcons.home_fill_24,
//                   color: colors.Logobg,
//                   size: 28.sp,
//                 ),
//                 SizedBox(
//                   width: 9.w,
//                 ),
//                 Icon(
//                   BoxIcons.bxs_calendar,
//                   color: colors.Logobg,
//                   size: 28.sp,
//                 ),
//               ],
//             ),
//           ),