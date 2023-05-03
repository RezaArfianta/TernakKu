import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supercharged/supercharged.dart';
import 'package:ternakku/api_url.dart';

class AllTabController extends GetxController {
  RxList products = [].obs;

  @override
  void onInit() {
    getAllData();
    super.onInit();
  }

  void getAllData() async {
    try {
      var response = await Dio().get(ApirUrl.ApiUrl + '/api/pruducts');
      if (response.data['data'].length >= 1) {
        products.value = response.data['data'];
        // for (var i = 0; i < response.data['data'].length; i++) {
        //   products.value.add(response.data['data'][i]);
        // }
        print(products);
      }
    } catch (e) {
      print(e);
    }
  }
}
