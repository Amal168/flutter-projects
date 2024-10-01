import 'package:flutter/material.dart';
import 'package:flutterproject/01-10-24-task/signuppage2.dart';

class Front extends StatefulWidget {
  const Front({super.key});

  @override
  State<Front> createState() => _FrontState();
}

class _FrontState extends State<Front> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 400,
                  width: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(200),
                        bottomRight: Radius.circular(200)),
                    border: Border.all(),
                    color: Colors.black,
                  ),
                ),
                Positioned(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 350),
                      child: Container(
                        width: 100,
                        height: 100,
                        child: Image.asset("assets/leaf.png"),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Leafboard",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text("A platform build for a new way of working"),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[300]),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => Signuppage2()));
                },
                child: Text(
                  "Get start for free>",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}
