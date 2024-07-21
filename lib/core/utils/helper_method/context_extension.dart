import 'package:ecommerce_app/core/utils/colors/app_colors.dart';
import 'package:ecommerce_app/core/utils/thems/text_style.dart';
import 'package:flutter/material.dart';

extension contextExtension on BuildContext {
  void showErrorMessage({required String message}) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
        backgroundColor: AppColors.primaryColor,
        content: Text(
          message,
          style: AppTextStyle.styleBold16()
              .copyWith(color: Colors.white, decoration: TextDecoration.none),
        )));
  }
}
