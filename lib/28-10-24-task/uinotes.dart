import 'package:flutter/material.dart';
import 'package:flutterproject/28-10-24-task/controllernotes.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Uinotes extends StatelessWidget {
  Uinotes({super.key});

  final uicontroller = Get.put(DataapiController());

  



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Notes",
          style: TextStyle(fontSize: 30),
        ),
        backgroundColor: Colors.amber,
      ),
      body: Obx(() {
        return uicontroller.notesloading.isTrue
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: uicontroller.datanotesmodel.length,
                itemBuilder: (context, index) {
                  final uidata = uicontroller.datanotesmodel[index];
                  return Card(
                    child: ListTile(
                      title: Text(
                        uidata.title.toString() ?? "",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(uidata.body.toString() ?? ""),
                          Row(
                            children: [
                              Text("Userid=${uidata.userId.toString() ?? ""}",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Id=${uidata.id.toString() ?? ""}",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {return
                                    AlertDialog(
                                      title: Column(
                                        children: [
                                          TextFormField(
                                            decoration: InputDecoration(
                                                hintText: "enteri title",
                                                border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(30),
                                                  
                                                  
                                                )),
                                                
                                          ),
                                          SizedBox(height: 10,),
                                          TextFormField(
                                            decoration: InputDecoration(
                                                hintText: "enteri title",
                                                border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(30)))),
                                                  
                                        ],
                                      ),
                                      actions: [
                                        ElevatedButton(onPressed: (){}, child: Text("Submit"))
                                      ],
                                    );
                                  },
                                );
                              },
                              icon: Icon(Icons.edit)),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.delete)),
                        ],
                      ),
                    ),
                  );
                });
      }),
    );
  }
}
