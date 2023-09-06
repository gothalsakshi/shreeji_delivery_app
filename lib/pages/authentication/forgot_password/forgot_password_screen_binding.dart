import 'package:get/get.dart';
import 'package:shreeji_delivery_app/pages/authentication/forgot_password/forgot_password_screen_controller.dart';

class ForgotPasswordScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => ForgotPasswordScreenController());
  }
}