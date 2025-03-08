import 'package:acatools_app/data/auth/app_authentication.dart';
import 'package:acatools_app/widgets/custom_eveated_button.dart';
import 'package:acatools_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:acatools_app/screens/home_screen.dart';

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
              controller:
                  _emailController, //at5zn hna al email aly al user ktbo
              hintText: 'University Email',
              label: ' Email',
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Email is required';
                }
                return null;
              },
            ),
            const SizedBox(height: 15),
            CustomTextFormField(
              Text: 'ID',
              hintText: 'University ID ',
              label: 'ID',
              keyboardType: TextInputType.number,
              controller:
                  _passwordController, //at5zn hna al id aly al user ktbo
              validator: (value) {
                if (value!.isEmpty) {
                  return 'ID is required';
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
                    // al code aly hytnfz ba3d ma user das submit
                    AppAuthentication.home(
                        Email: _emailController!.text,
                        ID: _passwordController!.text,
                        context: null);
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                    const Text('Login');
                  }
                },
                text: 'Login'),
            const SizedBox(
              height: 15,
            ),
            TextButton(
              onPressed: () {
                // Handle registration
              },
              child: const Text('Register'),
            ),
            TextButton(
              onPressed: () {
                // Handle forgot password - implement SMS logic
              },
              child: const Text('Forgot Password?'),
            ),
          ],
        ),
      ),
    ));
  }
}
