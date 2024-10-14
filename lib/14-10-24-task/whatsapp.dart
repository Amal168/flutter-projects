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
  int index = 0;
  List bottombar = [
    Text("Home"),
    Text("Contacts"),
    Text("Settings"),
  ];
  void _onitemtapped(int changedindex) {
    setState(() {
      index=changedindex;
    });
  }

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
        bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label: "Home"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.contacts),
          label: "Contacts"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.settings),
          label: "Settings"
          ),
        ],
        showSelectedLabels: true,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.red,
        enableFeedback: true,
        currentIndex: index,
        onTap: _onitemtapped,
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
