import 'package:flutter/material.dart';
import 'package:flutterproject/01-10-24-task/front.dart';
import 'package:flutterproject/01-10-24-task/signuppage2.dart';
import 'package:flutterproject/03-10-24-task/profile.dart';
import 'package:flutterproject/04-10-24-task/booking2.dart';
import 'package:flutterproject/04-10-24-task/conferm2.dart';
import 'package:flutterproject/04-10-24-task/home1.dart';
import 'package:flutterproject/07-10-24-task/alertbox.dart';
import 'package:flutterproject/07-10-24-task/bottombarEx.dart';
import 'package:flutterproject/07-10-24-task/tadbaranddrawerEx.dart';
import 'package:flutterproject/09-10-24-task/count.dart';
// import 'package:flutterproject/07-10-24-task/tadbarEx.dart';
import 'package:flutterproject/09-10-24-task/profile1.dart';
import 'package:flutterproject/09-10-24-task/storescreen.dart';
import 'package:flutterproject/10-10-24-task/Tabsection2.dart';
import 'package:flutterproject/10-10-24-task/homeScreen1.dart';
import 'package:flutterproject/11-10-24-task/sharedprefirenceEx.dart';
import 'package:flutterproject/14-10-24-task/whatsapp.dart';
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
import 'package:flutterproject/27_09_24_task/buttons.dart';
import 'package:flutterproject/30-09-24-task/homepage2.dart';
import 'package:flutterproject/30-09-24-task/login1.dart';
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
      // home: const BottomNavigationBarEg(),
      // home:  tadbaranddrawerEx(),
      // home:  Tabsection2(),
      // home:  Sharedprefirenceex(),
      // home:  CounterScreen(),
      // home:  NameStorageScreen(),
      // home: Homescreen1(),
      home: Whatsapp(),


      // routes:  {
      //   'home': (context) => const Home(),
      //   'screenA':(context) => const ScreenA(),
      //   'screenB':(context) => const ScreenB()
      // },
      // initialRoute: 'home',
    );
  }
}

