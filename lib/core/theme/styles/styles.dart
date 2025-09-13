import 'package:advanced/core/theme/appcolor/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static final TextStyle font24Black700Weight = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );
  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: AppColor.mainBlue,
  );
  static TextStyle font13BlackRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w300,
    color: AppColor.gray,
  );
  static TextStyle font16whitesimeBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
}
