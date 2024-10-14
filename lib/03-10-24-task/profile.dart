import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Profile extends StatelessWidget {
  final List<String> interests = [
    'Hobbies',
    'Skills',
    'Coding',
    'Watching youtube vedios',
    'Music',
    'Reading',
    'Football'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent[700],
        title: const Text('Profile Page',style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/gear-5-luffy-artwork-5k-3840x2160-18363.jpg"),
              
              ),
              const SizedBox(height: 16),
              const Text(
                'Monkey D Luffy',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Flutter Developer',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              
             
              const SizedBox(height: 16),
              Expanded(
                child: ListView.builder(
                  itemCount: interests.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(interests[index]),
                    );
                  },
                ),
              ),


              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                 ElevatedButton(
                onPressed: () {
                  Fluttertoast.showToast(
                    msg: "Welcome to your profile!",
                    toastLength: Toast.LENGTH_LONG,
                    gravity: ToastGravity.BOTTOM_RIGHT,
                    backgroundColor: Colors.green,
                    textColor: Colors.white,
                    fontSize: 16.0,
                  );
                },
                child: const Text('Show Toast'),
              ),
              
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Profile updated!'),
                    ),
                  );
                },
                child: const Text('Update Profile'),
              ),
              ],)
            ],
          ),
        ),
      ),
    );
  }
}