import 'package:flutter/material.dart';
import 'index.dart';

class Spaarkd extends StatefulWidget {
  const Spaarkd({super.key});

  @override
  State<Spaarkd> createState() => _SpaarkdState();
}

class _SpaarkdState extends State<Spaarkd> {

  int _selectedIndex = 0;

  void handleNavBarChange (int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    ListPage(),
    WidgetPage(),
    GridPage(),
    PageViewPage(),
    LoginPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'SPAARKD',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: Icon(
          Icons.auto_awesome,
        ),
        actions: [
          Icon(Icons.person),
          SizedBox(width: 10,)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: handleNavBarChange,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
        selectedItemColor: Colors.blueAccent.shade700,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.south_america), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.edit_square), label: 'Studio'),
          BottomNavigationBarItem(icon: Icon(Icons.auto_awesome), label: 'Store'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz_outlined), label: 'More'),
        ],
      ),
    );
  }
}
