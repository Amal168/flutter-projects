import 'dart:convert';

import 'package:flutterproject/23-10-24-task/model.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class DataServices {
  // 1. creata variable for url
  var url = "https://fakestoreapi.com/products";
  

  //2.create get function

  Future<List<Model>?> getservises() async {
    var responce = await http.get(Uri.parse(url));

    // 3.check condection
    if (responce.statusCode == 200) {
      //4.json decode
      var data = await json.decode(responce.body);
      print(data);
      return List<Model>.from(data.map((i) => Model.fromJson(i)));
    } else {
      return null;
    }
  }
}
