import 'dart:async';

import 'package:flutter/material.dart';

class CardProvider with ChangeNotifier {
  final _controller = PageController();

  get controller => _controller;

  bool _isScrolling = false;

  get isScrolling => _isScrolling;

  int _currentindex = 0;

  get currentindex => _currentindex;

  isNotScrolling() {
    if (!isScrolling) {
      _controller.dispose();
    }
    notifyListeners();
  }

  CurrentIndex(index) {
    _currentindex = index;
    notifyListeners();
  }
}
