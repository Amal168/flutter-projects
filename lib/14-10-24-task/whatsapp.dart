import 'package:flutter/material.dart';
import 'package:flutterproject/03-10-24-task/profile.dart';
import 'package:flutterproject/09-10-24-task/profile1.dart';

class Whatsapp extends StatefulWidget {
  Whatsapp({super.key});

  @override
  State<Whatsapp> createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp>
    with SingleTickerProviderStateMixin {



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
          title: Text("WhatsApp"),
          backgroundColor: Colors.lightGreen,
          centerTitle: true,
          bottom: TabBar(
            controller: _tabController, isScrollable: true, tabs: [
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
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
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
        body: 
            TabBarView(
              controller: _tabController,
               children: <Widget>[
              Center(
                child: Text("Chats", style: TextStyle(fontSize: 20)),
              ),
              Center(
                child: Text("Status", style: TextStyle(fontSize: 20)),
              ),
              Center(
                child: Text("Calls", style: TextStyle(fontSize: 20)),
              )
            ]),

        );
  }
}
