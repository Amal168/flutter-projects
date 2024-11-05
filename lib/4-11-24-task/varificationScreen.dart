import 'package:flutter/material.dart';
import 'package:flutterproject/30-09-24-task/homepage2.dart';
import 'package:flutterproject/4-11-24-task/Homepage2.dart';
import 'package:flutterproject/4-11-24-task/customwidjets.dart';
import 'package:get/get.dart';

class Varificationscreen extends StatefulWidget {
  const Varificationscreen({super.key});

  @override
  State<Varificationscreen> createState() => _VarificationscreenState();
}

class _VarificationscreenState extends State<Varificationscreen> {
  final formkey = GlobalKey<FormState>();
  final amalpass = 'amal123';

  final TextEditingController passcontroller = TextEditingController();
  bool obscure = true;
  void togle() {
    setState(() {
      obscure = obscure!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customtextformfield(
                      suffix: () {
                        setState(() {
                          obscure = !obscure;
                        });
                      },
                      icon: obscure ? Icon(Icons.remove_red_eye) : Icon(Icons.close),
                      obscure: obscure,
                      obscurecha: "*",
                      // sufix: IconButton(onPressed: onPressed, icon: icon),
                      validator: (valye) {
                        if (passcontroller.text.isEmpty) {
                          return "Enter your pass word";
                        } else if (passcontroller.text != amalpass) {
                          return "wrong password";
                        }
                      },
                      hinttext: "enter your password",
                      controller: passcontroller),
                  customButton(
                    text: "submit",
                    onPressed: () {
                      setState(() {
                        if (passcontroller.text == amalpass) {
                          navigator?.push(
                              MaterialPageRoute(builder: (_) => Homepage211()));
                        } else {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(SnackBar(content: Text("Error")));
                          ;
                        }
                      });
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
