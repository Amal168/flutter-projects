import 'package:flutter/material.dart';

class Shop3 extends StatefulWidget {
  const Shop3({super.key});

  @override
  State<Shop3> createState() => _Loginpage1State();
}

class _Loginpage1State extends State<Shop3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE7F9DA),
      body: 
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [ 
            const SizedBox(height:40 ,),  
               ClipRect(
                child: SizedBox(
                  width: 70,
                  height: 80,
                  child: Image.asset("assets/leaf.png" ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                        Column(
                          children: [
                            
                            Container(
                              width: 150,
                              height: 200,
                              
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white,),
                              child: ClipRect(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset("assets/pot1.png"),
                                      const Text("Monstera",style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 20,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          
                          children: [
                            Container(
                              width: 150,
                              height: 200,
                              
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white,),
                              child: ClipRect(
                                child: Padding(
                                  padding: const EdgeInsets.all(40.0),
                                  child: Column(
                                    children: [
                                      Image.asset("assets/pot2.png"),
                                      const Text("Pothos",style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                        Column(
                          children: [
                            Container(
                              width: 150,
                              height: 200,
                              
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white,),
                              child: ClipRect(
                                child: Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: Column(
                                    children: [
                                      Image.asset("assets/pot3.png"),
                                      const Text("Parlor palm",style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                  
                                ),
                              ),
                              
                            ),
                          ],
                        ),
                        const SizedBox(width: 20,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          
                          children: [
                            Container(
                              width: 150,
                              height: 200,
                              
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white,),
                              child: ClipRect(
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  
                                  child: Column(
                                    children: [
                                      Image.asset("assets/pot4.png"),
                                      const Text("Aloe",style: TextStyle(fontWeight: FontWeight.bold),),
                                    ],
                                  ),
                                  
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    
                  ],
                ),
              ),
              Container(
                      height: 50,
                      width: 3000,
                      decoration: BoxDecoration(border: Border.all(),color: const Color(0xff92D722)),
                      child: const Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.home),
                          Icon(Icons.add_circle_outline),
                          Icon(Icons.shopping_cart),
                          Icon(Icons.person)
                        ],
                      ),
                      
                    )
            
          ],
        ),
      ),
    );
  }
}