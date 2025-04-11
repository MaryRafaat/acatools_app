import 'package:acatools/screens/login.dart';
import 'package:acatools/screens/profile.dart';
import 'package:acatools/screens/verify_email.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:acatools/screens/home_screen.dart';

class AppAuthentication {
  static Future loginUser(
      {required String emailAddress,
      required String password,
      required context}) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );

      if (FirebaseAuth.instance.currentUser == null) {
        throw FirebaseAuthException(code: 'user-not-found');
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      }
    } on FirebaseAuthException catch (e) {
      String message = ' ';
      if (e.code == 'user-not-found') {
        message = 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        message = 'Wrong password provided for that user.';
      } else if (e.code == 'invalid-credential') {
        message = 'Invalid credentials provided.';
      }

      Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.black54,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    } catch (e) {
      print(e);
    }
  }

  static Future registerUser(
      {required String emailAddress,
      required String password,
      required String displayName,
      required context}) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );

      if (FirebaseAuth.instance.currentUser == null) {
        throw FirebaseAuthException(code: 'user-not-found');
      } else if (FirebaseAuth.instance.currentUser!.emailVerified == false) {
        FirebaseAuth.instance.currentUser!.updateDisplayName(displayName);
        AppAuthentication.verifyEmail();
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => AwaitVerification()),
        );
      } else {
        FirebaseAuth.instance.currentUser!.updateDisplayName(displayName);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => ProfileScreen()),
        );
      }
    } on FirebaseAuthException catch (e) {
      String message = '';
      if (e.code == 'weak-password') {
        message = 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        message = 'The account already exists for that email.';
      }

      Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.black54,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    } catch (e) {
      print(e);
    }
  }

  static Future signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  static Future<void> verifyEmail() async {
    await FirebaseAuth.instance.currentUser!.sendEmailVerification();
  }

  static Future<void> checkEmailVerification(context) async {
    if (FirebaseAuth.instance.currentUser!.emailVerified) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ProfileScreen()),
      );
    }
  }

  static Future<void> resetPassword(String email, context) async {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  static Future<String> updateDisplayName(String displayName) async {
    await FirebaseAuth.instance.currentUser!.updateDisplayName(displayName);
    return 'Success';
  }
}
