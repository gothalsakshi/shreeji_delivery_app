import 'package:get/get.dart';
import 'package:shreeji_delivery_app/routes/app_route.dart';


class OrderDetialsScreenController extends GetxController{
  void goToPaymentScreen(){
    Get.toNamed(AppRoutes.paymentScreen);
  }

  void goToIssueDetailsScreen(){
    Get.toNamed(AppRoutes.issueDetailsScreen);
  }
}