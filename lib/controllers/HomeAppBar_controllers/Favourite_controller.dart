import 'package:get/get.dart';
import 'package:medo_app/utils/routes/routes_names.dart';

class FavouritePageController extends GetxController {
  RxBool isfilled = false.obs;

  void onTapFav() async {
    isfilled.value = true;
    await Get.toNamed(MyRoutes.FavouritesRoute);
    isfilled.value = false;
  }
}
