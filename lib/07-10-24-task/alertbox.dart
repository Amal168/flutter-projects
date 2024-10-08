import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Imagepicker extends StatefulWidget {
  const Imagepicker({super.key});

  @override
  State<Imagepicker> createState() => _ImagepickerState();
}

class _ImagepickerState extends State<Imagepicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () => alertbox(context), child: Text("alert")),
      ),
    );
  }
}

void alertbox(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("warning"),
          content: Text("do you want to conyinue"),
          actions: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("ok")));
                },
                child: Text("cancel")),
            SizedBox(
              width: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  Fluttertoast.showToast(
                    msg: "ok",
                    toastLength: Toast.LENGTH_LONG,
                    backgroundColor: Colors.green,
                    textColor: Colors.black,
                    gravity: ToastGravity.NONE
                  );
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("thank you")));
                      
                },
                child: Text("ok"))
          ],
        );
      });
}
