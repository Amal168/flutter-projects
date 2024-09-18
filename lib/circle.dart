import 'package:flutter/material.dart';

class Circle extends StatefulWidget {
  const Circle({super.key});

  @override
  State<Circle> createState() => _CircleState();
}

class _CircleState extends State<Circle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Center(
        child: 
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.orange,
            border: Border.all(width: 5),
            borderRadius: BorderRadius.circular(5)
          ),
          child :Center(child: Container(
            
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              
              color: Colors.red,
              border:Border.all(width: 3,color: Colors.black),
              borderRadius: BorderRadius.circular(50)
            ),
            child :Center(child: Container(
            
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              
              color: Colors.yellow,
              border:Border.all(width: 3,color: Colors.black),
              borderRadius: BorderRadius.circular(5)
            ),
            child :Center(child: Container(
            
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              
              color: Colors.green,
              border:Border.all(width: 3,color: Colors.red),
              borderRadius: BorderRadius.circular(50)
            ),
            child :Center(child: Container(
            
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              
              color: Colors.red,
              border:Border.all(width: 3,color: Colors.black),
              borderRadius: BorderRadius.circular(5)
            ),
          ),)
          
          ),)
          ),)
          ),)
        )
      ),
    );
    
  }
}