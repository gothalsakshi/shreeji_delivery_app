import 'package:get/get.dart';
import 'package:shreeji_delivery_app/pages/order/empty_order/empty_order_screen_controller.dart';

class EmptyOrderScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => EmptyOrderScreenController());
  }
}