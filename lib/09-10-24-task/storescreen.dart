import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NameStorageScreen extends StatefulWidget {
  const NameStorageScreen({super.key});

  @override
  _NameStorageScreenState createState() => _NameStorageScreenState();
}

class _NameStorageScreenState extends State<NameStorageScreen> {
  final TextEditingController _nameController = TextEditingController();
  String? _savedcolor="Red";

  @override
  void initState() {
    super.initState();
    _loadSavedName();
  }

  // Load the saved name from SharedPreferences
  Future<void> _loadSavedName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _savedcolor = prefs.getString('name');
    });
  }

  // Save the name to SharedPreferences
  Future<void> _saveName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', _nameController.text);
    _loadSavedName(); // Refresh the saved name
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Shared Preferences Example')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Enter your name'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _saveName,
              child: const Text('Save Name'),
            ),
            const SizedBox(height: 20),
            if (_savedcolor != null) 
              Text('Saved Name: $_savedcolor', style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}