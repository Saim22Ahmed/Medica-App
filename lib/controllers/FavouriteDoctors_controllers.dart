import 'package:get/get.dart';
import 'package:medo_app/models/DoctorModel.dart';

import '../resources/pics.dart';

class FavouriteDoctorControllers extends GetxController {
  RxList cartitems = [].obs;
  RxBool isicontap = false.obs;

  void ontap() {
    isicontap.value = true;
  }

  void AddtoCart(index) {
    cartitems.value.add(index);
    cartitems.refresh();
  }

  void RemoveFromCart(index) {
    cartitems.value.remove(index);
    cartitems.refresh();
  }

  void Printitems() {
    print(cartitems.length);
    // cartitems.refresh();
  }
}
