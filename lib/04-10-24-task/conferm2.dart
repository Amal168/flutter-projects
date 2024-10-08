import 'package:flutter/material.dart';

class Conferm2 extends StatefulWidget {
  final DateTime? date;
  final TimeOfDay? time;
  const Conferm2({super.key,required this.date,required this.time});

  @override
  State<Conferm2> createState() => _Conferm2State();
}

class _Conferm2State extends State<Conferm2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Confirmation Page"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('"your seat is booked on ${widget.date!.day}/${widget.date!.month}/${widget.date!.year},${widget.time!.hour}:${widget.time!.minute}"')],
        ),
      ),
    );
  }
}
