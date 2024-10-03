import 'package:flutter/material.dart';
import 'package:flutterproject/04-10-24-task/conferm2.dart';

class Booking2 extends StatefulWidget {
  const Booking2({super.key});

  @override
  State<Booking2> createState() => _Booking2State();
}

class _Booking2State extends State<Booking2> {
  DateTime? setdate;
  TimeOfDay? settime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Booking Page"),
        backgroundColor: Colors.yellowAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                setdate != null
                    ? "${setdate!.day}-${setdate!.month}-${setdate!.year}"
                    : "No Date Chossen",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent),
                onPressed: () async {
                  final DateTime? pickedDate = await showDatePicker(
                      context: context,
                      currentDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2030));
                  if (pickedDate != null && pickedDate != setdate) {
                    setState(() {
                      setdate = pickedDate;
                    });
                  }
                },
                child: Text(
                  "change date",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 50,
            ),
            Text(
              settime != null
                  ? "${settime!.hour}:${settime!.minute}"
                  : "Time not changed",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent),
                onPressed: () async {
                  final TimeOfDay? pickedtime = await showTimePicker(
                      context: context, initialTime: TimeOfDay.now());
                  if (pickedtime != null) {
                    setState(() {
                      settime = pickedtime;
                    });
                  }
                },
                child: Text(
                  "Change Time",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Conferm2()));
                  
                },
                child: Text("Confirm Booking"))
          ],
        ),
      ),
    );
  }
}
