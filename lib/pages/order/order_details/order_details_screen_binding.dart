import 'package:get/get.dart';
import 'package:shreeji_delivery_app/pages/order/order_details/order_details_screen_controller.dart';

class OrderDetailsScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => OrderDetialsScreenController());
  }
}