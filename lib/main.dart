import 'package:flutter/material.dart';
import 'package:nepe_app/utils/constants.dart';
import 'package:nepe_app/screens/Home/HomeScreen.dart';
import 'package:nepe_app/screens/Navigation/BottomNav.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      title: 'Nepse Simulation',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BottomNav(),
    );
  }
}
