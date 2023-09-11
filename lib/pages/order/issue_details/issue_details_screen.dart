import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:shreeji_delivery_app/pages/order/issue_details/issue_details_screen_controller.dart';
import 'package:shreeji_delivery_app/theme/colors.dart';
import 'package:shreeji_delivery_app/utils/utility.dart';
import 'package:shreeji_delivery_app/widgets/custom_button_widget.dart';
import 'package:shreeji_delivery_app/widgets/custom_text_widget.dart';
import 'package:shreeji_delivery_app/widgets/custom_textfield.dart';

class IssueDetailsScreen extends StatelessWidget {
  const IssueDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final issueDetailScreenController = Get.find<IssueDetailsScreenController>();
    return Scaffold(
      appBar: appbar('Issue Details'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(left: 20.w,right: 20.w,bottom: 15.h,top: 15.h),
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
                    CustomText(text: 'Issue Type',fontSize: 13.sp,color: textColor,fontWeight: FontWeight.w500),
                    Padding(
                      padding: EdgeInsets.only(top: 14.h,bottom: 5.h),
                      child: Divider(color: textColor.withOpacity(0.2),height: 1.h),
                    ),
                    // const CustomTextfield(hintText: 'Type your remarks here...',),
                    Obx(() => DropdownButton(
                      icon: SvgPicture.asset('assets/icons/down_arrow.svg'),
                      isExpanded: true,
                      hint: CustomText(text: 'Type your remarks here...',fontSize: 12.sp,fontWeight: FontWeight.w600,color: textColor.withOpacity(0.5)),
                      value: issueDetailScreenController.selectedDropValue.value == '' ? null : issueDetailScreenController.selectedDropValue.value,
                      items: issueDetailScreenController.countries.map((country){
                          return DropdownMenuItem( 
                              child: Text(country),
                              value: country,
                          );
                      }).toList(),
                      onChanged: (country){
                        issueDetailScreenController.selectedDropValue.value = country.toString();
                        print("You selected: $country");
                      },
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
                    CustomText(text: 'Remark',fontSize: 13.sp,color: textColor,fontWeight: FontWeight.w500),
                    Padding(
                      padding: EdgeInsets.only(top: 14.h,bottom: 14.h),
                      child: Divider(color: textColor.withOpacity(0.2),height: 1.h),
                    ),
                    const CustomTextfield(hintText: 'Type your remarks here...',maxLines: 4,)
                  ],
                ),
              ),
            Container(
              margin: EdgeInsets.only(left: 20.w,right: 20.w),
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
                  CustomText(text: 'Upload Attachment (if any) ',fontSize: 13.sp,color: textColor,fontWeight: FontWeight.w500),
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
            Padding(
                padding: EdgeInsets.only(left: 30.w,right: 30.w,top: 40.h,bottom: 20.h),
                child: const CustomAuthButtonWidget(
                  // onTap: orderDetailsScreenController.goToPaymentScreen,
                  buttonName: 'Submit'),
              ),
          ],
        ),
      ),
    );
  }
}