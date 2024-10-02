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
      appBar: AppBar(
        title: Text('Profile Page'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                 child: Image.asset(
                    'assets/leaf.png'), // Placeholder image
              ),
              SizedBox(height: 16),
              Text(
                'Amal S',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              
             
              SizedBox(height: 16),
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
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.black54,
                    textColor: Colors.white,
                    fontSize: 16.0,
                  );
                },
                child: Text('Show Toast'),
              ),
              
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Profile updated!'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
                child: Text('Update Profile'),
              ),
              ],)
            ],
          ),
        ),
      ),
    );
  }
}