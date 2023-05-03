import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:panara_dialogs/panara_dialogs.dart';
import 'package:ternakku/module/cart/index_cart.dart';
import 'global/colors.dart';
import 'module/homepage/alt_home_page.dart';
import 'module/profile/profile_page.dart';
import 'package:url_launcher/url_launcher.dart';

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
    CartIndex(),
    ProfilePage(),
  ];

  void onTappedBar(int index) async {
    if (index == 1) {
      return PanaraConfirmDialog.show(context,
          title: "Ingin chat admin?",
          message: "Kamu akan dialihkan ke Whatsapp admin Ternakku",
          confirmButtonText: "Confirm",
          cancelButtonText: "Cancel", onTapCancel: () {
        Get.back();
      }, onTapConfirm: () async {
        final Uri _url = Uri.parse(
            'mailto:smith@example.org?subject=News&body=New%20plugin');
        if (!await launchUrl(_url)) {
          throw Exception('Could not launch $_url');
        }
      }, panaraDialogType: PanaraDialogType.success);
    }
    print(index);
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
