import 'package:get/get.dart';
import 'package:shreeji_delivery_app/pages/splash_screen/splash_screen_controller.dart';

class SplashScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SplashScreenController());
  }
}