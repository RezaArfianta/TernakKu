import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ternakku/api_url.dart';
import 'package:ternakku/routes/app_pages.dart';

class ValidateController extends GetxController {
  final box = GetStorage();
  @override
  void onInit() {
    ValidateAccount();
    super.onInit();
  }

  void ValidateAccount() async {
    try {
      var response = await Dio().get(ApirUrl.ApiUrl + '/api/validate/user');
      print(response.data);
      if (response.data['status'] == 'berhasil') {
        Get.offAllNamed(Routes.HOME_PAGE);
      } else {
        Get.offAllNamed(Routes.LOGIN_PAGE);
      }
    } catch (e) {
      Get.offAllNamed(Routes.LOGIN_PAGE);
    }
  }

  void ClearCookies() {
    box.remove('user_id');
    box.remove('access_token');
    Get.offAllNamed(Routes.LOGIN_PAGE);
  }
}
