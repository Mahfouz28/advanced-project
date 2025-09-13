import 'package:advanced/core/helpers/extintions.dart';
import 'package:advanced/core/routing/routes.dart';
import 'package:advanced/core/theme/appcolor/app_color.dart';
import 'package:advanced/core/theme/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedBotton extends StatelessWidget {
  const GetStartedBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: TextButton.styleFrom(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: Size(double.infinity, 50.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(16.sp),
        ),
        foregroundColor: Colors.white,
        backgroundColor: AppColor.mainBlue,
      ),
      child: Text('Get Started', style: TextStyles.font16whitesimeBold),
    );
  }
}
