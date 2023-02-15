import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ternakku/api_url.dart';
import 'package:ternakku/module/auth/login/login_page.dart';

import '../../../../ternakku_index.dart';

class SignupController extends GetxController {
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController namaPengguna = TextEditingController();
  TextEditingController noTelp = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  void makeAccount(context) async {
    try {
      var response = await Dio().post(ApirUrl.ApiUrl + '/users', data: {
        "username": username.text,
        "password": password.text,
        "nama_pengguna": namaPengguna.text,
        "email": email.text,
        "no_telp": noTelp.text
      });
      print(response.data.toString());
      Get.back();
    } catch (e) {
      print(e);
    }
  }
}
