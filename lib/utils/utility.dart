//used to provide dynamic Height
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.w,bottom: 18.h),
              child: Icon(Icons.arrow_back_ios,color: whiteColor,size: 18.h),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(bottom: 18.h),
            child: CustomText(text: title,fontSize: 18.sp,fontWeight: FontWeight.w600,color: whiteColor),
          )
        ),
      ],
    ),));
}

void showUploadImageDialog(context,VoidCallback pickImage, VoidCallback takeImage){
  showGeneralDialog(
    barrierLabel: "Label",
    barrierDismissible: true,
    barrierColor: Colors.black.withOpacity(0.5),
    transitionDuration: const Duration(milliseconds: 100),
    context: context,
    pageBuilder: (context, anim1, anim2){
      return Material(
        type: MaterialType.transparency,
        child: StatefulBuilder(builder: ((context, setState) {
          return Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 160.h,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15.r),topRight: Radius.circular(15.r))
              ),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:EdgeInsets.only(left: 20.w,right: 20.w,top: 18.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(text: 'Upload',fontSize: 18.sp,fontWeight: FontWeight.w600,color: textColor),
                        InkWell(
                          onTap: goBack,
                          child: Padding(
                          padding: EdgeInsets.all(5.h),
                          child: Icon(Icons.close,size: 18.h,color: secondaryColor),
                        ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 12.h,bottom: 15.h),
                    child: Divider(color: textColor.withOpacity(0.2)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: pickImage,
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 10.h),
                                height: 40.h,width: 40.w,
                                child: SvgPicture.asset('assets/icons/gallery_icon.svg',height: 40.h,width: 40.w)),
                              Center(child: CustomText(text: 'Select From Gallery',fontSize: 12.sp,fontWeight: FontWeight.w400,color: secondaryColor,textAlign: TextAlign.center))
                            ],
                          ),
                        )),
                      DottedLine(
                        dashLength: 5.h,
                        dashGapLength: 5.h,
                        lineThickness: 1,
                        dashColor: textColor.withOpacity(0.2),
                        dashGapColor: whiteColor,
                        direction: Axis.vertical,
                        lineLength: 55.h,
                      ),
                      InkWell(
                        onTap: takeImage,
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 10.h),
                                height: 40.h,width: 40.w,
                                child: SvgPicture.asset('assets/icons/camera_icon.svg',height: 40.h,width: 40.w)),
                              Center(child: CustomText(text: 'Open Camera',fontSize: 12.sp,fontWeight: FontWeight.w400,color: secondaryColor,textAlign: TextAlign.center))
                            ],
                          ),
                        ))
                    ],
                  ),
                ],
              ),
            ),
          );
        })),
      );
    });
}