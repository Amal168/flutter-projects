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
      backgroundColor: Color(0xffE7F9DA),
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
              
            Text("SignUp",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            SizedBox(height: 10,),
            Container(
              width: 290,
              height: 500,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white),
              child: 
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 40,),
                  Text("    Name",style: TextStyle(fontWeight: FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      
                                    decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "Enter your Name",
                    fillColor:  Color(0xffE7F9DA),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    )
                                    ),
                                  ),
                  ),
                  Text("    Mobile Number",style: TextStyle(fontWeight: FontWeight.bold),),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      
                                    decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    hintText: "Enter your Mobile Number",
                    fillColor:  Color(0xffE7F9DA),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    )
                                    ),
                                  ),
                  ),
                                   
                                    Text("    Email",style: TextStyle(fontWeight: FontWeight.bold),),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      
                                    decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: "Enter your Email",
                    fillColor:  Color(0xffE7F9DA),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    )
                                    ),
                                  ),
                  ),
                  Text("    Password",style: TextStyle(fontWeight: FontWeight.bold),),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      
                                    decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_clock_outlined),
                    hintText: "Enter your password",
                    fillColor:  Color(0xffE7F9DA),
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
                backgroundColor: Color(0xff92D722),
                foregroundColor: Colors.white,),
                          onPressed: () {}, 
                        child: Text("SignUp"),
                        ),
                        
                      ),
                    
                      
                    ),
                  ),
                  Column(
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