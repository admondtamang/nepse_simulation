import 'package:flutter/material.dart';

class WatchlistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Watchlist",
          style: TextStyle(
              color: Colors.deepPurpleAccent,
              fontSize: 50,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
