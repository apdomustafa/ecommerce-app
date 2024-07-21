import 'package:ecommerce_app/core/utils/colors/app_colors.dart';
import 'package:ecommerce_app/core/utils/const/app_const.dart';
import 'package:ecommerce_app/core/utils/widgets/custom_button.dart';
import 'package:ecommerce_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final getIt = GetIt.instance;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12, left: 24),
                    child: Text(
                      'Define\nyourself in\nyour unique\nway.',
                      style: TextStyle(
                          fontFamily: 'general sans font',
                          fontWeight: FontWeight.w600,
                          fontSize: 64.sp,
                          height: 0.8,
                          color: AppColors.color900),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Image.asset(
                      'assets/icons/on_boarding4.png',
                      height: 697.h,
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 22),
                child: CustomButton.onBoarding(() {
                  Navigator.pushNamed(context, AppConst.kSignInView);
                }, 'Get Started'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
