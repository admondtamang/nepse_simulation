import 'package:flutter/material.dart';

class PortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Portfolio",
          style: TextStyle(
              color: Colors.deepPurpleAccent,
              fontSize: 50,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
