import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shreeji_delivery_app/pages/splash_screen/splash_screen_controller.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<SplashScreenController>();
    return Scaffold(
      body: Center(child: Lottie.asset('assets/splash/splash.json', fit: BoxFit.fill,height: double.infinity,width: double.infinity)),
    );
  }
}