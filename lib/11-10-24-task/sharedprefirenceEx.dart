import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Sharedprefirenceex extends StatefulWidget {
  const Sharedprefirenceex({super.key});

  @override
  State<Sharedprefirenceex> createState() => _SharedprefirenceexState();
}

class _SharedprefirenceexState extends State<Sharedprefirenceex> {
  String? _dropdrwnvalue;
  String? _showvalue;

  @override
  void initState() {
    super.initState();
    _loadcounter();
  }

  Future<void> _loadcounter() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      _showvalue = pref.getString('string');
    });
  }

  Future<void> _savecolor() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('string', _dropdrwnvalue!);
  }

  Future<void> _showColor() async {
    if (_dropdrwnvalue != null) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      setState(() {
        _showvalue = prefs.getString('string');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shared preferance"),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<String>(
                value: _dropdrwnvalue,
                items: const [
                  DropdownMenuItem<String>(value: 'Red', child: Text("Red")),
                  DropdownMenuItem<String>(
                      value: 'Green', child: Text("Green")),
                  DropdownMenuItem<String>(value: 'Blue', child: Text("Blue")),
                  DropdownMenuItem<String>(
                      value: 'Yellow', child: Text("Yellow")),
                ],
                onChanged: (String? newValue) async {
                  setState(() {
                    _dropdrwnvalue = newValue!;
                  });
                }),
            ElevatedButton(
              onPressed: _savecolor,
              child: const Text('Save color'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _showColor,
              child: const Text('Saved color'),
            ),
            const SizedBox(height: 20),
            _showvalue != null 
                ? Text('Saved color: $_showvalue',
                    style: const TextStyle(fontSize: 20))
                : const SizedBox(),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                setState(() {
                  _showvalue = 'No color';
                });
                await prefs.setString('string', _showvalue!);
              },
              child: const Text('reset color'),
            ),
          ],
        ),
      ),
    );
  }
}
