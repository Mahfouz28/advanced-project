import 'package:advanced/core/routing/app_routar.dart';
import 'package:advanced/core/routing/routes.dart';
import 'package:advanced/core/theme/appcolor/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  final AppRoutar appRoutar;

  const DocApp({super.key, required this.appRoutar});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: Size(375, 812),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: AppColor.mainBlue,
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: Routes.splash,
        onGenerateRoute: appRoutar.generateRoute,
      ),
    );
  }
}
