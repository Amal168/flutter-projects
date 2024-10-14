import 'package:flutter/material.dart';
import 'package:flutterproject/14-10-24-task/whatsapp.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
    int index = 0;
  List bottombar = [
    Whatsapp(),
    Center(child: Text("Contacts")),
    Center(child: Text("Settings")),
    Center(child: Text("Update")),
  ];
    void _onitemtapped(int changedindex) {
    setState(() {
      index=changedindex;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.chat),
          label: "Home"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.contacts),
          label: "Contacts"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.settings),
          label: "Settings"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.update),
          label: "Update"
          ),
        ],
        showSelectedLabels: true,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.red,
        enableFeedback: true,
        currentIndex: index,
        onTap: _onitemtapped,
        ),
        body: bottombar[index],
    );
  }
}
