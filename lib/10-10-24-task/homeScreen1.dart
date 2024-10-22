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
        title: const Text("Home Screen"),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(decoration: BoxDecoration(color: Color.fromARGB(255, 255, 147, 24)),curve: Curves.easeInBack,child: Text("Home Screen"),),
            ListTile(
              title: const Text("Tab Section"),
              
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Tabsection2()));
              },
            ),
            ListTile(
              title: const Text("settings"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Settings()));
              },
            ),
            ListTile(
              title: const Text("About"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const About()));
              },
            )
          ],
        ),
      ),
    );
  }
}
