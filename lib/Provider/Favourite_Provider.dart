import 'package:flutter/cupertino.dart';
import 'package:medo_app/models/DoctorModel.dart';

class FavoutitesModelProvider with ChangeNotifier {
  List _cartitems = [];

  get cartitems => _cartitems;

  void AddItemsToFav(index) {
    _cartitems.add(index);
    print('Added $index to favourites list');
    notifyListeners();
  }

  void RemoveItemFromFav(index) {
    _cartitems.remove(index);
    print('Removed $index to favourites list');
    notifyListeners();
  }
}
