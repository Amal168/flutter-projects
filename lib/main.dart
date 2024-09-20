import 'package:flutter/material.dart';
import 'package:flutterproject/chessboard.dart';
import 'package:flutterproject/circle.dart';
import 'package:flutterproject/login.dart';
import 'package:flutterproject/19_09_24_task/signup.dart';
import 'package:flutterproject/19_09_24_task/welcomeback.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: WelcomeBack(),
    );
  }
}

