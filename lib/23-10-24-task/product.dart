import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterproject/23-10-24-task/contrillerpage.dart';
import 'package:flutterproject/23-10-24-task/model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:flutterproject/23-10-24-task/const.dart';

class Product extends StatelessWidget {
  Product({super.key});

  //1.create instance for controller
  final controller = Get.put(DataController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      appBar: AppBar(
        title: Text("Product"),
      ),
      body: Container(
        alignment: Alignment.center,
        //create obx

        child: Obx(() {
          return controller.loading.isTrue? Center(child: CircularProgressIndicator(),):
           ListView.builder(
              itemCount: controller.datamodel.length,
              itemBuilder: (c, i) {
                final datacon = controller.datamodel[i];
                return Card(child: ListTile(
                  leading: CircleAvatar(backgroundImage: NetworkImage(datacon.image??"")),
                  title: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(datacon.id.toString() ?? ""),
                      Text(datacon.title.toString() ?? ""),
                      Text(datacon.price.toString() ?? ""),
                      Text(datacon.description.toString() ?? ""),
                      Text(datacon.rating?.count.toString() ?? ""),
                      Text(datacon.rating?.rate.toString() ?? ""),
                    ],
                  )));
              });
        }),
      ),
    );
  }
}
