import 'package:get/get.dart';
import 'package:medo_app/utils/routes/routes_names.dart';

class NotificationController extends GetxController {
  RxBool isnotify = false.obs;

  void ontapNotify() async {
    isnotify.value = true;
    await Get.toNamed(MyRoutes.NotificationsRoute);
    isnotify.value = false;
  }
}
