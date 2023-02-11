import 'package:flutter/material.dart';
import 'package:ternakku/module/product/product_page.dart';

class AllTabCard extends StatelessWidget {
  const AllTabCard({super.key, required this.product});
  final dynamic product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProductPage(
                      product: product,
                    )));
      },
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: Image(
                width: MediaQuery.of(context).size.width * 0.4,
                image: NetworkImage('https://picsum.photos/200/300'),
              ),
            ),
            Text(product[0]['product_name'].toString())
          ],
        ),
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
