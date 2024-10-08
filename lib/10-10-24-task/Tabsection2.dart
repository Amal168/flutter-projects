// import 'dart:ffi';

// import 'package:flutter/material.dart';

// class Tabsection2 extends StatefulWidget {
//   const Tabsection2({super.key});

//   @override
//   State<Tabsection2> createState() => _Tabsection2State();
// }

// class _Tabsection2State extends State<Tabsection2>
//     with SingleTickerProviderStateMixin {
//   late TabController _tabController;

//   @override
//   // Void dispose() {
//   //   _tabController.dispose();
//   //   super.dispose();
//   // }

//   // Void initstate() {
//   //   super.initState();
//   //   _tabController = TabController(length: 3, vsync: this);
//   // }

//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         bottom: TabBar(tabs: [
//           Tab(
//             text: "tab1",
//           ),
//           Tab(
//             text: "tab2",
//           ),
//           Tab(
//             text: "tab3",
//           ),
//         ]),
//       ),
//       body: TabBarView(children: [
//         Center(
//           child: Text("Content for tab 1"),
//         ),
//         Center(
//           child: Text("Content for tab 2"),
//         ),
//         Center(
//           child: Text("Content for tab 3"),
//         )
//       ]),
//     );
//   }
// }
