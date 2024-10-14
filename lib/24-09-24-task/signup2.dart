import 'package:flutter/material.dart';

class Signup2 extends StatefulWidget {
  const Signup2({super.key});

  @override
  State<Signup2> createState() => _Signup2State();
}

class _Signup2State extends State<Signup2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE7F9DA),
      body: 
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [   
               ClipRect(
                child: Container(
                  
                  
                  child: Image.asset("assets/leaf.png" ),
                ),
              ),
              
            const Text("SignUp",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            const SizedBox(height: 10,),
            Container(
              width: 290,
              height: 500,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white),
              child: 
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 40,),
                  const Text("    Name",style: TextStyle(fontWeight: FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      
                                    decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person),
                    hintText: "Enter your Name",
                    fillColor:  const Color(0xffE7F9DA),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    )
                                    ),
                                  ),
                  ),
                  const Text("    Mobile Number",style: TextStyle(fontWeight: FontWeight.bold),),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      
                                    decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.phone),
                    hintText: "Enter your Mobile Number",
                    fillColor:  const Color(0xffE7F9DA),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    )
                                    ),
                                  ),
                  ),
                                   
                                    const Text("    Email",style: TextStyle(fontWeight: FontWeight.bold),),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      
                                    decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email),
                    hintText: "Enter your Email",
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
                    prefixIcon: const Icon(Icons.lock_clock_outlined),
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
                        child: const Text("SignUp"),
                        ),
                        
                      ),
                    
                      
                    ),
                  ),
                  const Column(
                    children: [
                      Text("Back to login"),
                    ],
                  ),
                 
                ],
              )
              
              
              
            )

          ],
        ),
      ),
    );
  }
}