import 'package:flutter/material.dart';
import 'package:supercharged_dart/supercharged_dart.dart';
import 'package:ternakku/module/auth/login/login_page.dart';
import 'package:ternakku/module/auth/sign%20up/signup_page.dart';
import 'package:ternakku/module/homepage/alt_home_page.dart';
import 'package:ternakku/module/homepage/home_page.dart';
import 'package:ternakku/ternakku_index.dart';

import 'global/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
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
