import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:supercharged_dart/supercharged_dart.dart';
import 'package:ternakku/module/profile/profile_page.dart';

import 'global/colors.dart';
import 'routes/app_pages.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppPages.routes,
      title: 'TernaKku',
      initialRoute: AppPages.INITIAL,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          // hoverColor: Warna.primaryGreen,
          focusColor: Colors.transparent,
          splashColor: Colors.transparent,
          // textButtonTheme:
          primaryColor: Warna.primaryGreen),
    );
  }
}
