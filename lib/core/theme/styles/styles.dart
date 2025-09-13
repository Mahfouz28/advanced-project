import 'package:advanced/core/theme/appcolor/app_color.dart';
import 'package:advanced/core/theme/font_weight_helper.dart';
import 'package:flutter/material.dart';

class TextStyles {
  static final TextStyle font24Black700Weight = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );
  static TextStyle font16WhiteSimeBold = TextStyle(
    fontSize: 16,
    fontWeight: FontWeightHelper.semiBold,
    color: Colors.white,
  );
  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32,
    fontWeight: FontWeightHelper.bold,
    color: AppColor.mainBlue,
  );
  static TextStyle font13BlackRegular = TextStyle(
    fontSize: 13,
    fontWeight: FontWeightHelper.regular,
    color: AppColor.gray,
  );
  static TextStyle font16whitesimeBold = TextStyle(
    fontSize: 16,
    fontWeight: FontWeightHelper.semiBold,
    color: Colors.white,
  );
  static final TextStyle font24BlueBold = TextStyle(
    fontSize: 24,
    fontWeight: FontWeightHelper.bold,
    color: AppColor.mainBlue,
  );
  static final TextStyle font16greyRegular = TextStyle(
    fontSize: 16,
    fontWeight: FontWeightHelper.regular,
    color: AppColor.gray,
  );
  static final TextStyle font14DarkBlueMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeightHelper.medium,
    color: AppColor.darkBlue,
  );
  static final TextStyle font14LightgrayMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeightHelper.medium,
    color: AppColor.lightGray,
  );
  static final TextStyle font12MainBlueRegular = TextStyle(
    fontSize: 12,
    fontWeight: FontWeightHelper.regular,
    color: AppColor.mainBlue,
  );
}
