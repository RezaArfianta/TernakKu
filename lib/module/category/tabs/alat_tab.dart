import 'package:flutter/material.dart';
import 'package:ternakku/global/colors.dart';

class AlatTab extends StatelessWidget {
  const AlatTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 310,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            physics: ClampingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Warna.primaryGreen,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
