import 'package:acatools/data/auth/app_authentication.dart';
import 'package:acatools/data/validation/validator.dart';
import 'package:acatools/screens/login.dart';
import 'package:acatools/widgets/custom_text_form_field.dart';
import 'package:acatools/widgets/custom_eveated_button.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _emailController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextFormField(
                Text: 'Email',
                controller: _emailController,
                hintText: 'University Email',
                label: ' Email',
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Email is required';
                  }
                  return Validator.validateEmail(_emailController);
                },
              ),
              SizedBox(height: 15),
              customElevatedButton(
                text: 'Reset Password',
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    AppAuthentication.resetPassword(_emailController.text, context);
                  }
                },
              ),
              SizedBox(height: 15), 
              customElevatedButton(
                text: 'Back to Login',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}