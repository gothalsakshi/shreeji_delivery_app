import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shreeji_delivery_app/theme/colors.dart';
import 'package:shreeji_delivery_app/widgets/custom_text_widget.dart';

class CustomAuthButtonWidget extends StatelessWidget {
  const CustomAuthButtonWidget(
      {super.key, this.buttonName, this.onTap});

  final String? buttonName;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 43.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: primaryColor,
            boxShadow: [
              BoxShadow(
                color: Color(0xffebeae6),
                spreadRadius: 5.r,
                blurRadius: 7.r
              )
            ]),
        child: Center(
            child: CustomText(text: buttonName!,fontSize: 14.sp,fontWeight: FontWeight.w600,color: textColor)),
      ),
    );
  }
}
