import 'package:flutter/material.dart';
import 'package:ternakku/global/colors.dart';
import 'package:ternakku/module/category/widgets/alltab_card.dart';

class AllTab extends StatelessWidget {
  const AllTab({super.key});

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
              return AllTabCard();
            },
          ),
        ),
      ),
    );
  }
}
