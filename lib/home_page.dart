import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi, Michael',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        Text(
                          'Get your favorite food here!',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Icon(
                      Icons.shopping_cart,
                      color: Color(0xFFB3B3B3),
                      size: 24,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              Container(
                width: 320,
                height: 160,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 7),
                      blurRadius: 10,
                      color: Color(0xFF000000),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              Container(
                height: 160,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 20),
                    Container(
                      width: 320,
                      height: 160,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(6),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 5),
                              blurRadius: 10,
                              color: Color(0xFF000000),
                            )
                          ]),
                    ),
                    SizedBox(width: 12),
                    Container(
                      width: 320,
                      height: 160,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    SizedBox(width: 12),
                    Container(
                      width: 320,
                      height: 160,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(width: 8),
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 8),
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ButtonTile(
                    title: "Food",
                    icon: Icons.lunch_dining,
                  ),
                  ButtonTile(
                    title: "Table",
                    icon: Icons.event_seat,
                  ),
                  ButtonTile(
                    title: "Payment",
                    icon: Icons.credit_card,
                  ),
                  ButtonTile(
                    title: "More",
                    icon: Icons.more_horiz,
                  ),
                ],
              ),
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
