import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../colors/app_colors.dart';
import '../thems/text_style.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final Color backgroundColor, textColor;
  final bool? withIcon;

  const CustomButton._intern(
      {this.onPressed,
      required this.text,
      required this.backgroundColor,
      required this.textColor,
      this.withIcon});

  factory CustomButton.primary(
      {required VoidCallback onPressed, required String text}) {
    return CustomButton._intern(
        onPressed: onPressed,
        text: text,
        backgroundColor: AppColors.color900,
        textColor: AppColors.color000);
  }

  factory CustomButton.secondry({required String text}) {
    return CustomButton._intern(
        text: text,
        backgroundColor: AppColors.color200,
        textColor: AppColors.color000);
  }

  factory CustomButton.onBoarding(VoidCallback onPressed, String text) {
    return CustomButton._intern(
        onPressed: onPressed,
        text: text,
        withIcon: true,
        backgroundColor: AppColors.color900,
        textColor: AppColors.color000);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: AppTextStyle.generalMedium16()
                    .copyWith(color: AppColors.color000),
              ),
              const Gap(10),
              Icon(
                withIcon == null ? null : Icons.arrow_forward,
                color: AppColors.color000,
              ),
            ],
          )),
    );
  }
}
