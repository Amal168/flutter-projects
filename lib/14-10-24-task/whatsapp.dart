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

  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

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
              PopupMenuItem(
                value: "profile",
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Icon(Icons.abc),
                    ),
                    const Text(
                      'Profile',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                value: "settings",
                child: Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(Icons.settings)),
                    const Text(
                      'Settings',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                value: "logout",
                child: Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(Icons.logout)),
                    const Text(
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
        bottom: TabBar(controller: _tabController, isScrollable: false, tabs: [
          Tab(
            text: "Chats",
          ),
          Tab(
            text: "States",
          ),
          Tab(
            text: "Calls",
          ),
        ]),
      ),
      drawer: Drawer(
        clipBehavior: Clip.hardEdge,
        backgroundColor: Colors.black,
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: Text("Details")),
            ListTile(
              title: Text(
                "Profile",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Profile1()));
              },
            ),
            ListTile(
              title: Text("Acheved Chats",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            ),
            ListTile(
              title: Text("Settings",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            ),
            ListTile(
              title: Text("Help"),
            ),
          ],
        ),
      ),
      body: TabBarView(controller: _tabController, children: <Widget>[
        Center(
          child:ListView(
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
              )
            ],
          ),
        ),
        Center(
          child: Text("Status", style: TextStyle(fontSize: 20)),
        ),
        Center(
          child: Text("Calls", style: TextStyle(fontSize: 20)),
        )
      ]),
      floatingActionButton: selectedBottomNavindex == 0
          ? FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.chat),
              backgroundColor: Colors.lightGreen,
            )
          : null,
    );
  }
}
