import 'package:flutter/material.dart';
import 'package:ternakku/module/category/see_all_page.dart';

class SeeAllIndex extends StatefulWidget {
  const SeeAllIndex({super.key});

  @override
  State<SeeAllIndex> createState() => _SeeAllIndexState();
}

class _SeeAllIndexState extends State<SeeAllIndex> {
  PageController pageController = PageController();
  static const List<Widget> _widgetOptions = [
    SeeAllPage(),
  ];
  final List<String> _tabs = ['a', 'b', 'c', 'd'];
  int _selectedIndex = 0;

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: _onPageChanged,
        children: _widgetOptions,
      ),
    );
  }
}
