import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medo_app/resources/colors.dart';

import '../../utils/routes/routes_names.dart';
import 'list_view_item.dart';

class TopDocsBar extends StatefulWidget {
  const TopDocsBar({super.key});

  @override
  State<TopDocsBar> createState() => _TopDocsBarState();
}

class _TopDocsBarState extends State<TopDocsBar> {
  int _selectedindex = 0;
  List<bool> _isSelected = List.filled(8, false);
  ScrollController _controller = ScrollController();

  var arr_names = [
    'All',
    'General',
    'Dentist',
    'Nutritionist',
    'Ophthalmologist',
    'Pediatric',
    'Neurologist',
    'Radiologist',
  ];

  List<double> arr_width = [
    63.w,
    100.w,
    110.w,
    150.w,
    180.w,
    110.w,
    140.w,
    130.w,
  ];

  ontapp(int containerIndex) async {
    setState(() {
      for (int i = 0; i < _isSelected.length; i++) {
        if (i == containerIndex) {
          _isSelected[i] = true;
        } else {
          _isSelected[i] = false;
        }
      }
    });
    if (containerIndex == 8) {
      Navigator.pushNamed(context, MyRoutes.TopDoctorsRoute,
          arguments: TopDocsBar());
    } else {
      Navigator.pushNamed(context, MyRoutes.DocsCategoryRoute,
          arguments: containerIndex);

      // setState(() {
      //   _isSelected = List.filled(8, false);
      // });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        // color: Colors.yellow,
        padding: EdgeInsets.only(left: 14.w),
        height: 50.h,
        child: ListView.builder(
          controller: _controller,
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemCount: arr_names.length,
          itemBuilder: (context, index) {
            return Row(
              children: [
                InkWell(
                  onTap: () => ontapp(index),
                  child: Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: ListItem(
                      Text: arr_names[index],
                      width: arr_width[index].w,
                      fillcolor:
                          _isSelected[index] ? colors.Logobg : Colors.white,
                      TextColor:
                          _isSelected[index] ? Colors.white : colors.Logobg,
                    ),
                  ),
                ),
              ],
            );
          },
        ));
  }
}
