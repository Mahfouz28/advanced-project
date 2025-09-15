import 'package:advanced/core/routing/routes.dart';
import 'package:advanced/core/di/dependency_injection.dart';
import 'package:advanced/features/home/ui/screens/home_screen.dart';
import 'package:advanced/features/loginscreen/logic/cubit/cubit/login_cubit.dart';
import 'package:advanced/features/loginscreen/ui/screens/loginscreen.dart';
import 'package:advanced/features/onbordingscreen/onbordingscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRoutar {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    // this arguments to be passed in any screen like this (arguments as    x)
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => Onbordingscreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: Loginscreen(),
          ),
        );

      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No Route defined for ${settings.name}')),
          ),
        );
    }
  }
}
