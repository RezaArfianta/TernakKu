import 'package:get/get.dart';
import 'package:ternakku/module/auth/login/login_page.dart';
import 'package:ternakku/module/auth/sign%20up/signup_page.dart';
import 'package:ternakku/module/auth/validate/validate_page.dart';
import 'package:ternakku/ternakku_index.dart';

import 'routes_name.dart';

class AppPages {
  static const initialPage = RoutesName.validatePage;
  static final routes = [
    GetPage(name: RoutesName.homePage, page: () => TernakKuIndex()),
    GetPage(name: RoutesName.loginPage, page: () => LoginPage()),
    GetPage(name: RoutesName.signupPage, page: () => SignUpPage()),
    GetPage(name: RoutesName.validatePage, page: () => ValidatePage())
  ];
}
