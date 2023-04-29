import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:medo_app/resources/colors.dart';

import '../../controllers/doctors_controllers/category_controller.dart';
import '../../utils/routes/routes_names.dart';
import 'list_view_item.dart';

class TopDocsBar extends StatelessWidget {
  TopDocsBar({super.key});

  int _selectedindex = 0;

  List<bool> _isSelected = List.filled(8, false);

  ScrollController _controller = ScrollController();

  CategoryController categoryController = Get.put(CategoryController());

  // var arr_names = [
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
          itemCount: categoryController.arr_names.length,
          itemBuilder: (context, index) {
            return CategoryBar(index);
          },
        ));
  }

  Row CategoryBar(int index) {
    return Row(
      children: [
        Obx(
          () => InkWell(
            onTap: () {
              categoryController.currentIndex.value = index;
              categoryController.istapped();
            },
            child: Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: ListItem(
                Text: categoryController.arr_names[index],
                width: categoryController.arr_width[index].w,
                fillcolor: categoryController.currentIndex.value == index &&
                        categoryController.istap == true
                    ? colors.Logobg
                    : Colors.white,
                TextColor: categoryController.currentIndex.value == index &&
                        categoryController.istap == true
                    ? Colors.white
                    : colors.Logobg,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
