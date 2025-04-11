import 'package:acatools/data/auth/app_authentication.dart';
import 'package:acatools/data/validation/validator.dart';
import 'package:acatools/screens/forgot_password.dart';
import 'package:acatools/widgets/custom_text_form_field.dart';
import 'package:acatools/widgets/custom_eveated_button.dart';
import 'package:acatools/screens/register.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(5.0),
      child: Form(
        key: formKey,
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
            const SizedBox(height: 15),
            CustomTextFormField(
              Text: 'Password',
              hintText: 'Password',
              label: 'Password',
              keyboardType: TextInputType.visiblePassword,
              controller: _passwordController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Password is required';
                } else if (value.length < 8) {
                  return 'Password must be at least 8 characters';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 15,
            ),
            customElevatedButton(
                onPressed: () async {
                  if (formKey.currentState!.validate()) {
                    //al code aly hytnfz ba3d ma user das submit
                    AppAuthentication.loginUser(
                      emailAddress: _emailController.text,
                      password: _passwordController.text,
                      context: context,
                    );
                  }
                },
                text: 'Login'),
            const SizedBox(
              height: 15,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterScreen()),
                );
              },
              child: const Text('Register'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => ForgotPassword()),
                );
              },
              child: const Text('Forgot Password?'),
            ),
          ],
        ),
      ),
    ));
  }
}
