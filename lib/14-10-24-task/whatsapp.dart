import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutterproject/03-10-24-task/profile.dart';
import 'package:flutterproject/09-10-24-task/profile1.dart';
import 'package:image_picker/image_picker.dart';

class Whatsapp extends StatefulWidget {
  Whatsapp({super.key});

  @override
  State<Whatsapp> createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp>
    with SingleTickerProviderStateMixin {
  File? _image;
  Future pickimage(ImageSource source) async {
    final imagefile = await ImagePicker().pickImage(source: source);
    setState(() {
      if (imagefile != null) _image = File(imagefile.path);
    });
  }

  int selectedBottomNavindex = 0;

  

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.qr_code),
          SizedBox(
            width: 10,
          ),
          IconButton(onPressed: (){
            Navigator.pop(context);
            pickimage(ImageSource.camera);
          }, icon: Icon(Icons.camera_alt_outlined)),
          // MenuItemButton(onPressed: (){},child: Icon(Icons.menu),),
          PopupMenuButton(
            onSelected: (value) {
              if (value == "profile") {
                // add desired output
              } else if (value == "settings") {
                // add desired output
              } else if (value == "logout") {
                // add desired output
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry>[
              const PopupMenuItem(
                value: "profile",
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Icon(Icons.abc),
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
              const PopupMenuItem(
                value: "settings",
                child: Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Icon(Icons.settings)),
                    Text(
                      'Settings',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
              const PopupMenuItem(
                value: "logout",
                child: Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Icon(Icons.logout)),
                    Text(
                      'Logout',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
        title: Text("WhatsApp"),
        backgroundColor: Colors.teal,
        centerTitle: true,
      
    )
    ,body: Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search",
                      border: OutlineInputBorder(
                        
                        borderRadius: BorderRadius.circular(30)
                      
                      )
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(left:8.0),
                  child: Row(
                   
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    ElevatedButton(onPressed: (){}, child:Text("All",),style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.grey[200])),),
                  (Padding(padding: EdgeInsets.only(left: 8.0))),
                  ElevatedButton(onPressed: (){}, child:Text("Unread"),style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.grey[200]))),
                  (Padding(padding: EdgeInsets.only(left: 8.0))),
                  ElevatedButton(onPressed: (){}, child:Text("Favourites"),style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.grey[200]))),
                  (Padding(padding: EdgeInsets.only(left: 8.0))),
                  ElevatedButton(onPressed: (){}, child:Text("Group"),style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.grey[200]))),
                  (Padding(padding: EdgeInsets.only(left: 8.0))),
                  ],),
                ),
              
                
                ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(), 
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(),
                      title: Text('person ${index + 1}'),
                      subtitle: Text('chats'),
                      trailing: Text('10:33 AM'),
                    );
                    
                  },
                  separatorBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal:  8.0),
                      child: Divider(
                 
                      ),
                    );
                  },
                ),
                
          ],
        ),
      ),
      
    ),
    floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.chat),),
    );
  }
}
