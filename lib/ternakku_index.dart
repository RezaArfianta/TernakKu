import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ternakku/module/homepage/home_page.dart';
import 'package:ternakku/module/profile/profile_page.dart';

import 'global/colors.dart';
import 'module/homepage/alt_home_page.dart';

class TernakKuIndex extends StatefulWidget {
  const TernakKuIndex({super.key});

  @override
  State<TernakKuIndex> createState() => _TernakKuIndexState();
}

class _TernakKuIndexState extends State<TernakKuIndex> {
  int selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    HomePage(),
    HomePage(),
    ProfilePage(),
  ];

  void onTappedBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(child: _widgetOptions.elementAt(selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Warna.primaryGreen,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: selectedIndex,
        onTap: onTappedBar,
      ),
    );
  }
}
