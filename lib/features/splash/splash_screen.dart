import 'dart:async';
import 'package:advanced/core/helpers/extintions.dart';
import 'package:advanced/core/routing/routes.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();

    // Start fade-in after a short delay
    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {
        _opacity = 1.0;
      });
    });

    // Navigate to home after animation
    Timer(const Duration(seconds: 2), () {
      context.pushReplacementNamed(Routes.onboarding);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: AnimatedOpacity(
          opacity: _opacity,
          duration: const Duration(seconds: 1), // fade duration
          curve: Curves.easeInOut,
          child: Image.asset("assets/images/Splash Screen.png"),
        ),
      ),
    );
  }
}
