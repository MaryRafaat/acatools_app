import 'package:acatools/data/auth/app_authentication.dart';
import 'package:acatools/widgets/custom_eveated_button.dart';
import 'package:flutter/material.dart';

class AwaitVerification extends StatefulWidget {
  @override
  State<AwaitVerification> createState() => _AwaitVerificationState();
}

class _AwaitVerificationState extends State<AwaitVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Please verify your email to continue'),
            const SizedBox(height: 15),
            Column(
              children: [
                customElevatedButton(
                  text: 'Resend Verification Email',
                  onPressed: () {
                    AppAuthentication.verifyEmail();
                  },
                ),
                SizedBox(width: 10),
                customElevatedButton(text: 'Check Verification', onPressed: () {
                  AppAuthentication.checkEmailVerification(context);
                }),
              ],
            ),
          ],
        ),
      ),
    );      
  }
}