import 'dart:convert';

import 'package:flutterproject/24-10-24-task/modelprofile.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class Apiprofile {
  var url = "https://dummyjson.com/users";

  Future<List<Modelprofile>?> getservice() async {
    var responces = await http.get(Uri.parse(url));

    if (responces.statusCode == 200) {
      var datas = await json.decode(responces.body);

      var usersList = datas["users"] as List;
      print(datas);
      return List<Modelprofile>.from(
          usersList.map((a) => Modelprofile.fromJson(a)));

      // List<Modelprofile> peoples = [];
      // for (var i in usersList) {
      //   peoples.add(Modelprofile.fromJson(i));
      // }

      // return peoples;
    } else {
      return null;
    }
  }
}
