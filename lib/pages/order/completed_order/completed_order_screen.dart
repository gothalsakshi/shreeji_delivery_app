import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:shreeji_delivery_app/pages/order/completed_order/completed_order_screen_controller.dart';
import 'package:shreeji_delivery_app/theme/colors.dart';
import 'package:shreeji_delivery_app/utils/utility.dart';
import 'package:shreeji_delivery_app/widgets/common_drawer.dart';
import 'package:shreeji_delivery_app/widgets/custom_button_widget.dart';
import 'package:shreeji_delivery_app/widgets/custom_text_widget.dart';
import 'package:shreeji_delivery_app/widgets/custom_textfield.dart';
import 'package:shreeji_delivery_app/widgets/order_box_widget.dart';

class CompletedOrderScreen extends StatelessWidget {
  const CompletedOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final completedOrdersScreenController = Get.find<CompletedOrderScreenController>();
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CustomText(text:'Completed Orders',fontSize: 18.sp,fontWeight: FontWeight.w600,color: whiteColor),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[Color(0xff280d4b),Color(0xff320a65),Color(0xff3b077d)]),
          ),
        ),
      ),
      floatingActionButton: InkWell(
        onTap: (){
          showGeneralDialog(
            barrierLabel: "Label",
            barrierDismissible: true,
            barrierColor: Colors.black.withOpacity(0.5),
            transitionDuration: const Duration(milliseconds: 100),
            context: context,
            pageBuilder: (context, anim1, anim2) {
              return Material(
                type: MaterialType.transparency,
                child: StatefulBuilder(
                  builder: (con, setState) {
                    return Align(
                      alignment: Alignment.bottomCenter,
                      child: Obx(() => Container(
                        clipBehavior: Clip.antiAlias,
                        height: completedOrdersScreenController.isCustomDateSelected.value ? 280.h : 250.h,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.only(
                                topRight:Radius.circular(20),
                                topLeft:Radius.circular(20))),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment:CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 18.w,right: 18.w,top: 20.h,bottom: 14.h),
                              child: Row(
                                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomText(text: 'Filter by',fontSize: 17.sp,fontWeight: FontWeight.w600,color: textColor),
                                  InkWell(
                                    onTap: goBack,
                                    child:Icon(Icons.close,size: 20.h))
                                ],
                              ),
                            ),
                            Divider(color: textColor.withOpacity(0.2)),
                            Expanded(
                              child: Container(
                                color: whiteColor,
                                  height: 100.h,
                                  child: Column(
                                    children: [
                                      ListView.builder(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap:true,
                                        physics: const NeverScrollableScrollPhysics(),
                                        itemCount:  completedOrdersScreenController.timeList.length,    
                                        itemBuilder:(ctx,index) {
                                          return InkWell(
                                              onTap: (){
                                                setState((){
                                                  completedOrdersScreenController.selectedTime = index;
                                                });
                                                if(index== completedOrdersScreenController.timeList.length -1){
                                                  completedOrdersScreenController.isCustomDateSelected.value = true;
                                                  completedOrdersScreenController.openDatePicker(context);
                                                }else{
                                                  completedOrdersScreenController.isCustomDateSelected.value = false;
                                                }
                                              },
                                              child: Container(
                                                color: whiteColor,
                                                  height:25.h,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(left: 5.w),
                                                    child: Row(
                                                      children: [
                                                        Transform.scale(
                                                          scale: 0.9.h,
                                                          child: Padding(
                                                            padding: EdgeInsets.only(right: 5.w,left: 5.w),
                                                            child: Radio(value: index,
                                                            visualDensity: const VisualDensity(
                                                                horizontal: -2, vertical: 0), 
                                                            activeColor: secondaryColor,
                                                            hoverColor: Colors.grey,
                                                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                            groupValue: completedOrdersScreenController.selectedTime,
                                                            onChanged: (value){
                                                              setState(() {
                                                                    completedOrdersScreenController.selectedTime = value!;  
                                                                });
                                                            }),
                                                          ),
                                                        ),
                                                        CustomText(text: completedOrdersScreenController.timeList[index].toString(),color: completedOrdersScreenController.selectedTime == index ? secondaryColor : textColor,
                                                        fontSize: 16.sp, fontWeight: completedOrdersScreenController.selectedTime == index ? FontWeight.w500 : FontWeight.w400)
                                                      ],
                                                    ),
                                                  )),
                                            );
                                        }),
                                      completedOrdersScreenController.isCustomDateSelected.value ?
                                      Container(
                                        // color: Colors.cyanAccent,
                                        margin: EdgeInsets.only(left:17.w,right: 17.w),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Expanded(child: SizedBox(
                                              height: 30.h,
                                              child: ListTile(
                                                dense: true,horizontalTitleGap: 5.w,
                                                minLeadingWidth: 0,tileColor: Colors.brown,
                                                minVerticalPadding: 0,
                                                enabled: true,
                                                contentPadding: EdgeInsets.zero,
                                                leading: Icon(Icons.calendar_month,color: secondaryColor,size: 18.h),
                                                title: CustomTextfield(controller: completedOrdersScreenController.fromDate,isReadyOnly: true,)))),
                                            Padding(
                                              padding: EdgeInsets.only(left: 12.w,right: 12.w),
                                              child: CustomText(text: 'To'),
                                            ),
                                            Obx(() => Expanded(child: SizedBox(
                                              height: 30.h,
                                              child: ListTile(
                                                dense: true,horizontalTitleGap: 5.w,
                                                minLeadingWidth: 0,tileColor: Colors.brown,
                                                minVerticalPadding: 0,
                                                enabled: true,
                                                contentPadding: EdgeInsets.zero,
                                                leading: Icon(Icons.calendar_month,color: secondaryColor,size: 18.h),
                                                title: CustomTextfield(controller: completedOrdersScreenController.toDate.value,isReadyOnly: true,)))),
                                            )
                                          ],
                                        ),
                                      ) : const SizedBox(),
                                    ],
                                  )
                                  )),
                            Padding(
                              padding: EdgeInsets.only(left: 18.w,right: 18.w,bottom: 20.h,top: 14.h),
                              child: CustomAuthButtonWidget(buttonName: 'Apply',onTap: goBack),
                            )
                          ],
                        ),
                      ),)
                    );
                  },
                ),
              );
            });
        },
        child: CircleAvatar(radius: 19.r,backgroundColor: primaryColor,
        child: Center(
          child: SizedBox(
            height: 17.h,width: 17.h,
            child: SvgPicture.asset('assets/icons/filter_icon.svg')),
        ),),
      ),
      drawer: const Drawer(
        child: CommonDrawer() 
      ),
      body: ListView.builder(
        padding: EdgeInsets.only(bottom: 25.h),
        itemCount: 10,
        itemBuilder: (ctx,index){
        return Padding(
          padding: EdgeInsets.only(top: 10.h,left: 10.w,right: 10.w),
          child: const OrderBox(isCompleted: true),
        );
      }),
    );
  }

}