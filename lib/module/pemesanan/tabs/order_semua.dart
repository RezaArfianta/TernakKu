import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ternakku/api_url.dart';
import 'package:ternakku/global/colors.dart';
import 'package:ternakku/module/category/controller/all_controller.dart';
import 'package:ternakku/module/category/widgets/alltab_card.dart';

import '../widgets/order_card.dart';

class OrderSemua extends StatefulWidget {
  OrderSemua({super.key});

  @override
  State<OrderSemua> createState() => _OrderSemuaState();
}

class _OrderSemuaState extends State<OrderSemua> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: ((context, index) {
              return OrderCard();
            })),
      ),
    );
  }
}
