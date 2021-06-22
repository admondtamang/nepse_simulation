import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInProvider extends ChangeNotifier {
  final googleSignIn = GoogleSignIn();

  GoogleSignInAccount? _user;

  GoogleSignInAccount get user => _user!;

// fires the google account selection box
  Future googleLogin() async {
    final googleUser = await googleSignIn.signIn();
    //  making sure if the user have selected an account
    if (googleUser == null) return;
    _user = googleUser;
    // calling the google user thet is selected
    final googleAuth = await googleUser.authentication;
    // assigning the credentials gathered to google auth oprovider
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    // using the credentials to signin into firebase auth
    await FirebaseAuth.instance.signInWithCredential(credential);
    // updating the UI
    notifyListeners();
  }
}
