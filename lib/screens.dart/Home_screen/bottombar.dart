import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:medo_app/resources/colors.dart';
import 'package:medo_app/utils/routes/routes_names.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

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
                setState(() {
                  _selectedIndex = index;
                  if (index == 0) {
                    Navigator.pushNamed(context, MyRoutes.HomepageRoute);
                  }
                  // if (index == 1) {
                  //   Navigator.pushNamed(context, MyRoutes.AppointmentPageRoute);
                  // }
                });
              },
              elevation: 0,
              currentIndex: _selectedIndex,
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