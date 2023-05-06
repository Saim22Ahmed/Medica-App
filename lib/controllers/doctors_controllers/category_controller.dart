import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:medo_app/models/DoctorModel.dart';

import '../../utils/routes/routes_names.dart';

class CategoryController extends GetxController {
  var currentIndex = 0.obs;
  RxBool istap = false.obs;
  static var category;
  DoctorCategoryModel docscategory = DoctorCategoryModel();

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

  void changeIndex(int index) {
    currentIndex.value = index;
  }

  void istapped() async {
    istap.value = true;

    await Get.toNamed(MyRoutes.DoctorScreenRoutes);
    istapback();
  }

  void istapback() {
    istap.value = false;
  }

  CheckDocCtgry(index) {
    return category = arr_names[index];
  }

  CurrentDocCtgry() {
    if (category == 'General') {
      return docscategory.generalDocs.length;
    }
    if (category == 'Dentist') {
      return docscategory.dentist.length;
    }

    if (category == 'Nutritionist') {
      return docscategory.nutritionist.length;
    }
    if (category == 'Ophthalmologist') {
      return docscategory.Opthalmologist.length;
    }
    if (category == 'Pediatric') {
      return docscategory.Pediatric.length;
    } else {
      return DoctorModel.items.length;
    }
  }

  CurrentDocItem(index) {
    if (category == 'General') {
      return docscategory.generalDocs[index];
    }
    if (category == 'Dentist') {
      return docscategory.dentist[index];
    }

    if (category == 'Nutritionist') {
      return docscategory.nutritionist[index];
    }
    if (category == 'Ophthalmologist') {
      return docscategory.Opthalmologist[index];
    }
    if (category == 'Pediatric') {
      return docscategory.Pediatric[index];
    } else {
      return DoctorModel.items[index];
    }
  }
}
