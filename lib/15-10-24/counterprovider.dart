import 'package:flutter/material.dart';
import 'package:flutterproject/15-10-24/providerclass.dart';
import 'package:provider/provider.dart';

class Counterprovider extends StatefulWidget {
  const Counterprovider({super.key});

  @override
  State<Counterprovider> createState() => _CounterproviderState();
}

class _CounterproviderState extends State<Counterprovider> {
  @override
  Widget build(BuildContext context) {
    final count = Provider.of<Providerclass>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider",style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("count is ${count.counter}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            Positioned(
              child: FloatingActionButton(onPressed: () {
                count.addnum();
              },
              child: Icon(Icons.add),
              ),
            ),
            SizedBox(height: 10,),
            Positioned(
              
              child: FloatingActionButton(onPressed: () {
                count.subnum();
              },
              child: Icon(Icons.minimize),
              ),
            )
          ],
        ),
      ),
    );
  }
}
