import 'package:get/get.dart';
import 'package:shreeji_delivery_app/pages/authentication/login/login_screen_controller.dart';

class LoginScreenBinding extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => LoginScreenController());
  }
}