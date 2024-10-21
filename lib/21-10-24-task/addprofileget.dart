import 'package:flutter/material.dart';
import 'package:flutterproject/07-10-24-task/alertbox.dart';
import 'package:flutterproject/21-10-24-task/getform.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Addprofileget extends StatelessWidget {
   Addprofileget({super.key});

  TextEditingController namecontroller = TextEditingController();

  TextEditingController agecontroller = TextEditingController();

  final getInstance = Get.put(GetxModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  // validator: (value) {
                  //   if (namecontroller.text.isEmpty) {
                  //     return "enter your name";
                  //   }
                  //   return '';
                  // },
                  controller: namecontroller,
                  decoration: InputDecoration(
                      hintText: "Enter Your Name.",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                        
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: agecontroller,
                  // validator: (value) {
                  //   if (agecontroller.text.isEmpty) {
                  //     return "enter your age";
                  //   }
                  //   return '';
                  // },
                  decoration: InputDecoration(
                      hintText: "Enter Your Age.",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
                SizedBox(height: 10,),
                ElevatedButton(
                    onPressed: () {
                      getInstance.addName(UserModel(
                        age: int.parse(agecontroller.text),
                        name: namecontroller.text,
                        id: DateTime.now().toString(),
                      ));
                    },
                    child: Text("Submit")),
                Expanded(
                    child: ListView.builder(
                        itemCount: getInstance.userList.length,
                        itemBuilder: (context, index) {
                          final indexedUser = getInstance.userList[index];
                          return ListTile(
                            title: Text(indexedUser.name),
                            subtitle: Text(indexedUser.age.toString()),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      getInstance.deleteName(indexedUser.id);
                                    },
                                    icon: Icon(Icons.delete)),
                              IconButton(
                                    onPressed: () {
                                        namecontroller.text =
                                                          indexedUser.name;
                                                      agecontroller.text =
                                                          indexedUser.age
                                                              .toString();
                                      // getInstance.updateName(
                                      //     indexedUser.id,
                                      //     namecontroller.text,
                                      //     int.parse(agecontroller.text));
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              content: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                   SizedBox(
                                                  height: 10,
                                                ),
                                                TextFormField(
                                                  controller: namecontroller,
                                                  decoration: InputDecoration(
                                                      hintText:
                                                          "Enter Your new Name.",
                                                      border: OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30))),
                                                ),
                                                SizedBox(height: 10,),
                                                TextFormField(
                                                  controller: agecontroller,
                                                  decoration: InputDecoration(
                                                      hintText:
                                                          "Enter Your  new Age.",
                                                      border: OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30))),
                                                ),
                                                ],
                                              ),
                                              alignment: Alignment.center,
                                              actions: [
                                               
                                                ElevatedButton(
                                                    iconAlignment:
                                                        IconAlignment.end,
                                                    onPressed: () {
                                                    
                                            
                                                      getInstance.updateName(
                                                          indexedUser.id,
                                                          namecontroller.text,
                                                          agecontroller.text);
                                                      Get.back();
                                                    },
                                                    child: Text("Ok"))
                                              ],
                                            );
                                          });
                                    },
                                    icon: Icon(Icons.edit))
                              ],
                            ),
                          );
                        }))
              ],
            ),
          ),
        );
      }),
    );
  }
}
