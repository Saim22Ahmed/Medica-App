import 'package:flutter/material.dart';
import 'package:medo_app/utils/routes/routes_names.dart';

import '../screens.dart/Home_screen/TopDocsBar.dart';

class DoctorsProvider with ChangeNotifier {
  List _gDocArray = ['Dr. Wang Zhenyi'];
  get gDocArray => _gDocArray;

  List _generalDocs = [];
  get generalDocs => _generalDocs;

  addtogeneralDocs(value) {
    _generalDocs.add(value);
    notifyListeners();
  }
}

class DocsCategoryProvider with ChangeNotifier {
  int _selectedindex = 0;
  List<bool> _isSelected = List.filled(8, false);

  get selectedindex => _selectedindex;
  get isSelected => _isSelected;

  ontapp(int containerIndex) async {
    for (int i = 0; i < _isSelected.length; i++) {
      if (i == containerIndex) {
        _isSelected[i] = true;
      } else {
        _isSelected[i] = false;
      }
    }
    notifyListeners();
  }
}
