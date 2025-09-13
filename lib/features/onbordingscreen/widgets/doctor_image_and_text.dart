import 'package:advanced/core/theme/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentGeometry.center,
      children: [
        Positioned(
          right: 19,
          child: SvgPicture.asset(
            'assets/svgs/doclogoopacity.svg',
            height: 443.h,
            width: 443.w,
          ),
        ),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.white.withOpacity(0.0)],
              begin: AlignmentGeometry.bottomCenter,
              end: AlignmentGeometry.topCenter,
              stops: [.14, .4],
            ),
          ),
          child: Image.asset('assets/images/onbording_docimage.png'),
        ),
        Positioned(
          right: 0,
          left: 0,
          bottom: 30.h,

          child: Text(
            'Best Doctor \nAppointment App',
            style: TextStyles.font32BlueBold.copyWith(height: 1.4),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
