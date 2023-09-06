import 'package:get/get.dart';
import 'package:shreeji_delivery_app/routes/app_route.dart';

class ForgotPasswordScreenController extends GetxController{
  void goToOtpVerificationScreen(){
    Get.toNamed(AppRoutes.otpVerificationScreen);
  }
}