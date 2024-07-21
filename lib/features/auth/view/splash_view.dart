import 'package:ecommerce_app/core/utils/colors/app_colors.dart';
import 'package:ecommerce_app/core/utils/const/app_const.dart';
import 'package:ecommerce_app/core/utils/const/app_texts.dart';
import 'package:ecommerce_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, AppConst.kOnBoardingView);
    });
  }

  @override
  Widget build(BuildContext context) {
    final getIt = GetIt.instance;

    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        color: AppColors.color900,
        child: Stack(
          children: [
            Positioned(
                top: -60.h,
                child: SvgPicture.asset(
                  getIt<$AssetsIconsGen>().splash1,
                  height: 750.h,
                )),
            Align(
              alignment: Alignment.center,
              child: SvgPicture.asset(getIt<$AssetsIconsGen>().splash2),
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 65),
                child: CircularProgressIndicator(
                  color: AppColors.color000,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
