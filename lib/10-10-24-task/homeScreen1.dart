// import 'package:flutter/material.dart';
// import 'package:flutterproject/10-10-24-task/Tabsection2.dart';
// import 'package:flutterproject/10-10-24-task/about.dart';
// import 'package:flutterproject/10-10-24-task/settings.dart';

// class Homescreen1 extends StatefulWidget {
//   const Homescreen1({super.key});

//   @override
//   State<Homescreen1> createState() => _Homescreen1State();
// }

// class _Homescreen1State extends State<Homescreen1> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: Drawer(
//         child: ListView(
//           children: [
//             DrawerHeader(child: Text("Home Screen")),
//             ListTile(
//               title: Text("Tab Section"),
//               onTap: () {
//                 Navigator.push(
//                     context, MaterialPageRoute(builder: (_) => Tabsection2()));
//               },
//             ),
//             ListTile(
//               title: Text("settings"),
//               onTap: () {
//                 Navigator.push(
//                     context, MaterialPageRoute(builder: (_) => Settings()));
//               },
//             ),
//             ListTile(
//               title: Text("About"),
//               onTap: () {
//                 Navigator.push(
//                     context, MaterialPageRoute(builder: (_) => About()));
//               },
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
