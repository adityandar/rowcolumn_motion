import 'package:flutter/material.dart';
import 'package:rowcolumn/home_page.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              ButtonTile(
                title: "Food",
                icon: Icons.lunch_dining,
              ),
              Tab(icon: Icon(Icons.event_seat), text: "table"),
              Tab(icon: Icon(Icons.credit_card), text: "Payment"),
              Tab(icon: Icon(Icons.home), text: "Home"),
            ],
          ),
          title: const Text('Belajar Flutternya Motion'),
        ),
        body: SafeArea(
          child: TabBarView(
            children: [
              HomePage(),
              Icon(Icons.event_seat),
              Icon(Icons.credit_card),
              Icon(Icons.home),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonTile extends StatelessWidget {
  final String title;
  final IconData icon;

  ButtonTile({
    this.title,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(48),
              border: Border.all(
                color: Color(0xFFF4F0F0),
              ),
            ),
            child: Icon(
              icon,
              color: Colors.green,
            ),
          ),
          SizedBox(height: 4),
          Text(
            title,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
