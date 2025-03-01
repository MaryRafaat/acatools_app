import 'package:flutter/material.dart';
import '../widgets/bottom_nav_bar.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Favorites')),
      body: const Center(child: Text('Favorite Items')),
      bottomNavigationBar: const BottomNavBar(currentIndex: 0),
    );
  }
}
