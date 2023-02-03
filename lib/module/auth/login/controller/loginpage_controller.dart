import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ternakku/api_url.dart';

import '../../../../ternakku_index.dart';

class LoginController extends GetxController {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  bool obscureText = true;
  bool checked = false;

  @override
  void onInit() {
    super.onInit();
  }

  void toggle() async {
    (() {
      obscureText = !obscureText;
    });
  }

  void loginAccount(context) async {
    try {
      var response = await Dio().post(ApirUrl.ApiUrl + '/users/login',
          data: {'username': username.text, 'password': password.text});
      print(response);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => TernakKuIndex()));
    } catch (e) {
      print(e);
    }
    print(username.text + ' dan ' + password.text);
  }
}
