import 'package:flutter/material.dart';

class Addplants6 extends StatefulWidget {
  const Addplants6({super.key});

  @override
  State<Addplants6> createState() => _Signup2State();
}

class _Signup2State extends State<Addplants6> {
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
              
            Text("Add Plants",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
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
                    
                    hintText: "Plant Name",
                    fillColor:  Color(0xffE7F9DA),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    )
                                    ),
                                  ),
                  ),
                  
                                   
                   Text("    About",style: TextStyle(fontWeight: FontWeight.bold),),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      
                    decoration: InputDecoration(
                    hintText: "about",
                    fillColor:  Color(0xffE7F9DA),
                    filled: true,
                    
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                      

                    )
                                    ),
                                  ),
                  ),
                  Text("    Image",style: TextStyle(fontWeight: FontWeight.bold),),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      
                                    decoration: InputDecoration(
                    
                    hintText: "Uploade image",
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
                        child: Text("Add"),
                        ),
                        
                      ),
                    
                      
                    ),
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