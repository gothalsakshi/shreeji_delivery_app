import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shreeji_delivery_app/pages/authentication/login/login_screen_controller.dart';
import 'package:shreeji_delivery_app/routes/app_route.dart';
import 'package:shreeji_delivery_app/theme/colors.dart';
import 'package:shreeji_delivery_app/utils/utility.dart';
import 'package:shreeji_delivery_app/utils/validation_mixin.dart';
import 'package:shreeji_delivery_app/widgets/custom_button_widget.dart';
import 'package:shreeji_delivery_app/widgets/custom_text_widget.dart';
import 'package:shreeji_delivery_app/widgets/custom_textfield.dart';

class LoginScreen extends StatelessWidget with ValidationsMixin {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loginScreenController = Get.find<LoginScreenController>();
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
              height: getHeight(context) * 0.72,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(38.r),topRight: Radius.circular(7.r))
              ),
              child:  Padding(
                padding: EdgeInsets.only(left: 14.w,right: 14.w),
                child: Form(
                  key: loginScreenController.formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 30.h,bottom: 30.h),
                        child: Center(child: CustomText(text: 'Login',fontSize: 17.sp,fontWeight: FontWeight.w600,color: blackColor)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 25.h),
                        child: CustomTextfield(
                          textInputType: TextInputType.number,
                          validator: validatedPhoneNumber,
                          prefixAsset: 'assets/icons/phone_icon.svg',hintText: 'Enter your Mobile number',prefixIcon: CustomText(text: ' +91  |  ',fontSize: 12.sp,fontWeight: FontWeight.w600,color: textColor.withOpacity(0.5))),
                      ),
                      Obx(() => CustomTextfield(
                        validator: validatedPassword,
                        maxLines: 1,
                        isPassword: loginScreenController.showPassword.value,
                        prefixAsset: 'assets/icons/password_icon.svg',hintText: 'Enter Password',suffixIcon: InkWell(
                        onTap: loginScreenController.hidePassword,
                        child: loginScreenController.showPassword.value ? Icon(Icons.visibility_off_outlined,color: blackColor,size: 17.h,) : Icon(Icons.visibility_outlined,color: blackColor,size: 17.h),
                      ))),
                      Padding(
                        padding: EdgeInsets.only(top: 22.h,bottom: 40.h),
                        child: InkWell(
                          onTap: loginScreenController.goToForgotPasswordScreen,
                          child: CustomText(text: 'Forgot Password?',fontSize: 12.sp,fontWeight:FontWeight.w500,color: secondaryColor)),
                      ),
                      InkWell(
                        onTap: loginScreenController.goToAssignedOrderScreen,
                        child: const CustomAuthButtonWidget(buttonName: 'Login',))
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(bottom: 17.h,right: 35.w),
              child: InkWell(
                onTap: ()=> Get.offAllNamed(AppRoutes.assignedOrderScreen),
                child: CustomText(text: 'Skip',decoration: TextDecoration.underline,fontSize: 11.sp,fontWeight: FontWeight.w400,color: blackColor)),
            )),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(top: 30.h),
              height: 150.h,
              width: 200.w,
              child: Image.asset('assets/images/frame.png',fit: BoxFit.fill)),
          )
        ],
      )
    );
  }
}