import 'package:get/get.dart';
import 'package:shreeji_delivery_app/routes/app_route.dart';

class CompletedOrderScreenController extends GetxController{
  List timeList = ['Today','Yesterday','Last 7 days','Custom'];
  int selectedTime = 0;
  void goToOrderDetailsScreen(){
    Get.toNamed(AppRoutes.orderDetailsScreen);
  }
}