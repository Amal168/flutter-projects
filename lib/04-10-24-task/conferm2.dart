import 'package:flutter/material.dart';

class Conferm2 extends StatefulWidget {
  const Conferm2({super.key});

  @override
  State<Conferm2> createState() => _Conferm2State();
}

class _Conferm2State extends State<Conferm2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Confirmation Page"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("your seat is booked")
          ],
        ),
      ),

    );
  }
}