import 'package:flutter/material.dart';
import 'package:flutterproject/09-10-24-task/profile1.dart';
import 'package:flutterproject/10-10-24-task/about.dart';
import 'package:flutterproject/10-10-24-task/homeScreen1.dart';
import 'package:flutterproject/10-10-24-task/settings.dart';
import 'package:flutterproject/26_09_24_task/Home.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Home Page"));
  }
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Search Page"));
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Profile Page"));
  }
}

class Tabsection2 extends StatefulWidget {
  const Tabsection2({super.key});

  @override
  State<Tabsection2> createState() => _Tabsection2State();
}

class _Tabsection2State extends State<Tabsection2>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Home(),
    SearchPage(),
    Profile1(),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tab Section"),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: "Tab 1"),
            Tab(text: "Tab 2"),
            Tab(text: "Tab 3"),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.red,
        onTap: _onItemTapped,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("Tab Section")),
            ListTile(
              title: Text("Home screen"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => Homescreen1()),
                );
              },
            ),
            ListTile(
              title: Text("Settings"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => Settings()),
                );
              },
            ),
            ListTile(
              title: Text("About"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => About()),
                );
              },
            ),
          ],
        ),
      ),
      body: IndexedStack(
        index: _selectedIndex,

        children: _pages,
        
      ),
    );
  }
}
