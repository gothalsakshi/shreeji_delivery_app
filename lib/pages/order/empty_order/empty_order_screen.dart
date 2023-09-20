import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:shreeji_delivery_app/routes/app_route.dart';
import 'package:shreeji_delivery_app/theme/colors.dart';
import 'package:shreeji_delivery_app/utils/utility.dart';
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
        child: CustomAuthButtonWidget(buttonName: Get.previousRoute == AppRoutes.issueDetailsScreen ? 'Back to Order Details' :
        'Back to Orders',
        onTap: (){
          if(Get.previousRoute == AppRoutes.issueDetailsScreen){
            goBack();
            goBack();
          }else{
            Get.offAllNamed(AppRoutes.assignedOrderScreen);
          }
          
        },),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 150.h,
              width: 280.w,
              child: Get.previousRoute == AppRoutes.assignedOrderScreen ?
              SvgPicture.asset('assets/images/empty_order.svg') :
              SvgPicture.asset('assets/images/issue_logged.svg')),
            SizedBox(height: 20.h,),
            Get.previousRoute == AppRoutes.issueDetailsScreen ? 
            CustomText(text: 'Issue logged successfully',fontSize: 20.sp,color: secondaryColor,) :
            CustomText(text: 'Order Delivered Successfully',fontSize: 20.sp,color: secondaryColor,)
          ],
        ),
      ),
    );
  }
}