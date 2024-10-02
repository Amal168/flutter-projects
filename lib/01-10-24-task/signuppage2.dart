import 'package:flutter/material.dart';

class Signuppage2 extends StatefulWidget {
  const Signuppage2({super.key});

  @override
  State<Signuppage2> createState() => _Signuppage2State();
}

class _Signuppage2State extends State<Signuppage2> {
  final formkey = GlobalKey<FormState>();

  final amalemail = 'amal@gmail.com';
  final amalpass = 'amal123';

  final TextEditingController emailcontrol = TextEditingController();
  final TextEditingController passcontrol = TextEditingController();

  Color color = Colors.white;

  bool obscure = true;

  void togle() {
    setState(() {
      obscure = !obscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/leaf.png"),
                  const Text(
                    "Leafboard",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Text(
                "Work without limits",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Your email address",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                    TextFormField(
                      controller: emailcontrol,
                      validator: (value) {
                        if (emailcontrol.text.isEmpty) {
                          return "enter the email";
                        } else if (emailcontrol.text != amalemail)
                          return "wrong email";
                        return null;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              //borderSide: BorderSide.none
                              borderRadius: BorderRadius.circular(30))),
                    ),
                    const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Choose a Password",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                    TextFormField(
                      controller: passcontrol,
                      validator: (value) {
                        if (passcontrol.text.isEmpty) {
                          return "enter password";
                        } else if (passcontrol.text != amalpass)
                          return "wrong email";
                      },
                      obscureText: obscure,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: () {
                                togle();
                              },
                              icon: Icon(obscure
                                  ? Icons.remove_red_eye
                                  : Icons.close)),
                          border: OutlineInputBorder(
                              //borderSide: BorderSide.none
                              borderRadius: BorderRadius.circular(30))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (formkey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text("Valied")));
                            } else if (formkey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text("invaValied")));
                            }
                          });
                        },
                        child: Ink(
                          width: 400,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.green[300],
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(30)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Text("Continue"), Text(">")],
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   width: 400,
                    //   height: 50,

                    //   child: ElevatedButton(

                    //     style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 92, 219, 14)),
                    //     onPressed: () {
                    //   }, child: const Text("Continue",style: TextStyle(fontWeight: FontWeight.bold),)),
                    // ),
                    SizedBox(
                      height: 20,
                    ),
                    const Text(
                        "---------------------------------or-------------------------------"),
                    SizedBox(
                      height: 20,
                    ),

                    SizedBox(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (emailcontrol.text.isNotEmpty &&
                                passcontrol.text.isNotEmpty) {
                              color = Colors.green;
                            }
                          });
                        },
                        child: Ink(
                          width: 400,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(30)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/download.png"),
                              Text("Sign in with google"),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (emailcontrol.text.isNotEmpty &&
                                passcontrol.text.isNotEmpty) {
                              color = Colors.green;
                            }
                          });
                        },
                        child: Ink(
                          width: 400,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(30)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.apple),
                              Text("Sign in with Apple"),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
