import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shreeji_delivery_app/routes/app_route.dart';
import 'package:shreeji_delivery_app/theme/colors.dart';
import 'package:shreeji_delivery_app/utils/utility.dart';
import 'package:shreeji_delivery_app/widgets/custom_button_widget.dart';
import 'package:shreeji_delivery_app/widgets/custom_text_widget.dart';

Future<void> showAlertDialog(BuildContext context){
  return showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
            scrollable: true,
            iconPadding: EdgeInsets.zero,
            // insetPadding: EdgeInsets.only(
            //     left: MediaQuery.of(context).size.width * 0.18,
            //     right: MediaQuery.of(context).size.width * 0.18,
            //     top: MediaQuery.of(context).size.height * 0.22,
            //     bottom: MediaQuery.of(context).size.height * 0.22),
            buttonPadding: EdgeInsets.zero,
            actionsPadding: EdgeInsets.zero,
            contentPadding: EdgeInsets.zero,
            titlePadding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(2.r)),
            content: Container(
              padding: EdgeInsets.all(22.h),
              color: whiteColor,
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: goBack,
                        child: Padding(
                          padding: EdgeInsets.all(5.h),
                          child: Icon(Icons.close,size: 20.h),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 70.h,width: 70.h,
                    child: Image.asset('assets/images/logout_image.png',fit: BoxFit.fill,)),
                  Padding(
                    padding: EdgeInsets.only(top: 18.h,bottom: 7.h),
                    child: CustomText(text: 'Logout?',fontSize: 16.sp,fontWeight: FontWeight.w600,color: textColor),
                  ),
                  CustomText(text: 'Are you sure you want to Logout?',fontSize: 11.sp,fontWeight: FontWeight.w400,color: textColor.withOpacity(0.4)),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w,right: 20.w,bottom: 14.h,top: 18.h),
                    child: CustomAuthButtonWidget(onTap: (){
                      Get.offAllNamed(AppRoutes.loginScreen);
                    },
                      buttonName: 'Logout'),
                  ),
                  InkWell(
                    onTap: goBack,
                    child: Container(
                      margin: EdgeInsets.only(left: 20.w,right: 20.w),
                      height: 43.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8), color: whiteColor,
                          border: Border.all(color: secondaryColor)
                      ),
                      child: Center(
                          child: CustomText(text: 'Cancel',fontSize: 14.sp,fontWeight: FontWeight.w600,color: secondaryColor)),
                    ),
                  )
                ],
              ),
            ),
            );
      });
}
