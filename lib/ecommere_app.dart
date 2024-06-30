import 'package:ecommerce_app/core/utils/routes/app_routes.dart';
import 'package:ecommerce_app/core/utils/thems/light_theme.dart';
import 'package:ecommerce_app/features/auth/splash_view.dart';
import 'package:ecommerce_app/features/auth/view/sign_in_view.dart';
import 'package:ecommerce_app/features/auth/view/sign_up_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(423.5, 893),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppThemes.lightTheme,
        onGenerateRoute: AppRoutes.generateRoutes,
        home: const Scaffold(
          body: SignInView(),
        ),
      ),
    );
  }
}
