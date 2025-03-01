import 'package:flutter/material.dart';
import '../widgets/bottom_nav_bar.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('profile')),
      body: const Center(child: Text('Settings & profile')),
      bottomNavigationBar: const BottomNavBar(currentIndex: 3),
    );
  }
}
