
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shreeji_delivery_app/routes/app_route.dart';

class CompletedOrderScreenController extends GetxController{
  List timeList = ['Today','Yesterday','Last 7 days','Custom'];
  int selectedTime = 0;
  RxString selectedDate = ''.obs;
  Rx<TextEditingController> toDate = TextEditingController().obs;
  TextEditingController fromDate = TextEditingController();
  RxBool isCustomDateSelected = false.obs;
  void goToOrderDetailsScreen(){
    Get.toNamed(AppRoutes.orderDetailsScreen);
  }

   void openDatePicker(context)async{
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate:DateTime(2000), 
      lastDate: DateTime(2101),
    );
    DateTime fromDateValue = DateTime.now();
    toDate.value.text = '${pickedDate!.day.toString()}/${pickedDate.month.toString()}/${pickedDate.year.toString()}';
    fromDate.text = '${fromDateValue.day.toString()}/${fromDateValue.month.toString()}/${fromDateValue.year.toString()}';
    debugPrint('selected date is--->${toDate.value.text}');
  }
}