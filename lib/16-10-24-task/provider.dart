import 'package:flutter/material.dart';

class Providerstr extends ChangeNotifier {
  final List<User> _name = [];
  // String name=" ";

  List<User> get nameList => _name;

  void addName(User addname) {
    _name.add(addname);
    notifyListeners();
  }

  void updateName(String id, String newName) {
    for (var upname in _name) {
      if (upname.id == id) {
        upname.name = newName;
      }
    }
    notifyListeners();
  }

  void deleteName(String id) {
    _name.removeWhere((dlname) => dlname.id == id);
    notifyListeners();
  }
  
}

class User {
  String name;
  String id;
  User({required this.id, required this.name});
}
