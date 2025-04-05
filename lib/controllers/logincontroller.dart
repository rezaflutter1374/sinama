import 'package:ecommerce_app/routes/app_routes.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var isLoading = false.obs;

  void navigateToRegistrationPage() async {
    isLoading(true);

    await Future.delayed(Duration(seconds: 2));

    isLoading(false);

    Get.toNamed(AppRoutes.registration);
  }
}
