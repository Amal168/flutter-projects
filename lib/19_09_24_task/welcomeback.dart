import 'package:flutter/material.dart';

class WelcomeBack extends StatefulWidget {
  const WelcomeBack({super.key});

  @override
  State<WelcomeBack> createState() => _WelcomeBackState();
}

class _WelcomeBackState extends State<WelcomeBack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 50,),
            Text("Welcome Back",style: TextStyle(
              fontSize: 50,fontWeight: FontWeight.bold
            ),),
            Text("Enter your credential to login"),
            SizedBox(height: 90,),
            SizedBox(
              height: 48,
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                  
                  prefixIcon: Icon(Icons.person),
                  hintText: "Username",
                  fillColor: const Color.fromARGB(255, 228, 187, 248),
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15),
                    
                    
                  )
                ),
              ),
            ),
           
            SizedBox(height: 10,),
            SizedBox(
              height: 48,
             width: 300,
              child: TextFormField(
                obscureText: true,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  
                  prefixIcon: Icon(Icons.password),
                  hintText: "password",
                  fillColor: const Color.fromARGB(255, 225, 187, 248),
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15),
                    
                    
                  )
                ),
              ),
            ),

            SizedBox(height: 10,),
            
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 158, 58, 205),
                foregroundColor: Colors.white,
                
              ),
                onPressed: () {},
                 child: Text("Login",
                 //style: ,
                 )),
                 
            ),
            SizedBox(height: 100,),
            Column(
              children: [
                Text("Forgot password",
                style: TextStyle(
                  color: Colors.deepPurple,
                ),)
              ],
            ),
            SizedBox(height: 80,),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have any account?"),
                    SizedBox(width: 10,),
                    Text(" Sign Up",style: TextStyle(color: Colors.deepPurple),)
                  ],
                  
                )
              ],
            )
            
          ],
          
          
        ),
        
      ),
      
    );
  }
}