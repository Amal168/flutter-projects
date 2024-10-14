import 'package:flutter/material.dart';
import 'package:flutterproject/10-10-24-task/Tabsection2.dart';
import 'package:flutterproject/10-10-24-task/about.dart';
import 'package:flutterproject/10-10-24-task/settings.dart';

class Homescreen1 extends StatefulWidget {
  const Homescreen1({super.key});

  @override
  State<Homescreen1> createState() => _Homescreen1State();
}

class _Homescreen1State extends State<Homescreen1> with SingleTickerProviderStateMixin{
  @override
 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("Home Screen"),decoration: BoxDecoration(color: const Color.fromARGB(255, 255, 147, 24)),curve: Curves.easeInBack,),
            ListTile(
              title: Text("Tab Section"),
              
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Tabsection2()));
              },
            ),
            ListTile(
              title: Text("settings"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Settings()));
              },
            ),
            ListTile(
              title: Text("About"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => About()));
              },
            )
          ],
        ),
      ),
    );
  }
}
