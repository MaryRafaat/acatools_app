import 'package:flutter/material.dart';
import '../widgets/bottom_nav_bar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cart')),
      body: const Center(child: Text('Shopping Cart')),
      bottomNavigationBar: BottomNavBar(
        currentIndex: 2,
        onTap: (index) {
          // Handle tap
        },
      ),
    );
  }
}
