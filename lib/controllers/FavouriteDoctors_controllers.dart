import 'package:get/get.dart';
import 'package:medo_app/models/DoctorModel.dart';

import '../resources/pics.dart';

class FavouriteDoctorControllers extends GetxController {
  RxList cartitems = [].obs;
  RxBool isicontap = false.obs;

  void ontap() {
    isicontap.value = !isicontap.value;
  }

  void AddtoCart(index) {
    cartitems.value.add(index);
  }

  void RemoveFromCart(index) {
    cartitems.value.remove(index);
  }

  void Printitems() {
    print(cartitems.length);
  }
}
