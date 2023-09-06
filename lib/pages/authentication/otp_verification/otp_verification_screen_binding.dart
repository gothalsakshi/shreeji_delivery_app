import 'package:get/get.dart';
import 'otp_verification_screen_controller.dart';

class OtpVerificationScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => OtpVerificationScreenController());
  }

}