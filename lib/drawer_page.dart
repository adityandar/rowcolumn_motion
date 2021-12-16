import 'package:flutter/material.dart';
import 'package:rowcolumn/home_page.dart';

class DrawerPage extends StatefulWidget {
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
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
      appBar: AppBar(
        title: Text("Drawer Page"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text("Drawer Header"),
            ),
            ListTile(
              title: Text("Home"),
              onTap: () {
                setState(() {
                  _currentIndex = 0;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Payment"),
              onTap: () {
                setState(() {
                  _currentIndex = 1;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Profile"),
              onTap: () {
                setState(() {
                  _currentIndex = 2;
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: children.elementAt(_currentIndex),
    );
  }
}
