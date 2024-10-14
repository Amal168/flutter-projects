import 'package:flutter/material.dart';

class tadbaranddrawerEx extends StatefulWidget {
  const tadbaranddrawerEx({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<tadbaranddrawerEx>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

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

  void _onDrawerItemTapped(String item) {
    Navigator.pop(context);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        margin: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        behavior: SnackBarBehavior.floating,
        content: Text(
          'Selected: $item',
          textAlign: TextAlign.center,
        )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer and TabBar Example'),
        bottom: TabBar(
          isScrollable: true,
          controller: _tabController,
          tabs: const [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(text: 'Tab 2'),
            Tab(text: 'Tab 3'),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
                
              ),
              child: Text('Drawer Header',
                  style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () => _onDrawerItemTapped('Item 1'),
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () => _onDrawerItemTapped('Item 2'),
            ),
            ListTile(
              title: const Text('Item 3'),
              onTap: () => _onDrawerItemTapped('Item 3'),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Center(
              child: Text('Content for Tab 1', style: TextStyle(fontSize: 20))),
          Center(
              child: Text('Content for Tab 2', style: TextStyle(fontSize: 20))),
          Center(
              child: Text('Content for Tab 3', style: TextStyle(fontSize: 20))),
        ],
      ),
    );
  }
}
