import 'package:flutter/material.dart';

class Myimage extends StatefulWidget {
  const Myimage({super.key});

  @override
  State<Myimage> createState() => _MyimageState();
}

class _MyimageState extends State<Myimage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: 
        Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Container(
                height: 250,
                width: 250,
                child: Image.asset("assets/Screenshot 2024-09-19 093431 - Copy (6).png" ,fit: BoxFit.cover,),
              ),
            ),
            SizedBox(
              height: 30,
              
              

            ),
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQBd4nnLYnLh3cFrWBvEHJ5CgImsEmtjtO1w&s",)
          ],
        ),
      ),
    );
  }
}