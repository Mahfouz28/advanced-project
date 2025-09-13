import 'package:advanced/core/routing/routes.dart';
import 'package:advanced/features/loginscreen/ui/screens/loginscreen.dart';
import 'package:advanced/features/onbordingscreen/onbordingscreen.dart';
import 'package:advanced/features/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoutar {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    // this arguments to be passed in any screen like this (arguments as    x)
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => Onbordingscreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => Loginscreen());
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      // case Routes.registerScreen:
      //   return MaterialPageRoute(builder: (_) => registerScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No Route defined for ${settings.name}')),
          ),
        );
    }
  }
}
