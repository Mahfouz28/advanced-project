import 'package:advanced/core/theme/appcolor/app_color.dart';
import 'package:advanced/core/theme/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final TextStyle? textStyle;
  final Color? backgroundColor;
  // final EdgeInsetsGeometry padding;

  const AppTextButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.textStyle,
    this.backgroundColor,
    // this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52.h,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          // padding: padding,
          backgroundColor: backgroundColor ?? AppColor.mainBlue,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Text(text, style: textStyle ?? TextStyles.font16WhiteSimeBold),
      ),
    );
  }
}
