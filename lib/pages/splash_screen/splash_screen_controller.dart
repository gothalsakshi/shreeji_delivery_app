import 'package:get/get.dart';
import 'package:shreeji_delivery_app/routes/app_route.dart';

class SplashScreenController extends GetxController{
  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(seconds: 3),() {
        navigateTo();
      },
    );
  }

  void navigateTo() {
    Get.offNamed(AppRoutes.loginScreen);
  }
}