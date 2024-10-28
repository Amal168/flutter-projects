import 'dart:convert';
import 'package:flutterproject/28-10-24-task/modelnote.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class Apinotes {
  var url = "https://jsonplaceholder.typicode.com/posts";

  Future<List<Modelnote>?> getnotesservice() async {
    var responcesnotes = await http.get(Uri.parse(url));

    if (responcesnotes.statusCode == 200) {
      var apiNotedatas = await json.decode(responcesnotes.body);
       return List<Modelnote>.from(apiNotedatas.map((i) => Modelnote.fromJson(i)));

    } else {
      return null;
    }
  }
  
}
