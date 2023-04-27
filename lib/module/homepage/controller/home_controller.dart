import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:supercharged/supercharged.dart';

import '../../../api_url.dart';

class HomeController extends GetxController {
  RxList categoryTitle = [].obs;

  void onInit() {
    super.onInit();
    getCategories();
  }

  void getCategories() async {
    var response = await Dio().get(ApirUrl.ApiUrl + '/api/categories');
    if (response.data['data'].length >= 1) {
      categoryTitle.value = response.data['data'];
      // for (var i = 0; i < response.data['data'].length; i++) {
      //   categoryTitle.value.add(response.data['data'][i]);
      // }
      print(categoryTitle.count());
    }
  }
}
