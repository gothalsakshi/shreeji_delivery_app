import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import 'package:shreeji_delivery_app/pages/authentication/otp_verification/otp_verification_screen_controller.dart';
import 'package:shreeji_delivery_app/theme/colors.dart';
import 'package:shreeji_delivery_app/utils/utility.dart';
import 'package:shreeji_delivery_app/widgets/custom_button_widget.dart';
import 'package:shreeji_delivery_app/widgets/custom_text_widget.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final otpVerificationScreenController = Get.find<OtpVerificationScreenController>();
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
                margin: EdgeInsets.only(left: 20.w, right: 20.w),
                height: getHeight(context) * 0.72,
                decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(38.r),
                        topRight: Radius.circular(7.r))),
                child: Padding(
                  padding: EdgeInsets.only(left: 14.w, right: 14.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 30.h, bottom: 18.h),
                        child: Center(
                            child: CustomText(
                                text: 'OTP Verification',
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w600,
                                color: blackColor)),
                      ),
                      Center(
                        child: Text('Enter the OTP sent to your mobile number to verify',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.hindMadurai(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff5d5d5c))),
                      ),
                      
                      Padding(
                        padding: EdgeInsets.only(left: 15.w,right: 15.w,top: 25.h),
                        child: Center(
                          child: Pinput(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            focusedPinTheme: PinTheme(
                              height: 50.h,width: 52.h,
                      
                              decoration: BoxDecoration(
                                border: Border(
                                  top:  BorderSide(color: primaryColor),
                                  left: BorderSide(color: primaryColor,),
                                  right: BorderSide(color: primaryColor),
                                  bottom: BorderSide(
                                    color: primaryColor,
                                    width: 4.h,
                                      ),
                                    ),
                              )
                            ),
                          ),
                        ),
                      ),
                     Obx(() =>  Padding(
                        padding: EdgeInsets.only(top: 13.h, bottom: 35.h,right: 15.w),
                        child: CustomText(
                            text: '00:${otpVerificationScreenController.start.value} sec',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: textColor.withOpacity(0.3)),
                      )),
                      InkWell(
                        onTap: otpVerificationScreenController.goToResetPasswordScreen,
                        child: const CustomAuthButtonWidget(
                          buttonName: 'Proceed',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 17.h),
                        child: Center(
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Didn't recieve the code? ",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w400,
                                      color: textColor.withOpacity(0.7)),
                                ),
                                TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      otpVerificationScreenController.start.value = 60;
                                    },
                                  text: "Resend",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.bold,
                                    color: secondaryColor,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 24.w,top: 28.h),
              child: SizedBox(
                height: 30.h,width: 30.h,
                child: FloatingActionButton(onPressed: goBack,
                backgroundColor: whiteColor,
                elevation: 0.1,
                child: Icon(Icons.arrow_back_ios,size: 11.h,color: secondaryColor)),
              )
            )),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                  margin: EdgeInsets.only(top: 30.h),
                  height: 150.h,
                  width: 200.w,
                  child: Image.asset(
                    'assets/images/frame.png',
                    fit: BoxFit.fill,
                  )),
            )
          ],
        ));
  }
}
