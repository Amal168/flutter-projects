import 'package:flutter/material.dart';

class Loginpage1 extends StatefulWidget {
  const Loginpage1({super.key});

  @override
  State<Loginpage1> createState() => _Loginpage1State();
}

class _Loginpage1State extends State<Loginpage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE7F9DA),
      body: 
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [   
               Image.asset(
                  "assets/green.png",
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                    top: 54,
                    left: 146,
                    height: 106,
                    width: 170,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Image.asset("assets/leaf.png")],
                    )),
              const SizedBox(height: 20,),
            const Text("Welcome to GreenHub"),
            const Text("LOGIN",style: TextStyle(fontWeight: FontWeight.bold),),
            const SizedBox(height: 10,),
            Container(
              width: 290,
              height: 350,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white),
              child: 
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 40,),
                  const Text("    Email",style: TextStyle(fontWeight: FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      
                                    decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email),
                    hintText: "Enter your email id",
                    fillColor:  const Color(0xffE7F9DA),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    )
                                    ),
                                  ),
                  ),
                  const Text("    Password",style: TextStyle(fontWeight: FontWeight.bold),),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      
                                    decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    hintText: "Enter your password",
                    fillColor:  const Color(0xffE7F9DA),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    )
                                    ),
                                  ),
                  ),
                                    const SizedBox(height: 40,),

                  SizedBox(
                    
                    child: 
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff92D722),
                foregroundColor: Colors.white,),
                          onPressed: () {}, 
                        child: const Text("LOGIN"),
                        ),
                        
                      ),
                    
                      
                    ),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Create New Account?"),
                      TextButton(onPressed: (){}, 
                      child: const Text("SignUp",style: TextStyle(color: Colors.blue),))
                    ],
                  )
                ],
              )
              
              
              
            )

          ],
        ),
      ),
    );
  }
}