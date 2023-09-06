import 'package:get/get.dart';
import 'package:shreeji_delivery_app/pages/order/completed_order/completed_order_screen_controller.dart';

class CompletedOrderScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => CompletedOrderScreenController());
  }
}