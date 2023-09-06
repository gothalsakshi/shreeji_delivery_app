import 'package:get/get.dart';
import 'package:shreeji_delivery_app/pages/profile/profile_screen_controller.dart';

class ProfileScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileScreenController());
  }
}