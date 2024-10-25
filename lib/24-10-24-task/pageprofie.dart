import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/24-10-24-task/contrillerprofile.dart';
import 'package:get/get.dart';

class Pageprofie extends StatelessWidget {
  String? name;
  String? image;
  String? email;
  String? age;
  Pageprofie({super.key,
  required this.name,
  required this.image,
  required this.email,
  required this.age,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.blue,
            child: CircleAvatar(
              backgroundImage: NetworkImage(image.toString()),
              child: Column(
                children: [
                  Text(name.toString()),
                  Text(email.toString()),
                  Text(age.toString()),
                ],
              ),
            ),
            
          ),
        ),
      
    );
  }
}
