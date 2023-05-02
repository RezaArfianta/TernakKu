import 'dart:io';

import 'package:device_info/device_info.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ternakku/api_url.dart';
import 'package:ternakku/routes/app_pages.dart';

class ValidateController extends GetxController {
  final box = GetStorage();
  @override
  void onInit() {
    _getDeviceId();
    super.onInit();
  }

  Future<void> _getDeviceId() async {
    box.write('deviceId', '');

    final DeviceInfoPlugin deviceInfoPlugin = new DeviceInfoPlugin();
    try {
      if (Platform.isAndroid) {
        var build = await deviceInfoPlugin.androidInfo;
        box.write('deviceId', build.androidId);
      } else if (Platform.isIOS) {
        var data = await deviceInfoPlugin.iosInfo;
        box.write('deviceId', data.identifierForVendor);
      }
    } on PlatformException {
      print('Failed');
    }
    ValidateAccount();
  }

  void ValidateAccount() async {
    if (box.read('deviceId') == '') {
      print('error');
    } else {
      try {
        var response =
            await Dio().post(ApirUrl.ApiUrl + '/api/validate/user', data: {
          "phone_id": box.read('deviceId'),
        });
        if (response.data['status'] == 'berhasil') {
          Get.offAllNamed(Routes.HOME_PAGE);
        } else {
          Get.offAllNamed(Routes.LOGIN_PAGE);
        }
      } catch (e) {
        print('f2l');
      }
    }
  }

  void ClearCookies() {
    print('object');
  }
}
