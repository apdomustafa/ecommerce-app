import 'package:ecommerce_app/features/auth/view/forgot_pass_view.dart';
import 'package:ecommerce_app/features/auth/view/on_boarding_view.dart';
import 'package:ecommerce_app/features/auth/view/sign_in_view.dart';
import 'package:ecommerce_app/features/auth/view/sign_up_view.dart';
import 'package:ecommerce_app/features/home/views/home_view.dart';
import 'package:flutter/material.dart';

import '../const/app_const.dart';

class AppRoutes {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      // case AppConst.kHomeView:
      //   return MaterialPageRoute(builder: (context) => HomeView());
      case AppConst.kSignInView:
        return MaterialPageRoute(builder: (context) => const SignInView());
      case AppConst.kSignUpView:
        return MaterialPageRoute(builder: (context) => const SignUpView());
      case AppConst.kOnBoardingView:
        return MaterialPageRoute(builder: (context) => const OnBoardingView());
      case AppConst.kHomeView:
        return MaterialPageRoute(builder: (context) => const HomeView());
      case AppConst.kForgotPasswordView:
        return MaterialPageRoute(
            builder: (context) => const ForgotPasswordView());
    }
    return MaterialPageRoute(builder: (context) => const SignInView());
  }
}
