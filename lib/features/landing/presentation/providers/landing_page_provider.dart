
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_app/core/services/user_singelton.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';


//! services yap
class LandingPageProvider extends ChangeNotifier{
  final GoogleSignIn googleSignIn = GoogleSignIn();
  GoogleSignInAccount? _user;

  GoogleSignInAccount get user => _user!;

  void googleLogin() async {
    final googleUser = await googleSignIn.signIn();
    if(googleUser == null) return;
    _user = googleUser;

    final googleAuth = await googleUser.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    var user = await FirebaseAuth.instance.signInWithCredential(credential);

    ActiveUserSingelton().userUid = user.user?.uid;
  }
}