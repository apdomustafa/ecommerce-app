import 'package:ecommerce_app/gen/fonts.gen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors/app_colors.dart';

class AppTextStyle {
  static const String _primaryFont = 'general sans font';
  static const String _secondryFont = 'sf pro text font';
  static const String _thirdFont = 'sf pro disply font';
  static TextStyle generalMedium16() {
    return TextStyle(
      color: AppColors.color900,
      fontSize: 16.sp,
      fontWeight: FontWeight.w500,
      fontFamily: _primaryFont,
    );
  }

  static TextStyle generalMedium12() {
    return TextStyle(
      color: AppColors.color500,
      fontSize: 12.sp,
      fontWeight: FontWeight.w500,
      fontFamily: _primaryFont,
    );
  }

  static TextStyle generalSemiBold16() {
    return TextStyle(
      color: AppColors.color900,
      fontSize: 16.sp,
      fontWeight: FontWeight.w600,
      fontFamily: _primaryFont,
    );
  }

  static TextStyle generalSemiBold14() {
    return TextStyle(
      color: AppColors.color900,
      fontSize: 14.sp,
      fontWeight: FontWeight.w600,
      fontFamily: _primaryFont,
    );
  }

  static TextStyle textSemiBold16() {
    return TextStyle(
      color: AppColors.color900,
      fontSize: 16.sp,
      fontWeight: FontWeight.w600,
      fontFamily: _secondryFont,
    );
  }

  static TextStyle generalMeduim12() {
    return TextStyle(
      color: AppColors.color100,
      fontSize: 12.sp,
      fontWeight: FontWeight.w500,
      fontFamily: _primaryFont,
    );
  }

  static TextStyle generalSemiBold24() {
    return TextStyle(
      color: AppColors.color900,
      fontSize: 24.sp,
      fontWeight: FontWeight.w600,
      fontFamily: _primaryFont,
    );
  }

  static TextStyle generalMedium10() {
    return TextStyle(
      color: AppColors.color000,
      fontSize: 10.sp,
      fontWeight: FontWeight.w600,
      fontFamily: _primaryFont,
    );
  }

  static TextStyle textRegular16() {
    return TextStyle(
      color: AppColors.color900,
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      fontFamily: _secondryFont,
    );
  }

  static TextStyle generalRegular12() {
    return TextStyle(
      color: AppColors.color500,
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      fontFamily: _primaryFont,
    );
  }

  static TextStyle generalRegular16() {
    return TextStyle(
      color: AppColors.color400,
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      fontFamily: _primaryFont,
    );
  }

  static TextStyle generalRegular14() {
    return TextStyle(
      color: AppColors.color500,
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      fontFamily: _primaryFont,
    );
  }

  static TextStyle generalSemiBold64() {
    return TextStyle(
      color: AppColors.color900,
      fontSize: 64.sp,
      fontWeight: FontWeight.w600,
      fontFamily: _primaryFont,
    );
  }

  static TextStyle generalSemiBold20() {
    return TextStyle(
      color: AppColors.color900,
      fontSize: 20.sp,
      fontWeight: FontWeight.w600,
      fontFamily: _primaryFont,
    );
  }

  static TextStyle generalSemiBold32() {
    return TextStyle(
      color: AppColors.color900,
      fontSize: 32.sp,
      fontWeight: FontWeight.w600,
      fontFamily: _primaryFont,
    );
  }

  static TextStyle generalMedium14() {
    return TextStyle(
      color: AppColors.color900,
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
      fontFamily: _primaryFont,
    );
  }

  static TextStyle generalMedium20() {
    return TextStyle(
      color: AppColors.color900,
      fontSize: 20.sp,
      fontWeight: FontWeight.w500,
      fontFamily: _primaryFont,
    );
  }
}
