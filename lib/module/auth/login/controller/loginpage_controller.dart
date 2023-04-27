import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ternakku/api_url.dart';
import 'package:ternakku/module/auth/sign%20up/signup_page.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ternakku/routes/app_pages.dart';
import '../../../../ternakku_index.dart';

class LoginController extends GetxController {
  final box = GetStorage();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  RxBool obscureText = true.obs;

  @override
  void onInit() {
    super.onInit();
  }

  void toggle() {
    obscureText.value = !obscureText.value;
    print(obscureText);
  }

  void loginAccount(context) async {
    try {
      var response =
          await Dio().post(ApirUrl.ApiUrl + '/api/login/user', data: {
        "username": username.text,
        "password": password.text,
      });
      // if (response.data['status'] == 'berhasil') {
      Get.offAllNamed(Routes.HOME_PAGE);
      // } else {
      //   print('f1l');
      // }
    } catch (e) {
      print('f2l');
    }
  }
}
