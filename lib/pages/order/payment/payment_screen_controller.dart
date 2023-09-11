import 'package:get/get.dart';

class PaymentScreenController extends GetxController{
  RxInt selectedPayment = 0.obs;
  void changePaymentMethod(int val){
    selectedPayment.value = val;
  }
}