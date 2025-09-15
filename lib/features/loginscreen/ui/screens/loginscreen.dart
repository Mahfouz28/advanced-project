import 'package:advanced/core/theme/styles/styles.dart';
import 'package:advanced/core/widgets/app_text_botton.dart';
import 'package:advanced/features/loginscreen/data/model/login_req_body.dart';
import 'package:advanced/features/loginscreen/logic/cubit/cubit/login_cubit.dart';
import 'package:advanced/features/loginscreen/ui/widgets/email_and_password.dart';
import 'package:advanced/features/loginscreen/ui/widgets/login_bloc_consumer.dart';
import 'package:advanced/features/loginscreen/ui/widgets/terms_and_signup_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

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
                    const EmailAndPassword(),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
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
                    AppTextButton(
                      text: 'Login',
                      onPressed: () {
                        validateThenLogin(context);
                      },
                    ),
                    35.verticalSpace,
                    TermsAndSignupWidget(),
                    const LoginBlocConsumer(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenLogin(BuildContext context) {
    if (context.read<LoginCubit>().formkey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates(
        LoginReqBody(
          email: context.read<LoginCubit>().emailController.text,
          password: context.read<LoginCubit>().passwordController.text,
        ),
      );
    }
  }
}
