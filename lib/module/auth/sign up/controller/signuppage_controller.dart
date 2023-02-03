import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

  void makeAccount() async {
    try {
      var response = await Dio().post('http://15.15.4.232:3000/users', data: {
        "username": username.text,
        "password": password.text,
        "nama_pengguna": namaPengguna.text,
        "email": email.text,
        "no_telp": noTelp.text
      });
      print(response.data.toString());
      print('obddject');
    } catch (e) {
      print(e);
      print('objecdddt');
    }
  }
}
