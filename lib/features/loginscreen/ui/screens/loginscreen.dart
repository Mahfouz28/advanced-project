import 'package:advanced/core/theme/styles/styles.dart';
import 'package:advanced/core/widgets/app_text_botton.dart';
import 'package:advanced/core/widgets/app_text_form_field.dart';
import 'package:advanced/features/loginscreen/ui/widgets/terms_and_signup_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  bool isObscure = true;
  final formkey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(
            horizontal: 30.w,
            vertical: 30.h,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome Back', style: TextStyles.font24BlueBold),
                8.verticalSpace,
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last\n logged in.',
                  style: TextStyles.font16greyRegular.copyWith(height: 1.7),
                ),
                36.verticalSpace,
                Column(
                  children: [
                    AppTextFormField(
                      isobscureText: false,
                      controller: emailController,
                      hintText: 'Email',
                      keyboardType: TextInputType.emailAddress,
                    ),
                    16.verticalSpace,
                    AppTextFormField(
                      isobscureText: isObscure,
                      controller: passwordController,
                      hintText: 'Password',
                      keyboardType: TextInputType.visiblePassword,
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isObscure = !isObscure;
                          });
                        },
                        icon: Icon(
                          isObscure
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                        ),
                      ),
                    ),
                    25.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Checkbox(value: , onChanged: onChanged),
                        Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot Password?',
                            style: TextStyles.font12MainBlueRegular,
                          ),
                        ),
                      ],
                    ),
                    32.verticalSpace,
                    AppTextButton(text: 'Login', onPressed: () {}),
                    35.verticalSpace,
                    TermsAndSignupWidget(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
