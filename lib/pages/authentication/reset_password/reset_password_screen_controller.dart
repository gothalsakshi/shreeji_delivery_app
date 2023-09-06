import 'package:get/get.dart';

class ResetPasswordScreenController extends GetxController{
  RxBool showNewPassword = false.obs;
  RxBool showConfirmPassword = false.obs;

  void hideNewPassword(){
    showNewPassword.value = ! showNewPassword.value;
  }

  void hideConfirmPassword(){
    showConfirmPassword.value = ! showConfirmPassword.value;
  }
}