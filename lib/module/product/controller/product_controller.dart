import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ternakku/api_url.dart';

class ProductController extends GetxController {
  final box = GetStorage();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  void AddToCart(String product_id) async {
    try {
      var response = await Dio().post(ApirUrl.ApiUrl + '/carts', data: {
        "user_id": box.read('user_id'),
        "product_id": product_id,
        "quantity": '1'
      });
    } catch (e) {
      print('Tampil alert gagal');
    }
  }
}
