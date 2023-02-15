import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ternakku/api_url.dart';
import 'package:ternakku/module/category/widgets/alltab_card.dart';

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
    try {
      var response = await Dio().get(ApirUrl.ApiUrl + '/products');
      setState(() {
        products = response.data;
      });
    } catch (e) {
      print(e);
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
            itemCount: products == [] ? 0 : products.length,
            itemBuilder: (context, index) {
              return AllTabCard(
                product: [products[index]],
              );
            },
          ),
        ),
      ),
    );
  }
}
