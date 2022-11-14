import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  FirebaseAuth auth = FirebaseAuth.instance;

  //Sign Up with Firebase
  Future<UserCredential> signUp({String? email, String? password}) async {
    try {
      final user = auth.createUserWithEmailAndPassword(
          email: email!, password: password!);
      return user;
    } on FirebaseAuthException {
      throw "Firebase Authentication Failed";
    } on SocketException {
      throw "You're not connected to the internet";
    } catch (e) {
      throw e.toString();
    }
  }

  //Sign In with Firebase
  Future<UserCredential> signIn({String? email, String? password}) async {
    try {
      final user =
          auth.signInWithEmailAndPassword(email: email!, password: password!);
      return user;
    } on FirebaseAuthException {
      throw "Firebase Authentication Failed";
    } on SocketException {
      throw "You're not connected to the internet";
    } catch (e) {
      throw e.toString();
    }
  }
}
