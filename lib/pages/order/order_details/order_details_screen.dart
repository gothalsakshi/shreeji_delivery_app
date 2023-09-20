import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:shreeji_delivery_app/pages/order/order_details/order_details_screen_controller.dart';
import 'package:shreeji_delivery_app/theme/colors.dart';
import 'package:shreeji_delivery_app/utils/utility.dart';
import 'package:shreeji_delivery_app/widgets/custom_button_widget.dart';
import 'package:shreeji_delivery_app/widgets/custom_text_widget.dart';
import 'package:shreeji_delivery_app/widgets/order_box_widget.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final orderDetailsScreenController = Get.find<OrderDetialsScreenController>();
    return Scaffold(
      appBar: appbar('Order Details'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            OrderBox(isOrderDetail: true),
            Container(
              margin: EdgeInsets.only(left: 15.w,right: 15.w,top: 15.h),
              decoration: BoxDecoration(
                color: whiteColor,
                boxShadow: [BoxShadow(
                color: primaryColor.withOpacity(0.2),
                spreadRadius: 0,
                blurRadius: 10,
                )]
              ),
              padding: EdgeInsets.all(16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(text: 'Customer Information',fontSize: 14.sp,fontWeight: FontWeight.w600,color: textColor),
                  Divider(color: textColor.withOpacity(0.2)),
                  addressTile('Customer Name :', ' Raheeg'),
                  addressTile('Mobile Number : ', '09717312876'),
                  addressTile('Address : ', 'Akshya Nagar 1st Block 1st Cross, Rammurthy nagar, Bangalore-560016'),
                  addressTile('Landmark : ', 'RD LANE'),
                  addressTile('Area : ', 'RD LANE'),
                  // addressTile('City : ', 'Bangalore'),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(text: 'City : ',fontSize: 13.sp,fontWeight: FontWeight.w500,color: textColor),
                          CustomText(text: 'Bangalore',fontSize: 13.sp,fontWeight: FontWeight.w400,color: textColor,maxLines: 2,),
                        ],
                      ),
                      Row(
                        children: [
                        Padding(
                          padding: EdgeInsets.only(right: 20.w),
                          child: InkWell(
                          onTap: ()async{
                            await launchUrl(Uri(scheme: 'tel',path: '0000000000'));
                          },
                           child: CircleAvatar(
                            backgroundColor: primaryColor,
                            radius: 15.r,
                            child: SizedBox(
                              height: 17.h,width: 17.h,
                              child: SvgPicture.asset('assets/icons/phone_icon.svg'))),
                         ),
                       ),
                       InkWell(
                        onTap: ()async{
                          await launchUrlString('https://www.google.com/maps/search/?l&query=30.625168,131.75150000');
                        
                        },
                         child: CircleAvatar(
                          backgroundColor: primaryColor,
                          radius: 15.r,
                          child: SizedBox(
                            height: 17.h,width: 17.h,
                            child: SvgPicture.asset('assets/icons/address_icon.svg'))),
                       )
                    ],
                  )
                    ],
                  ),
                  
                ],
              ),
            ),
      
            Container(
              margin: EdgeInsets.only(left: 15.w,right: 15.w,top: 15.h),
              decoration: BoxDecoration(
                color: whiteColor,
                boxShadow: [BoxShadow(
                color: primaryColor.withOpacity(0.2),
                spreadRadius: 0,
                blurRadius: 20,
                )]
              ),
              padding: EdgeInsets.all(16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(text: 'Customer Information',fontSize: 14.sp,fontWeight: FontWeight.w600,color: textColor),
                  Divider(color: textColor.withOpacity(0.2)),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (ctx,index){
                    return Column(
                      children: [
                        Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 60.h,width: 60.h,
                                child: Image.asset('assets/images/image1.png')),
                              Padding(
                                padding: EdgeInsets.only(left: 10.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(text: 'Cashew Nuts',fontSize: 14.sp,fontWeight: FontWeight.w600,color: textColor),
                                    CustomText(text: '1kg',fontSize: 13.sp,fontWeight: FontWeight.w400,color: textColor.withOpacity(0.3)),
                                    Row(
                                      children: [
                                        CustomText(text: '₹800',fontSize: 14.sp,fontWeight: FontWeight.w600,color: textColor.withOpacity(0.4),decoration: TextDecoration.lineThrough),
                                        CustomText(text: '  ₹650',fontSize: 13.sp,fontWeight: FontWeight.w600,color: secondaryColor),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          CustomText(text: 'x 2',fontSize: 13.sp,fontWeight: FontWeight.w500,color: textColor),
                        ],
                        ),
                        index != 1 ? Divider(color: textColor.withOpacity(0.2)) : const SizedBox()
                      ],
                    );
                  })
                ],
              ),
            ),
      
            Container(
              margin: EdgeInsets.only(left: 15.w,right: 15.w,top: 15.h),
              decoration: BoxDecoration(
                color: whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: primaryColor.withOpacity(0.2),
                    spreadRadius: 0,
                    blurRadius: 20,
                    )]
              ),
              padding: EdgeInsets.all(16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(text: 'Store Information',fontSize: 14.sp,fontWeight: FontWeight.w600,color: textColor),
                  Divider(color: textColor.withOpacity(0.2)),
                  addressTile('Store Name :', ' Shreeji Foods'),
                  addressTile('Store Number : ', '09717312876'),
                  addressTile('Address : ', 'Akshya Nagar 1st Block 1st Cross, Rammurthy nagar, Bangalore-560016'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.w,right: 30.w,top: 40.h,bottom: 20.h),
              child: CustomAuthButtonWidget(
                onTap: orderDetailsScreenController.goToPaymentScreen,
                buttonName: 'Mark as delivered'),
            ),
            InkWell(
              onTap: orderDetailsScreenController.goToIssueDetailsScreen,
              child: Container(
                margin: EdgeInsets.only(left: 30.w,right: 30.w,bottom: 40.h),
                height: 43.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8), color: whiteColor,
                    border: Border.all(color: secondaryColor)
                ),
                child: Center(
                    child: CustomText(text: 'Any Issue?',fontSize: 14.sp,fontWeight: FontWeight.w600,color: secondaryColor)),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget addressTile(String title,String subtitle){
    return Padding(
      padding: EdgeInsets.only(top: 12.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(text: title,fontSize: 13.sp,fontWeight: FontWeight.w500,color: textColor),
          Expanded(child: CustomText(text: subtitle,fontSize: 13.sp,fontWeight: FontWeight.w400,color: textColor,maxLines: 2,)),
        ],
      ),
    );
  }
}