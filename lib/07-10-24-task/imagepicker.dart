import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutterproject/07-10-24-task/alertbox.dart';
import 'package:image_picker/image_picker.dart';

class ImagepickerEg extends StatefulWidget {
  const ImagepickerEg({super.key});

  @override
  State<ImagepickerEg> createState() => _ImagepickerEgState();
}

class _ImagepickerEgState extends State<ImagepickerEg> {
  File? image;
  Future<void> showimagepickerdialogeEx() async {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("choose an option"),
            content: Text("pick an image from galary or new photo"),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    pickimage(ImageSource.gallery);
                  },
                  child: Text("gallary")),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    pickimage(ImageSource.camera);
                  },
                  child: Text("Camara"))
            ],
          );
        });
  }

  Future<void> pickimage(ImageSource sourse) async {
    final pickedfile = await ImagePicker().pickImage(source: sourse);
    setState(() {
      if (pickedfile != null) {
        image = File(pickedfile.path);
      } else {
        print("no image selected");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("image picker example"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            image==null?Text("no image selected"):Image.file(image!),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: showimagepickerdialogeEx

            , child: Text("pick image"))
          ],
        ),
      ),
    );
  }
}
