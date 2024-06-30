import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors/app_colors.dart';

class AppTextStyle {
  static TextStyle styleBold24() {
    return TextStyle(
      color: AppColors.headLineColor,
      fontSize: 28.sp,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle styleNormal16() {
    return TextStyle(
      color: AppColors.titleColor,
      fontSize: 16.sp,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle styleNormal20() {
    return TextStyle(
      color: AppColors.titleColor,
      fontSize: 20.sp,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle styleBold16() {
    return TextStyle(
        color: AppColors.primaryColor,
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline);
  }

  static TextStyle styleBold20() {
    return TextStyle(
        color: AppColors.primaryColor,
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline);
  }

  static TextStyle styleNormal12() {
    return const TextStyle(
      color: AppColors.tertiryColor,
      fontSize: 12,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle styleBold12() {
    return const TextStyle(
      color: AppColors.primaryColor,
      fontSize: 12,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle styleHintText() {
    return const TextStyle(
      color: AppColors.hintColor,
      fontSize: 12,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle styleButtomText() {
    return const TextStyle(
      color: AppColors.buttonTextColor,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );
  }
}
