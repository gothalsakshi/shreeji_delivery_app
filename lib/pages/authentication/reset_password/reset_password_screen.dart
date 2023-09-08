import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shreeji_delivery_app/pages/authentication/reset_password/reset_password_screen_controller.dart';
import 'package:shreeji_delivery_app/theme/colors.dart';
import 'package:shreeji_delivery_app/utils/utility.dart';
import 'package:shreeji_delivery_app/widgets/custom_button_widget.dart';
import 'package:shreeji_delivery_app/widgets/custom_text_widget.dart';
import 'package:shreeji_delivery_app/widgets/custom_textfield.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final resetPasswordScreenController = Get.find<ResetPasswordScreenController>();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: secondaryColor,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: getHeight(context)*0.8,
              width: getWidth(context),
              child: Image.asset('assets/images/background_image.png',fit: BoxFit.fill)),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(left: 20.w,right: 20.w),
              height: getHeight(context) * 0.7,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(38.r),topRight: Radius.circular(7.r))
              ),
              child:  Padding(
                padding: EdgeInsets.only(left: 14.w,right: 14.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 30.h,bottom: 8.h),
                      child: Center(child: CustomText(text: 'Reset Password',fontSize: 17.sp,fontWeight: FontWeight.w600,color: blackColor)),
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 25.h),
                        child: Text('Enter a new and strong password',textAlign: TextAlign.center,style: GoogleFonts.hindMadurai(fontSize: 12.sp,fontWeight: FontWeight.w400,color: const Color(0xff5d5d5c)),),
                      ),
                    ),
                    Obx(() => CustomTextfield(prefixAsset: 'assets/icons/unlock_icon.svg',hintText: 'Enter new password',
                    suffixIcon: InkWell(
                      onTap: resetPasswordScreenController.hideNewPassword,
                      child: resetPasswordScreenController.showNewPassword.value ? Icon(Icons.visibility_off_outlined,color: blackColor,size: 17.h,) : Icon(Icons.visibility_outlined,color: blackColor,size: 17.h),
                    ))),
                    Padding(
                      padding: EdgeInsets.only(top: 18.h,bottom: 40.h),
                      child: Obx(() => CustomTextfield(prefixAsset: 'assets/icons/password_icon.svg',hintText: 'Confirm new password',
                      suffixIcon: InkWell(
                      onTap: resetPasswordScreenController.hideConfirmPassword,
                      child: resetPasswordScreenController.showConfirmPassword.value ? Icon(Icons.visibility_off_outlined,color: blackColor,size: 17.h,) : Icon(Icons.visibility_outlined,color: blackColor,size: 17.h),
                    )))
                    ),
                    const CustomAuthButtonWidget(buttonName: 'Reset',)
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 24.w,top: 28.h),
              child: InkWell(
                onTap: goBack,
                child: CircleAvatar(radius: 15.r,backgroundColor: whiteColor,child: Center(child: Icon(Icons.arrow_back_ios,size: 13.h,)),))
            )),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(top: 24.h),
              height: 150.h,
              width: 200.w,
              child: Image.asset('assets/images/frame.png',fit: BoxFit.fill,)),
          )
        ],
      )
    );
  }
}