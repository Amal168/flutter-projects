import 'dart:ui';

import 'package:flutter/material.dart';

class Homepage211 extends StatefulWidget {
  const Homepage211({super.key});

  @override
  State<Homepage211> createState() => _Homepage211State();
}

class _Homepage211State extends State<Homepage211> {
  double blure = 0.11;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TweenAnimationBuilder(
                  tween: Tween(begin: 0.01, end: blure),
                  duration: Duration(seconds: 2),
                  builder: (BuildContext context, double? value, Widget? child) {
                    return SizedBox(
                      width: double.infinity,
                      height: 200,
                      child: ImageFiltered(
                        imageFilter: ImageFilter.blur(
                            sigmaX: value ?? 00, sigmaY: value ?? 00),
                        child: Image(
                          fit: BoxFit.fill,
                          image: 
                          NetworkImage("https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.reddit.com%2Fr%2Fwallpapers%2Fcomments%2F1026ssm%2Fnational_park_4k_3840x2160_by_ai%2F&psig=AOvVaw1BebUFkI6KMgn2y81V3N9k&ust=1730868719602000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCICUh6C5xIkDFQAAAAAdAAAAABAE")
                          // AssetImage("assets/gear-5-luffy-artwork-5k-3840x2160-18363.jpg")
                        ),
                      ),
                    );
                  }),
            ),
            Slider(
              min: 0,
              max: 10,
              value: blure,
              divisions: 5,
              thumbColor: Colors.yellow,
              activeColor: Colors.red,
              // overlayColor: ,
              autofocus: false,
              inactiveColor: Colors.green,
              secondaryActiveColor: Colors.black,
              onChanged: (value) {
                setState(() {
                  blure = value;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
