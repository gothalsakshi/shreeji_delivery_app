import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shreeji_delivery_app/routes/app_route.dart';

class ForgotPasswordScreenController extends GetxController{
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  void goToOtpVerificationScreen(){
    if(formKey.currentState!.validate()){
      Get.toNamed(AppRoutes.otpVerificationScreen);
    } 
  }
}