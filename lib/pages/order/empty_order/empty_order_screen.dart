import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:shreeji_delivery_app/routes/app_route.dart';
import 'package:shreeji_delivery_app/theme/colors.dart';
import 'package:shreeji_delivery_app/widgets/custom_button_widget.dart';
import 'package:shreeji_delivery_app/widgets/custom_text_widget.dart';

class EmptyOrderScreen extends StatelessWidget {
  const EmptyOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(left: 20.w,right: 20.w),
        child: CustomAuthButtonWidget(buttonName: 'Back to Orders',onTap: (){
          Get.offAllNamed(AppRoutes.assignedOrderScreen);
        },),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 150.h,
              width: 280.w,
              child: SvgPicture.asset('assets/images/empty_order.svg')),
            SizedBox(height: 20.h,),
            Get.previousRoute == AppRoutes.issueDetailsScreen ? 
            CustomText(text: 'Issue Registered Successfully',fontSize: 20.sp,color: secondaryColor,) :
            CustomText(text: 'Order Delivered Successfully',fontSize: 20.sp,color: secondaryColor,)
          ],
        ),
      ),
    );
  }
}