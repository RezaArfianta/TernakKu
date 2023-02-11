import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ternakku/api_url.dart';
import 'package:ternakku/routes/routes_name.dart';

class ValidateController extends GetxController {
  final box = GetStorage();
  @override
  void onInit() {
    ValidateAccount();
    super.onInit();
  }

  void ValidateAccount() async {
    var token = (box.read('access_token'));
    try {
      var response = await Dio().get(ApirUrl.ApiUrl + '/auth/protected',
          options: Options(headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer " + token,
          }));
      Get.offAllNamed(RoutesName.homePage);
    } catch (e) {
      box.remove('access_token');
      Get.offAllNamed(RoutesName.loginPage);
    }
  }
}
