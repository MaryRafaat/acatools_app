import 'package:acatools/data/auth/app_authentication.dart';
import 'package:acatools/screens/edit_profile.dart';
import 'package:acatools/screens/login.dart';
import 'package:acatools/widgets/custom_eveated_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../widgets/bottom_nav_bar.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var userData = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(() {
              if (userData!.displayName == null) {
                return 'No display name';
              } else {
                return 'Name: ${userData!.displayName}';
              }
            }()),
            Text('Email: ${userData!.email!}'),

            Text(() {
              if (userData!.emailVerified) {
                return 'Email verified';
              } else {
                return 'Email not verified';
              }
            }()),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customElevatedButton(
                  text: 'Edit',
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => EditProfile()));
                  },
                ),
                SizedBox(width: 10),
                customElevatedButton(
                  text: 'Sign Out',
                  onPressed: () {
                    AppAuthentication.signOut();
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: 3,
        onTap: (index) {
          // Handle navigation tap
        },
      ),
    );
  }
}
