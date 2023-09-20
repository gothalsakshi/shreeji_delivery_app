import 'dart:async';

import 'package:get/get.dart';
import 'package:shreeji_delivery_app/routes/app_route.dart';
import 'package:shreeji_delivery_app/utils/utility.dart';

class OtpVerificationScreenController extends GetxController{
  RxInt start = 60.obs;
  void goToResetPasswordScreen(){
    Get.toNamed(AppRoutes.resetPasswordScreen);
  }

  @override
  void onReady() {
    super.onReady();
    startTimer();
  }

  void startTimer() {
  const oneSec = const Duration(seconds: 1);
   Timer.periodic(
    oneSec,
    (Timer timer) {
      if (start.value == 0) {
        timer.cancel();
        goBack();
        } else { 
          start.value--;
      }
    },
  );
}

}