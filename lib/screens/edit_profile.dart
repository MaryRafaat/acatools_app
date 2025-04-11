import 'package:acatools/data/auth/app_authentication.dart';
import 'package:acatools/screens/profile.dart';
import 'package:acatools/widgets/custom_text_form_field.dart';
import 'package:acatools/widgets/custom_eveated_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../widgets/bottom_nav_bar.dart';

class EditProfile extends StatefulWidget {
  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final _nameController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
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
                              _nameController.text = FirebaseAuth
                                  .instance.currentUser!.displayName!;
                              return null;
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 15),
                        customElevatedButton(
                          onPressed: () async {
                            if (formKey.currentState!.validate()) {
                              AppAuthentication.updateDisplayName(
                                  _nameController.text);
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProfileScreen()),
                              );
                            }
                          },
                          text: 'Save',
                        ),
                        customElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProfileScreen()));
                            },
                            text: 'Cancel'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: 3,
        onTap: (index) {
          // Handle the tap event
        },
      ),
    );
  }
}
