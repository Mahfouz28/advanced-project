import 'package:advanced/core/theme/styles/styles.dart';
import 'package:advanced/features/onbordingscreen/widgets/doc_logo_and_name.dart';
import 'package:advanced/features/onbordingscreen/widgets/doctor_image_and_text.dart';
import 'package:advanced/features/onbordingscreen/widgets/get_started_botton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Onbordingscreen extends StatelessWidget {
  const Onbordingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              DocLogoAndName(),
              40.verticalSpace,
              DoctorImageAndText(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0.r),
                child: Column(
                  children: [
                    Text(
                      'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                      textAlign: TextAlign.center,
                      style: TextStyles.font13BlackRegular.copyWith(
                        height: 1.5,
                      ),
                    ),
                    30.verticalSpace,
                    GetStartedBotton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
