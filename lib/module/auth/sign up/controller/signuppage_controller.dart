import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ternakku/api_url.dart';
import 'package:ternakku/module/auth/login/login_page.dart';
import 'package:ternakku/routes/app_pages.dart';

import '../../../../ternakku_index.dart';

class SignupController extends GetxController {
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController namaPengguna = TextEditingController();
  TextEditingController noTelp = TextEditingController();
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

  void makeAccount(context) async {
    try {
      var response = await Dio().post(ApirUrl.ApiUrl + '/api/users', data: {
        "username": username.text,
        "password": password.text,
        "nama_pengguna": namaPengguna.text,
        "email": email.text,
        "no_telp": noTelp.text
      });
      if (response.data['status'] == 'berhasil') {
        Get.offAllNamed(Routes.LOGIN_PAGE);
      } else {
        print('f1l');
      }
    } catch (e) {
      print('f2l');
    }
  }
}
