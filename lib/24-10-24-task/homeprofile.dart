import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/24-10-24-task/contrillerprofile.dart';
import 'package:flutterproject/24-10-24-task/pageprofie.dart';
import 'package:get/get.dart';

class Homeprofile extends StatelessWidget {
  Homeprofile({super.key});

  final controller = Get.put(Contrillerprofile());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Userlist.io"),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Container(child: Obx(() {
        return controller.load.isTrue
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: controller.datamodelprofile.length,
                        itemBuilder: (c, i) {
                          final itemdata = controller.datamodelprofile[i];
                          return Card(
                            child: ListTile(
                              onTap: () {
                                Get.to(Pageprofie(
                                    name: itemdata.firstName,
                                    image: itemdata.image,
                                    email: itemdata.email,
                                    age: itemdata.age.toString()));
                              },
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    itemdata.image.toString() ?? ""),
                              ),
                              title: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(itemdata.id.toString() ?? ""),
                                      Text("."),
                                      Text(itemdata.firstName.toString()),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(itemdata.maidenName.toString()),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(itemdata.lastName.toString()),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(itemdata.email.toString() ?? ""),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            // navigator.push(MaterialPageRoute(builder: (_)=>Pageprofie(name: name, image: image, email: email, age: age)))
                                          },
                                          icon: Icon(Icons.arrow_forward)),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(itemdata.age.toString() ?? ""),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(itemdata.gender.toString() ?? ""),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              );
      })),
    );
  }
}
