import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_app/core/services/user_singelton.dart';


class EmailAuthService{
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signIn(String email,String password) async{
    var user = await _auth.signInWithEmailAndPassword(email: email, password: password);
    ActiveUserSingelton().userUid = user.user?.uid; 
    return user.user;
  }

  Future<User?> signUp(String email,String password) async{
    var user = await _auth.createUserWithEmailAndPassword(email: email, password: password);
    ActiveUserSingelton().userUid = user.user?.uid; 
    return user.user;
  }
}