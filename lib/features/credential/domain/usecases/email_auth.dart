import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_app/core/services/user_singelton.dart';

class EmailAuthService {
  //! data repository katmanlarını yap
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signIn(String email, String password) async {
    UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    ActiveUserSingleton().userUid = userCredential.user?.uid;
    return userCredential.user;
  }

  Future<User?> signUp(String email, String password) async {
    UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
    ActiveUserSingleton().userUid = userCredential.user?.uid;
    return userCredential.user;
  }
}
