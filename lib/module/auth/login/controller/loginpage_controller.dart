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
      var response = await Dio().post(ApirUrl.ApiUrl + '/auth/login',
          data: {'username': username.text, 'password': password.text});
      print(response.data);
      box.write('access_token', response.data['access_token']);
      box.write('user_id', response.data['user_id']);
      Get.offAllNamed(Routes.HOME_PAGE);
    } catch (e) {
      print(e);
    }
  }
}
