import 'package:flutter/material.dart';
import 'package:rowcolumn/home_page.dart';

class BottomBarPage extends StatefulWidget {
  @override
  _BottomBarPageState createState() => _BottomBarPageState();
}

class _BottomBarPageState extends State<BottomBarPage> {
  int _currentIndex = 0;
  List<Widget> children = [
    HomePage(),
    Center(
      child: Text(
        "Ini adalah pembayaran",
      ),
    ),
    Center(
      child: Text(
        "Ini adalah profile",
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: "",
          ),
        ],
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.green,
        onTap: (val) {
          setState(() {
            _currentIndex = val;
          });
        },
      ),
    );
  }
}
