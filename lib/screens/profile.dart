import 'package:flutter/material.dart';
import '../widgets/bottom_nav_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: const Center(child: Text('This is the Profile Screen')),
      bottomNavigationBar: BottomNavBar(
        currentIndex: 3,
        onTap: (index) {
          // Handle navigation tap
        },
      ),
    );
  }
}
