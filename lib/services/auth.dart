import 'package:chatting/modal/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Users _userFromFireBase(User user) {
    return user != null ? Users(userId: user.uid) : null;
  }

  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential authResult = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      final User user = authResult.user;
      return _userFromFireBase(user);
    } catch (e) {
      print(e);
    }
  }
}
