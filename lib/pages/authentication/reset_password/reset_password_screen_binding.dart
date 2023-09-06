import 'package:get/get.dart';
import 'package:shreeji_delivery_app/pages/authentication/reset_password/reset_password_screen_controller.dart';

class ResetPasswordScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => ResetPasswordScreenController());
  }
}