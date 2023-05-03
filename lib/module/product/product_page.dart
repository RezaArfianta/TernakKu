import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ternakku/api_url.dart';
import 'package:ternakku/global/colors.dart';
import 'package:ternakku/module/product/controller/product_controller.dart';

class ProductPage extends StatelessWidget {
  ProductPage({super.key, required this.product});
  final dynamic product;
  ProductController c = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Image(
                  width: MediaQuery.of(context).size.width,
                  image: NetworkImage(ApirUrl.ApiImg + product['product_img']),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product['product_name'].toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 24),
                      ),
                      Text(product['description'].toString()),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Rp ' + product['base_price'].toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Warna.primaryGreen),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              child: ElevatedButton(
                onPressed: () {
                  c.AddToCart(product['id'], context);
                },
                child: Text('Add To Cart'),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Buy Now',
                  style: TextStyle(color: Warna.primaryGreen),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
