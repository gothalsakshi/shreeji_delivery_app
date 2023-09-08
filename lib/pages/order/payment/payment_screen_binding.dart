import 'package:get/get.dart';
import 'package:shreeji_delivery_app/pages/order/payment/payment_screen_controller.dart';

class PaymentScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentScreenController());
  }
}