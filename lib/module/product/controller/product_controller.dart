import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:panara_dialogs/panara_dialogs.dart';
import 'package:ternakku/api_url.dart';
import 'package:ternakku/routes/app_pages.dart';

class ProductController extends GetxController {
  final box = GetStorage();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  void AddToCart(String product_id, BuildContext context) async {
    try {
      var response = await Dio().post(ApirUrl.ApiUrl + '/api/carts', data: {
        "phone_id": box.read('deviceId'),
        "product_id": product_id,
        "quantity": '1'
      });
      print(response.data);
    } catch (e) {
      {
        return PanaraInfoDialog.show(context,
            title: "Gagal!",
            message: 'Gagal menambahkan barang, silakan coba lagi!',
            buttonText: "Okay", onTapDismiss: () {
          Get.back();
        }, panaraDialogType: PanaraDialogType.error, barrierDismissible: false);
      }
    }
  }
}
