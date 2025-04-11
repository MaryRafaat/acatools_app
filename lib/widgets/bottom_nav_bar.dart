import 'package:acatools/screens/card.dart';
import 'package:acatools/screens/favorite.dart';
import 'package:acatools/screens/home_screen.dart';
import 'package:acatools/screens/profile.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  const BottomNavBar(
      {super.key,
      required this.currentIndex,
      required void Function(int index) onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) {
        switch (index) {
          case 0:
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => const HomeScreen()));
          case 1:
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => const FavoritesScreen()));
          case 2:
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => const CartScreen()));
          case 3:
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => ProfileScreen()));
        }
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Shop'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorites'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
      ],
    );
  }
}
