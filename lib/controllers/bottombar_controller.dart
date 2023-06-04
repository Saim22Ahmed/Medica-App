import 'package:get/get.dart';

import '../screens.dart/Appointment_screen/appoint_screen.dart';
import '../screens.dart/Appointment_screen/book_apnmt.dart';
import '../utils/routes/routes_names.dart';

class BottomBarController extends GetxController {
  var selectedIndex = 0.obs;

  onChanged(index) {
    selectedIndex.value = index;
    if (index == 0) {
      Get.toNamed(MyRoutes.HomepageRoute);
    }
    if (index == 1) {
      Get.to(() => AppointmentScreen());
    }
  }
}
