import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
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
}
