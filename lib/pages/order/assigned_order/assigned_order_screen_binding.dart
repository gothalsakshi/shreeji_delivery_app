import 'package:get/get.dart';
import 'package:shreeji_delivery_app/pages/order/assigned_order/assigned_order_screen_controller.dart';

class AssignedOrderScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => AssignedOrderScreenController());
  }
}