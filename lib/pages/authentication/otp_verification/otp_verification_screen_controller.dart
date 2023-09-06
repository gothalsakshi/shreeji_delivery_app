import 'package:get/get.dart';
import 'package:shreeji_delivery_app/routes/app_route.dart';

class OtpVerificationScreenController extends GetxController{
  void goToResetPasswordScreen(){
    Get.toNamed(AppRoutes.resetPasswordScreen);
  }
}