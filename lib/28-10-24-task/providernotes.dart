import 'package:flutter/foundation.dart';
import 'package:flutterproject/28-10-24-task/modelnote.dart';

class Providernotes extends ChangeNotifier {
  List _noteslist = <Modelnote>[];

  List get notselist => _noteslist;

  void addnotes(Modelnote notes) {
    _noteslist.add(notes);
    notifyListeners();
  }
  void deletenotes(Modelnote userid) {
    _noteslist.removeWhere((noteid)=>noteid.userid==userid);
    notifyListeners();
  }



}

class Modelnote {
  int? userId;
  int? id;
  String? title;
  String? body;}

