import 'package:flutter/material.dart';
import 'package:ternakku/global/colors.dart';

class ObatTab extends StatelessWidget {
  const ObatTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Container(
        height: 150,
        width: 150,
        child: Container(
          color: Colors.green,
        ),
      ),
    ));
  }
}
