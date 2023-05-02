import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ternakku/api_url.dart';
import 'package:ternakku/routes/app_pages.dart';

class ProfileController extends GetxController {
  final box = GetStorage();
  TextEditingController namaPenerima = TextEditingController();
  TextEditingController noTelpPenerima = TextEditingController();
  TextEditingController provinsi = TextEditingController();
  TextEditingController kota = TextEditingController();
  TextEditingController kecamatan = TextEditingController();
  TextEditingController kodePos = TextEditingController();
  TextEditingController additionalNotes = TextEditingController();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  void ClearCookies() async {
    try {
      var response =
          await Dio().post(ApirUrl.ApiUrl + '/api/logout/user', data: {
        "phone_id": box.read('deviceId'),
      });
      box.remove('deviceId');
      Get.offAllNamed(Routes.LOGIN_PAGE);
    } catch (e) {
      print('Failed');
    }
  }

  void addAddress() async {
    try {
      var response = await Dio().post(ApirUrl.ApiUrl + '/address', data: {
        "user_id": box.read('user_id'),
        "nama_penerima": namaPenerima.text,
        "address": kecamatan.text + ", " + kota.text + ", " + provinsi.text,
        "no_telp_penerima": noTelpPenerima.text,
        "kode_pos": kodePos.text,
        "additional_notes": additionalNotes.text
      });
    } catch (e) {
      print('Tampil alert gagal');
    }
  }
}
