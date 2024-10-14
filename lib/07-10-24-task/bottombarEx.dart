import 'package:flutter/material.dart';

class BottomNavigationBarEg extends StatefulWidget {
  const BottomNavigationBarEg({super.key});

  @override
  _BottomNavigationBarEgState createState() => _BottomNavigationBarEgState();
}

class _BottomNavigationBarEgState extends State<BottomNavigationBarEg> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const Text('Home Screen',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    const Text('Search Screen',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
        const Text('visit Screen',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation Example'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.red,
        enableFeedback: true,
        onTap: _onItemTapped,
      ),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
    );
  }
}
