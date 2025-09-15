import 'package:advanced/core/helpers/extintions.dart';
import 'package:advanced/core/routing/routes.dart';
import 'package:advanced/core/theme/appcolor/app_color.dart';
import 'package:advanced/core/theme/styles/styles.dart';
import 'package:advanced/features/loginscreen/logic/cubit/cubit/login_cubit.dart';
import 'package:advanced/features/loginscreen/logic/cubit/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocConsumer extends StatelessWidget {
  const LoginBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Failure || current is Success,

      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(color: AppColor.mainBlue),
              ),
            );
          },
          success: (data) {
            context.pop();
            context.pushNamed(Routes.homeScreen);
          },
          failure: (error) {
            Navigator.pop(context);

            showGeneralDialog(
              context: context,
              barrierDismissible: true,
              barrierLabel: '',
              transitionDuration: const Duration(milliseconds: 300),
              pageBuilder: (context, animation, secondaryAnimation) {
                return Center(
                  child: Material(
                    color: Colors.transparent,
                    child: ScaleTransition(
                      scale: CurvedAnimation(
                        parent: animation,
                        curve: Curves.easeOutBack,
                      ),
                      child: AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        titlePadding: const EdgeInsets.only(top: 20),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 16,
                        ),
                        title: Column(
                          children: [
                            CircleAvatar(
                              radius: 28,
                              backgroundColor: Colors.red.withOpacity(0.1),
                              child: const Icon(
                                Icons.error,
                                color: Colors.red,
                                size: 30,
                              ),
                            ),
                            const SizedBox(height: 12),
                            Text(
                              "Oops!",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.red.shade700,
                              ),
                            ),
                          ],
                        ),
                        content: Text(
                          error,
                          style: TextStyles.font15BlueMedium.copyWith(
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        actionsAlignment: MainAxisAlignment.center,
                        actions: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColor.mainBlue,
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 24,
                                vertical: 10,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            onPressed: () => Navigator.pop(context),
                            child: const Text("Got it"),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
        );
      },
      child: SizedBox.shrink(),
    );
  }
}
