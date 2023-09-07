//used to provide dynamic Height
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shreeji_delivery_app/theme/colors.dart';
import 'package:shreeji_delivery_app/widgets/custom_text_widget.dart';

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

appbar(title){
  return PreferredSize(preferredSize: Size.fromHeight(80.h),
  child: Container(height: 80.h,
  decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[Color(0xff280d4b),Color(0xff320a65),Color(0xff3b077d)]),
          ),
  child: Stack(
      children: [
        GestureDetector(
          onTap: goBack,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Icon(Icons.arrow_back_ios,color: whiteColor,size: 20.h),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: CustomText(text: title,fontSize: 18.sp,fontWeight: FontWeight.w600,color: whiteColor)
        ),
      ],
    ),));
}