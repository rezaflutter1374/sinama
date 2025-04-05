import 'package:ecommerce_app/pages/%20login_page.dart';
import 'package:ecommerce_app/pages/registr.dart';
import 'package:get/get.dart';
// ignore: unused_import
import '../pages/login_page.dart';
import '../pages/home_page.dart';

class AppRoutes {
  // تعریف نام مسیرها
  static const String login = '/login';
  static const String home = '/home';
  static const String registration = '/registration';

  // تعریف مسیرها
  static final routes = [
    GetPage(name: login, page: () => LoginPage()),
    GetPage(name: home, page: () => HomePage()),
    GetPage(name: registration, page: () => RegistrationPage()),
  ];
}
