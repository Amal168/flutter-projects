import 'package:flutter/material.dart';
import 'package:flutterproject/7-11-24-task/custemwidjets.dart'; // Assuming this custom widget exists
import 'package:flutterproject/7-11-24-task/tabBarnavigation.dart';

class Loginscreen2 extends StatefulWidget {
  Loginscreen2({super.key});

  @override
  State<Loginscreen2> createState() => _Loginscreen2State();
}

class _Loginscreen2State extends State<Loginscreen2> {
  // Controllers for username and password
  late TextEditingController usernamecont = TextEditingController();
  late TextEditingController passwordcont = TextEditingController();

  // Hardcoded credentials
  final String usaeramal = "amals";
  final String passamal = "amal123";

  // Create a global key for the Form
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    // Dispose controllers to avoid memory leaks
    usernamecont.dispose();
    passwordcont.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: _formKey, // Attach form key to validate
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              // Login button with form validation
              SizedBox(
                width: 400,
                child: TextFormField(
                  controller: usernamecont,
                  validator: (String? value) {
                    if (usernamecont.text.isEmpty &&
                        usernamecont.text != usaeramal) {
                      return "no data";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: "Enter YourUsername",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                    )
                  ),
                ),
              ),
              SizedBox(height: 10,),
              SizedBox(
                width: 400,
                child: TextFormField(
                  controller: passwordcont,
                  validator: (value) {
                    // setState(() {
                      if (passwordcont.text.isEmpty &&
                          passwordcont.text != passamal) {
                        "no data";
                      }
                    // });
                  },
                  decoration: InputDecoration(
                    hintText: "Enter Your Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                    )
                  ),
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                onPressed: () {
                  // If form is valid, proceed with login
                  if (_formKey.currentState?.validate() ?? false) {
                    if (usernamecont.text == usaeramal &&
                        passwordcont.text == passamal) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => Tabbarnavigation()),
                      );
                    }
                  } else {
                    // If form is invalid, show SnackBar
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Incorrect Username or Password")),
                    );
                  }
                },
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
