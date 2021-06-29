import 'package:flutter/material.dart';

class MoversPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Movers",
          style: TextStyle(
              color: Colors.deepPurpleAccent,
              fontSize: 50,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
