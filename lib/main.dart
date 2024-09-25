import 'package:flutter/material.dart';
import 'package:flutterproject/19_09_24_task/chessboard.dart';
import 'package:flutterproject/19_09_24_task/circle.dart';
import 'package:flutterproject/19_09_24_task/image.dart';
import 'package:flutterproject/19_09_24_task/login.dart';
import 'package:flutterproject/19_09_24_task/signup.dart';
//import 'package:flutterproject/19_09_24_task/signup.dart';
import 'package:flutterproject/19_09_24_task/welcomeback.dart';
import 'package:flutterproject/24-09-24-task/addplants6.dart';
import 'package:flutterproject/24-09-24-task/loginpage1.dart';
import 'package:flutterproject/24-09-24-task/buy4.dart';
import 'package:flutterproject/24-09-24-task/mycart5.dart';
import 'package:flutterproject/24-09-24-task/shop3.dart';
import 'package:flutterproject/24-09-24-task/signup2.dart';
import 'package:flutterproject/26_09_24_task/Home.dart';
import 'package:flutterproject/26_09_24_task/ScreenA.dart';
import 'package:flutterproject/26_09_24_task/ScreenB.dart';
//import 'package:flutterproject/24-09-24-task/login1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ScreenB()
      ,
    );
  }
}

