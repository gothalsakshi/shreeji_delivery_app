import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shreeji_delivery_app/pages/order/payment/payment_screen_controller.dart';
import 'package:shreeji_delivery_app/theme/colors.dart';
import 'package:shreeji_delivery_app/utils/utility.dart';
import 'package:shreeji_delivery_app/widgets/custom_button_widget.dart';
import 'package:shreeji_delivery_app/widgets/custom_text_widget.dart';
import 'package:shreeji_delivery_app/widgets/custom_textfield.dart';
import 'package:shreeji_delivery_app/widgets/hind_madurai_text.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final paymentScreenController = Get.find<PaymentScreenController>();
    return Scaffold(
      appBar: appbar('Delivery Details'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20.w,right: 20.w,top: 15.h,bottom: 15.h),
              padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 22.h),
              decoration: BoxDecoration(
                color: whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: primaryColor.withOpacity(0.2),
                    spreadRadius: 0,
                    blurRadius: 10,
                  )
                ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: 'Amount to be Collected',fontSize: 16.sp,fontWeight: FontWeight.w500,color: textColor),
                  Text('₹ 4500',style: GoogleFonts.hindMadurai(
                    fontSize: 20.sp,fontWeight: FontWeight.w600,color: textColor
                  ))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20.w,right: 20.w,bottom: 15.h),
              padding: EdgeInsets.all(15.h),
              decoration: BoxDecoration(
                color: whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: primaryColor.withOpacity(0.2),
                    spreadRadius: 0,
                    blurRadius: 20,
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 15.h),
                    child: CustomText(text: 'Amount Collection Mode',fontSize: 15.sp,fontWeight: FontWeight.w600,color: textColor),
                  ),
                  Obx(() => Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    InkWell(
                      onTap: (){
                        if(paymentScreenController.selectedPayment.value == 1) {
                        paymentScreenController.changePaymentMethod(0);
                      }
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Transform.scale(
                            scale: 1.2.h,
                            child: Container(
                              margin: EdgeInsets.only(right: 7.w),
                              padding: EdgeInsets.zero,
                              height: 25.h,
                              width: 25.h,
                              child: Radio(
                                activeColor: primaryColor,
                                value: 0, groupValue: paymentScreenController.selectedPayment.value, onChanged: (value) {
                                paymentScreenController.changePaymentMethod(value!);
                              },),
                            ),
                          ),
                          HindMaduraiText(
                                  text: 'QR Code',
                                  fontSize: 15.sp,
                                  color: textColor,
                                  fontWeight: FontWeight.w500)
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: (){
                      if(paymentScreenController.selectedPayment.value == 0) {
                        paymentScreenController.changePaymentMethod(1);
                      }
                    },
                      child: Row(
                        children: [
                          Transform.scale(
                            scale: 1.2.h,
                            child: Container(
                              padding: EdgeInsets.zero,
                              margin: EdgeInsets.only(right: 15.w,left: 60.w),
                              height: 25.h,
                              width: 25.h,
                              child: Radio(
                                activeColor: primaryColor,
                                value: 1, groupValue: paymentScreenController.selectedPayment.value, onChanged: (value) {
                                paymentScreenController.changePaymentMethod(value!);
                              },),
                            ),
                          ),
                          HindMaduraiText(
                                  text: 'Cash',
                                  fontSize: 15.sp,
                                  color: textColor,
                                  fontWeight: FontWeight.w500)
                        ],
                      ),
                    ),
                  ])),
                ],
              ),
            ),
            Container(
              width: getWidth(context),
              margin: EdgeInsets.only(bottom: 15.h,left: 20.w,right: 20.w),
              padding: EdgeInsets.only(top: 33.h,bottom: 33.h),
              decoration: BoxDecoration(
                color: whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: primaryColor.withOpacity(0.2),
                    spreadRadius: 0,
                    blurRadius: 20,
                  )
                ]
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 28.h),
                    height: 200.h,
                    width: 200.h,
                    child: SvgPicture.asset('assets/images/barcode.svg'),
                  ),
                  CustomText(text: 'Scan the above QR code for payment',fontSize: 13.sp,fontWeight: FontWeight.w500,color: textColor)
                ],
              ),
            ),
            
            Container(
              margin: EdgeInsets.only(bottom: 15.h,left: 20.w,right: 20.w),
              decoration: BoxDecoration(
                color: whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: primaryColor.withOpacity(0.2),
                    spreadRadius: 0,
                    blurRadius: 20,
                  )
                ]
              ),
              padding: EdgeInsets.all(14.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(text: 'Upload Payment Document',fontSize: 13.sp,color: textColor,fontWeight: FontWeight.w500),
                  Padding(
                    padding: EdgeInsets.only(top: 14.h,bottom: 14.h),
                    child: Divider(color: textColor.withOpacity(0.2),height: 1.h),
                  ),
                  DottedBorder(
                    color: secondaryColor,
                    dashPattern: [7, 4],
                    strokeWidth: 1.w,
                    borderType: BorderType.RRect,
                    child: Container(
                      padding: EdgeInsets.only(top: 10.h,bottom: 10.h),
                      width: getWidth(context),
                      color: Color(0xfff4f3f6),
                      child: SvgPicture.asset('assets/icons/upload_icon.svg',height: 25.h,width: 25.h,),
                    ))
                ],
              ),
            ),
            
            Container(
              margin: EdgeInsets.only(left: 20.w,right: 20.w,bottom: 15.h),
              decoration: BoxDecoration(
                color: whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: primaryColor.withOpacity(0.2),
                    spreadRadius: 0,
                    blurRadius: 20,
                  )
                ]
              ),
              padding: EdgeInsets.all(14.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(text: 'Upload Payment Document',fontSize: 13.sp,color: textColor,fontWeight: FontWeight.w500),
                  Padding(
                    padding: EdgeInsets.only(top: 14.h,bottom: 14.h),
                    child: Divider(color: textColor.withOpacity(0.2),height: 1.h),
                  ),
                  const CustomTextfield(hintText: 'Type your remarks here...',)
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.w,right: 30.w,top: 35.h,bottom: 40.h),
              child: const CustomAuthButtonWidget(buttonName: 'Submit'),
            )
          ],
        ),
      ),
    );
  }
}