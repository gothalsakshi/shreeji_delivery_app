//used to provide dynamic Height
import 'package:flutter/material.dart';
import 'package:get/get.dart';

getHeight(context) {
  return MediaQuery.of(context).size.height;
}

//used to provide dynamic width
getWidth(context) {
  return MediaQuery.of(context).size.width;
}

//used to get back from current scree
void goBack(){
  Get.back();
}