import 'package:advanced/core/theme/appcolor/app_color.dart';
import 'package:advanced/core/theme/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final String? Function(String?)? validator;
  final String? labelText;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool isobscureText;
  final TextInputType? keyboardType;
  final TextEditingController? controller;

  const AppTextFormField({
    super.key,
    this.labelText,
    this.prefixIcon,
    this.suffixIcon,
    this.isobscureText = false,
    this.keyboardType,
    this.controller,
    this.hintText,
    this.contentPadding,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColor.mainBlue,

      validator: validator,
      obscureText: isobscureText,
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        fillColor: Colors.transparent,
        filled: true,
        contentPadding:
            contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        isDense: true,
        hintStyle: TextStyles.font14LightgrayMedium,
        hintText: hintText,
        labelText: labelText,
        prefixIcon: prefixIcon,
        prefixIconColor: AppColor.mainBlue,
        suffixIconColor: AppColor.mainBlue,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.r)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(color: AppColor.lighterGray),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.mainBlue),
          borderRadius: BorderRadius.circular(16.r),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: const BorderSide(color: Colors.red),
        ),
      ),
      style: TextStyles.font14DarkBlueMedium,
    );
  }
}
