import 'package:flutter/material.dart';

class Mycart5 extends StatefulWidget {
  const Mycart5({super.key});

  @override
  State<Mycart5> createState() => _MycartState();
}

class _MycartState extends State<Mycart5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE7F9DA),
      body: 
      
      Center(
        child: 
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          
            children: [
              SizedBox(height: 40,),
              Text("My cart",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            Container(
                height: 60,
                decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(20),color: Colors.white),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset("assets/pot2.png"),
                          SizedBox(width: 10,),
                          Text("monstera",style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(width: 340,),
                          Icon(Icons.delete)
                        ],
                      ),
                      
                    )
                  ],
                ),
              ),
              
              SizedBox(height: 10,),
              Container(
                height: 60,
                decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(20),color: Colors.white),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset("assets/pot3.png"),
                          SizedBox(width: 10,),
                          Text("monstera",style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(width: 340,),
                          Icon(Icons.delete)
                        ],
                      ),
                      
                    )
                  ],
                ),
              ),
              SizedBox(height: 400,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 200,
                    height: 40,
                    child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Color(0xff92D722)),
                      onPressed: () {},
                     child: Text("Buy",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
                  ),
                   Container(
                    width: 200,
                    height: 40,
                     child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Color(0xff92D722)),
                      onPressed: () {},
                     child: Text("Home",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
                   )
                ],
              )
            
            ],
          ),
        ),
      ),
    );
  }
}