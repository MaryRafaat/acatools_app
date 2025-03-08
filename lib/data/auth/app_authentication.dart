import 'package:acatools_app/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:acatools_app/screens/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AppAuthentication {
  static Future home(
      {required String Email, required String ID, required context}) async {
    try {
      final credential = await FirebaseAuth.instance(
        email: Email,
        password: ID,
      );
      // ignore: nullable_type_in_catch_clause
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          duration: const Duration(seconds: 5),
          backgroundColor: Colors.red,
          content: Text(
            '${e.message}',
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      );
      // if (e.code == 'weak-password') {
      // print('The password provided is too weak.');
      //} else if (e.code == 'email-already-in-use') {
      // print('The account already exists for that email.');
      // }
    } catch (e) {
      print(e);
    }
  }

  ////////////////////////////////////////////////////////
  static Future signOut(BuildContext context) async {
    var Get;
    final auth = Get.find<FirebaseAuth>();
    await auth.signOut();

    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => LoginScreen(),
      ),
      (route) => false,
    );
  }
}

class FirebaseAuth {
  static instance({required String email, required String password}) {}
}
