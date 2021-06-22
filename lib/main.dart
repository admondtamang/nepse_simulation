import 'package:flutter/material.dart';
import 'package:nepe_app/provider/google_sign_in.dart';
import 'package:nepe_app/screens/Login/LoginPage.dart';
import 'package:nepe_app/screens/Login/login_home.dart';
import 'package:nepe_app/utils/constants.dart';
import 'package:nepe_app/screens/Home/HomeScreen.dart';
import 'package:nepe_app/screens/Navigation/BottomNav.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application .
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     // debugShowCheckedModeBanner: false,
  //     title: 'Nepse Simulation',
  //     theme: ThemeData(
  //       textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
  //       visualDensity: VisualDensity.adaptivePlatformDensity,
  //     ),
  //     home: LoginPage(),
  //   );
  // }

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: MaterialApp(
          // debugShowCheckedModeBanner: false,
          title: 'Nepse Simulation',
          theme: ThemeData(
            textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: LoginHome(),
        ),
      );
}
