import 'package:acatools_app/widgets/custom_eveated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:acatools_app/data/auth/app_authentication.dart';


class HomeNavBar extends StatefulWidget {
  const HomeNavBar({super.key});

  @override
  State<HomeNavBar> createState() => _HomeNavBarState();
}

class _HomeNavBarState extends State<HomeNavBar> {
  List<Widget> screens = <Widget>[
    
    const Scaffold(
      body: Center(
        child: Text('Profile screen'),
      ),
    ),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.production_quantity_limits), label: 'product'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
          ]),
      drawer: Drawer(
        child: Column(
          children: [
            Spacer(),
            customElevatedButton(
              text: 'sign out',
              onPressed: () {
                AppAuthentication.signOut(context);
              },
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
