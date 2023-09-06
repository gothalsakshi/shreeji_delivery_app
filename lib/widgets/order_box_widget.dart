import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shreeji_delivery_app/theme/colors.dart';
import 'package:shreeji_delivery_app/widgets/custom_text_widget.dart';

class OrderBox extends StatelessWidget {
  const OrderBox({super.key,this.isCompleted});

  final bool? isCompleted;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 10.h,left: 10.w,right: 10.w),
        padding: EdgeInsets.only(top: 8.h,bottom: 14.h,left: 8.w,right: 8.w),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0xfffffefd),
              spreadRadius: 10,
              blurRadius: 2
            )
          ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 14.h),
              decoration: BoxDecoration(
                color: primaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(4.r)
              ),
              padding: EdgeInsets.all(6.h),
              child: const Text('TES00004092023115'),
            ),
            Row(
              children: [
                CustomText(text: 'Order Date & Time:  ',fontSize: 11.sp,fontWeight: FontWeight.w400,color: textColor),
                CustomText(text: '05-08-2023  18:13:06',fontSize: 11.sp,fontWeight: FontWeight.w500,color: textColor),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 11,bottom: 11),
              child: isCompleted == true ?
              Row(
                children: [
                  CustomText(text: 'Delivery Date & TIme:  ',fontSize: 11.sp,fontWeight: FontWeight.w400,color: textColor),
                  CustomText(text: '05-08-2023 01:00 pm - 03:00pm',fontSize: 11.sp,fontWeight: FontWeight.w500,color: primaryColor)
                ],
              ) :
              Row(
                children: [
                  CustomText(text: 'No of Items in Order:  ',fontSize: 11.sp,fontWeight: FontWeight.w400,color: textColor),
                  CustomText(text: '05',fontSize: 11.sp,fontWeight: FontWeight.w500,color: textColor)
                ],
              ),

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(text : 'Payment Mode : Pay in Cash',fontSize: 11.sp,fontWeight: FontWeight.w500,color: textColor),
                CustomText(text : 'Total : ₹ 1500',fontSize: 11.sp,fontWeight: FontWeight.w600,color: secondaryColor)
              ],
            ),
          ],
        ),
      );
  }
}