import 'package:get/get.dart';
import 'package:ternakku/module/auth/login/login_page.dart';
import 'package:ternakku/module/auth/sign%20up/signup_page.dart';
import 'package:ternakku/module/auth/validate/validate_page.dart';
import 'package:ternakku/ternakku_index.dart';
part 'routes_name.dart';

class AppPages {
  static const INITIAL = Routes.VALIDATION_PAGE;
  static final routes = [
    GetPage(name: Paths.VALIDATION_PAGE, page: (() => ValidatePage())),
    GetPage(name: Paths.HOME_PAGE, page: (() => TernakKuIndex())),
    GetPage(name: Paths.LOGIN_PAGE, page: (() => LoginPage())),
    GetPage(name: Paths.SIGNUP_PAGE, page: (() => SignUpPage())),
  ];
}
