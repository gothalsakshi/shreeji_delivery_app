import 'package:get/get.dart';
import 'package:shreeji_delivery_app/pages/order/issue_details/issue_details_screen_controller.dart';

class IssueDetailsScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => IssueDetailsScreenController());
  }
}