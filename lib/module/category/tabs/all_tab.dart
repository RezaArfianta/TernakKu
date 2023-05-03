import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ternakku/api_url.dart';
import 'package:ternakku/global/colors.dart';
import 'package:ternakku/module/category/widgets/alltab_card.dart';
import 'package:ternakku/module/product/product_page.dart';

class AllTab extends StatefulWidget {
  AllTab({super.key});

  @override
  State<AllTab> createState() => _AllTabState();
}

class _AllTabState extends State<AllTab> {
  dynamic products = [];

  @override
  void initState() {
    getAllData();
    super.initState();
  }

  void getAllData() async {
    var response = await Dio().get(ApirUrl.ApiUrl + '/api/products');
    if (response.data['data'].length >= 1) {
      setState(() {
        products = response.data['data'];
      });
    }
  }

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
            itemCount: products.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ProductPage(product: products[index])));
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(blurRadius: 3)],
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(
                        width: MediaQuery.of(context).size.width * 0.3,
                        image: NetworkImage(
                            ApirUrl.ApiImg + products[index]['product_img']),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        products.length >= 1
                            ? products[index]['product_name']
                            : 'index',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        products.length >= 1
                            ? 'Rp. ' + products[index]['final_price']
                            : 'Rp. ' + 'index',
                        style:
                            TextStyle(fontSize: 20, color: Warna.primaryGreen),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
