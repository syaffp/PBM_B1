import 'package:firebase_auth/firebase_auth.dart';
import 'package:pbm_b1/welcome_screenpage/splash.dart';

import '../welcome_screenpage/login.dart';

class AuthServices {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  // static Future<User?> signInA() async {
  //   // ignore: unused_local_variable
  //   try {
  //     UserCredential result = await _auth.signInAnonymously();
  //     // mengembalikan firebase user
  //     User? user = result.user;

  //     return user;
  //   } catch (e) {
  //     print(e.toString());

  //     return null;
  //   }
  // }

  static Future<User?> signUp(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;

      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  static Future<User?> signIn(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      print("telah login");
      return user;
    } catch (e) {
      print("gagal login");
      print(e.toString());
      return null;
    }
  }

  // ignore: non_constant_identifier_names
  // anonymous method tapi tidak mengembalikan apapun
  static Future<Splash> signOut() async {
    await FirebaseAuth.instance.signOut();
    print("telah logout");
    return new Splash();
  }

  // userStream adalah getter
  static Stream<User?> get userStream => _auth.authStateChanges();
}