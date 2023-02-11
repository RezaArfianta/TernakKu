import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ternakku/api_url.dart';

class AllTabController extends GetxController {
  dynamic products = [];

  @override
  void onInit() {
    getAllData();
    super.onInit();
  }

  void getAllData() async {
    try {
      var response = await Dio().get(ApirUrl.ApiUrl + '/products');
      products = response.data;
      print(products);
    } catch (e) {
      print(e);
    }
  }
}
