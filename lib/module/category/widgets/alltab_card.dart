import 'package:flutter/material.dart';

class AllTabCard extends StatelessWidget {
  const AllTabCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
  }
}
