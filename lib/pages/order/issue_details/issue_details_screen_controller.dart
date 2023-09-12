import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shreeji_delivery_app/utils/utility.dart';

class IssueDetailsScreenController extends GetxController{
  List<String> countries = ["test1", "test2", "test3", "test4", "test5", "test6", "test7"];
  RxString selectedDropValue = ''.obs;
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
}