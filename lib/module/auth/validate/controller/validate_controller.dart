import 'dart:io';

import 'package:device_info/device_info.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:panara_dialogs/panara_dialogs.dart';
import 'package:ternakku/api_url.dart';
import 'package:ternakku/routes/app_pages.dart';

class ValidateController extends GetxController {
  final box = GetStorage();
  late BuildContext context;
  ValidateController({required this.context});

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
        return PanaraInfoDialog.show(context,
            title: "Gagal masuk!",
            message: 'Gagal masuk, silakan coba lagi!',
            buttonText: "Okay", onTapDismiss: () {
          Get.offAllNamed(Routes.VALIDATION_PAGE);
        }, panaraDialogType: PanaraDialogType.error, barrierDismissible: false);
      }
    }
  }

  void ClearCookies() {
    print('object');
  }
}
