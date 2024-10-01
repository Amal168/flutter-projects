import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Sample App",
          style: TextStyle(
            fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white
          ),
        ),
      ),
      
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
             const SizedBox(height: 20,),
             const Text("TutorialKart",style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.blue
            ),),
            const SizedBox(height: 30,),
             const Text("Sign in"),
            Container(
              
              width: 190,
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(),
                
                
              ),
            )
          ],
        ),
      ),
    );
  }
}