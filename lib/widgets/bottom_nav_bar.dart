import 'package:acatools_app/screens/card.dart';
import 'package:acatools_app/screens/favorite.dart';
import 'package:acatools_app/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:acatools_app/screens/shop.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  const BottomNavBar({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) {
        switch (index) {
          case 0:
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => const FavoritesScreen()));
            break;
          case 1:
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => const ShopScreen()));
            break;
          case 2:
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => const CartScreen()));
            break;
          case 3:
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => const ProfileScreen()));
            break;
        }
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorites'),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Shop'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
      ],
    );
  }
}
