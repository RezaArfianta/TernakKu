import 'package:flutter/material.dart';
import 'package:ternakku/global/colors.dart';

class AllTab extends StatelessWidget {
  const AllTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Container(
        height: 150,
        width: 150,
        child: Container(
          color: Warna.secondaryGreen,
        ),
      ),
    ));
  }
}
