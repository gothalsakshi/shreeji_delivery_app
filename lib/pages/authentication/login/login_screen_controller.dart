import 'package:get/get.dart';
import 'package:shreeji_delivery_app/routes/app_route.dart';

class LoginScreenController extends GetxController{
  RxBool showPassword = false.obs;
  void hidePassword(){
    showPassword.value = ! showPassword.value;
  }

  void goToForgotPasswordScreen(){
    Get.toNamed(AppRoutes.forgotPasswordScreen);
  }
}