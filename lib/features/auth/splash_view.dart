import 'package:ecommerce_app/utils/colors/app_colors.dart';
import 'package:ecommerce_app/utils/const/app_texts.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Stack(
        children: [
          SplashShape(
            height: 200,
            width: 200,
            top: -50,
            right: -50,
          ),
          // splashContent(),
          SplashShape(
            height: 200,
            width: 200,
            bottom: -50,
            left: -50,
          ),
        ],
      ),
    );
  }
}

class SplashShape extends StatelessWidget {
  const SplashShape({
    super.key,
    required this.height,
    required this.width,
    this.top,
    this.bottom,
    this.left,
    this.right,
  });
  final double? height, width, top, bottom, left, right;
  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: top,
        bottom: bottom,
        right: right,
        left: left,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              shape: BoxShape.circle, border: Border.all(color: Colors.grey)),
        ));
  }
}

class splashContent extends StatelessWidget {
  const splashContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(100),
            ),
            child: const Center(
              child: Text(
                'f',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'splashFont'),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          RichText(
              text: TextSpan(children: [
            TextSpan(
              text: AppTexts.splashText,
              style: const TextStyle(
                  color: AppColors.headLineColor,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'splashFont'),
            ),
            const TextSpan(
              text: '.',
              style: TextStyle(
                color: AppColors.primaryColor,
                fontSize: 70,
                fontWeight: FontWeight.bold,
              ),
            ),
          ]))
          // Text(
          //   AppTexts.splashText,
          //   style: const TextStyle(
          //       color: AppColors.headLineColor,
          //       fontSize: 24,
          //       fontWeight: FontWeight.bold,
          //       fontFamily: 'splashFont'),
          // ),
          // const Center(
          //   child: Text(
          //     '.',
          //     style: TextStyle(
          //       color: AppColors.primaryColor,
          //       fontSize: 50,
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
