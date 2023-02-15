part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const HOME_PAGE = Paths.HOME_PAGE;
  static const LOGIN_PAGE = Paths.LOGIN_PAGE;
  static const SIGNUP_PAGE = Paths.SIGNUP_PAGE;
  static const VALIDATION_PAGE = Paths.VALIDATION_PAGE;
}

abstract class Paths {
  Paths._();
  static const HOME_PAGE = '/homepage';
  static const LOGIN_PAGE = '/loginPage';
  static const SIGNUP_PAGE = '/signupPage';
  static const VALIDATION_PAGE = '/validatePage';
}
