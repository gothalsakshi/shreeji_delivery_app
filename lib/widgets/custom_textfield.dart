import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shreeji_delivery_app/theme/colors.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key, this.controller,
    this.onChanged,
    this.validator,
    this.onSaved,
    this.labelText,
    this.hintText,
    this.style,
    this.labelStyle,
    this.hintStyle,
    this.errorStyle,
    this.errorMaxLines,
    this.isPassword = false,
    this.prefixAsset,
    this.suffixIcon,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.textInputType = TextInputType.text,
    this.prefixIconConstraints,
    this.contentPadding,
    this.maxLines,
    this.initialValue,
    this.textAlignVertical,this.prefixIcon});

  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final VoidCallback? onEditingComplete;
  final void Function(String)? onFieldSubmitted;
  final String? labelText;
  final String? hintText;
  final TextStyle? style;
  final TextStyle? labelStyle;
  final TextStyle? hintStyle;
  final TextStyle? errorStyle;
  final int? errorMaxLines;
  final bool isPassword;
  final String? prefixAsset;
  final Widget? suffixIcon;
  final TextInputType textInputType;
  final BoxConstraints? prefixIconConstraints;
  final EdgeInsets? contentPadding;
  final int? maxLines;
  final String? initialValue;
  final TextAlignVertical? textAlignVertical;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        prefixAsset != null ?
        Container(
            margin: EdgeInsets.only(right: 14.w),
            height: 17.h,
            width: 17.h,
            child: Center(
                child: SvgPicture.asset(prefixAsset!,
                    fit: BoxFit.fill))) : const SizedBox(),
        Expanded(
          child: SizedBox(
            child: TextFormField(
              maxLines: maxLines,
              cursorColor: primaryColor,
              obscureText: isPassword,
              decoration: InputDecoration(
                suffixIcon: suffixIcon,
                  prefixIcon: prefixIcon,
                  prefixIconConstraints: BoxConstraints(),
                  suffixIconConstraints: BoxConstraints(),
                  hintText: hintText,
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: textColor.withOpacity(0.2))),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color:  textColor.withOpacity(0.2))),
                  isDense: true,
                  errorStyle: GoogleFonts.montserrat(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: textColor.withOpacity(0.5)),
                  labelStyle: GoogleFonts.montserrat(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: textColor.withOpacity(0.5)),
                  hintStyle: GoogleFonts.montserrat(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: textColor.withOpacity(0.5)),
                  contentPadding: EdgeInsets.only(bottom: 4.h)),
            ),
          ),
        ),
      ],
    );
  }
}
