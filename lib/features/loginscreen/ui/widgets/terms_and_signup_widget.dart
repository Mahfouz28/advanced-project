import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsAndSignupWidget extends StatelessWidget {
  const TermsAndSignupWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Terms & Privacy
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: const TextStyle(fontSize: 14, color: Colors.black54),
            children: [
              const TextSpan(text: "By logging, you agree to our "),
              TextSpan(
                text: "Terms & Conditions",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    // TODO: Navigate to Terms screen
                  },
              ),
              const TextSpan(text: " and "),
              TextSpan(
                text: "Privacy Policy.",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                recognizer: TapGestureRecognizer()..onTap = () {},
              ),
            ],
          ),
        ),
        35.verticalSpace,
        // Already have account
        RichText(
          text: TextSpan(
            style: const TextStyle(fontSize: 14, color: Colors.black54),
            children: [
              const TextSpan(text: "Already have an account yet? "),
              TextSpan(
                text: "Sign Up",
                style: const TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
                recognizer: TapGestureRecognizer()..onTap = () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
