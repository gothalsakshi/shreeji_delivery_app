import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shreeji_delivery_app/utils/utility.dart';

class PaymentScreenController extends GetxController{
  RxInt selectedPayment = 0.obs;
  XFile? image;
  RxList list = [].obs;

  Future pickImage() async {
    goBack();
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      final imageTemp = XFile(image!.path);
      this.image = imageTemp;
      list.add(image.path);
    } on PlatformException catch(e) {
      print('Failed to pick image: $e');
    }
  }

  Future takeImage() async {
    goBack();
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      final imageTemp = XFile(image!.path);
      this.image = imageTemp;
      list.add(image.path);
    } on PlatformException catch(e) {
      print('Failed to pick image: $e');
    }
  }
  void changePaymentMethod(int val){
    selectedPayment.value = val;
  }
}