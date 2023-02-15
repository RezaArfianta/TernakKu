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
    var token = (box.read('access_token'));
    var uuid = (box.read('user_id'));
    Future.delayed(Duration(seconds: 2), () async {
      if (token == null || uuid == null) {
        ClearCookies();
      } else {
        try {
          var response_token =
              await Dio().get(ApirUrl.ApiUrl + '/auth/protected',
                  options: Options(headers: {
                    "Content-Type": "application/json",
                    "Authorization": "Bearer " + token,
                  }));
          var response_user =
              await Dio().get(ApirUrl.ApiUrl + '/users/id/' + uuid);
          response_user.data.toString() == ''
              ? ClearCookies()
              : Get.offAllNamed(Routes.HOME_PAGE);
        } catch (e) {
          ClearCookies();
        }
      }
    });
  }

  void ClearCookies() {
    box.remove('user_id');
    box.remove('access_token');
    Get.offAllNamed(Routes.LOGIN_PAGE);
  }
}
