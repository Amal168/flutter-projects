import 'package:flutter/material.dart';
import 'package:flutterproject/04-10-24-task/booking2.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      appBar: AppBar(
        title: const Text("Occupy Your Seat",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.blue[200],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Occupy Your Seat",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightGreenAccent[400],
              ),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => const Booking2()));
                },
                child: const Text("Booking Page >",)),
          ],
        ),
      ),
    );
  }
}
