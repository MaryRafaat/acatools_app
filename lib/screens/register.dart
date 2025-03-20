import 'package:acatools/data/auth/app_authentication.dart';
import 'package:acatools/data/validation/validator.dart';
import 'package:acatools/screens/login.dart';
import 'package:acatools/widgets/custom_text_form_field.dart';
import 'package:acatools/widgets/custom_eveated_button.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<RegisterScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();
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
                Text: 'Name',
                controller: _nameController,
                hintText: 'Name',
                label: 'Name',
                keyboardType: TextInputType.name,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Name is required';
                  }
                  return null;
                }),
            const SizedBox(height: 15),
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
                    AppAuthentication.registerUser(
                        emailAddress: _emailController.text,
                        password: _passwordController.text,
                        displayName: _nameController.text,
                        context: context);
                  }
                },
                text: 'Register'),
            const SizedBox(
              height: 15,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: const Text('Login'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
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
