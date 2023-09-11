import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shreeji_delivery_app/routes/app_route.dart';

class ResetPasswordScreenController extends GetxController{
  RxBool showNewPassword = false.obs;
  RxBool showConfirmPassword = false.obs;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void hideNewPassword(){
    showNewPassword.value = ! showNewPassword.value;
  }

  void hideConfirmPassword(){
    showConfirmPassword.value = ! showConfirmPassword.value;
  }

  void validateResetPassword(){
    if(formKey.currentState!.validate()){
      Get.offAllNamed(AppRoutes.loginScreen);
    }
  }
}