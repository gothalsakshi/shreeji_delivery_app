import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shreeji_delivery_app/routes/app_route.dart';

class LoginScreenController extends GetxController{
  RxBool showPassword = false.obs;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  void hidePassword(){
    showPassword.value = ! showPassword.value;
  }

  void goToForgotPasswordScreen(){
    Get.toNamed(AppRoutes.forgotPasswordScreen);
  }

  void goToAssignedOrderScreen(){
    if(formKey.currentState!.validate()){
      Get.offAllNamed(AppRoutes.assignedOrderScreen);
    } 
  }
}