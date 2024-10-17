import 'package:flutter/material.dart';

class Providerclass extends ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void addnum() {
    _counter++;
    notifyListeners();
  }

  void subnum() {
    if (counter > 0) {
      _counter--;
    }
    notifyListeners();
  }
}
