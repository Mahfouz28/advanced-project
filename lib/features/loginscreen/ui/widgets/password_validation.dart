import 'package:advanced/core/theme/appcolor/app_color.dart';
import 'package:advanced/core/theme/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordValidation extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasNumber;
  final bool hasSpecialCharacter;
  final bool hasMinLength;

  const PasswordValidation({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasNumber,
    required this.hasSpecialCharacter,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildvalidationRow('At least 1 lowercase letter', hasLowerCase),
        2.verticalSpace,
        buildvalidationRow('At least 1 uppercase letter', hasUpperCase),
        2.verticalSpace,
        buildvalidationRow('At least 1 number', hasNumber),
        2.verticalSpace,
        buildvalidationRow('At least 1 special character', hasSpecialCharacter),
        2.verticalSpace,
        buildvalidationRow('At least 8 characters', hasMinLength),
      ],
    );
  }

  buildvalidationRow(String text, bool hasVaildated) {
    return Row(
      children: [
        CircleAvatar(radius: 2.5, backgroundColor: AppColor.gray),
        6.horizontalSpace,
        Text(
          text,
          style: TextStyles.font12MainBlueRegular.copyWith(
            decoration: hasVaildated
                ? TextDecoration.lineThrough
                : TextDecoration.none,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasVaildated ? AppColor.gray : AppColor.darkBlue,
          ),
        ),
      ],
    );
  }
}
