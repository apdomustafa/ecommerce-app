import 'package:ecommerce_app/core/utils/colors/app_colors.dart';
import 'package:ecommerce_app/core/utils/thems/text_style.dart';
import 'package:flutter/material.dart';

<<<<<<< HEAD
extension contextExtension on BuildContext {
  void showErrorMessage({required String message}) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
        backgroundColor: AppColors.primaryColor,
        content: Text(
          message,
          style: AppTextStyle.styleBold16()
              .copyWith(color: Colors.white, decoration: TextDecoration.none),
=======
extension ContextExtension on BuildContext {
  void showErrorMessage({required String message}) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
        backgroundColor: AppColors.errorColor,
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                message,
                style: AppTextStyle.generalMedium16()
                    .copyWith(color: AppColors.color000),
              ),
            ),
            const Icon(
              Icons.error_outline_outlined,
              color: AppColors.color000,
            ),
          ],
        )));
  }

  void showSuccessMessage({required String message}) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
        backgroundColor: AppColors.successColor,
        content: Row(
          children: [
            Expanded(
              child: Text(
                message,
                style: AppTextStyle.generalMedium16()
                    .copyWith(color: AppColors.color000),
              ),
            ),
            const Icon(
              Icons.check_circle_outline,
              color: AppColors.color000,
            )
          ],
>>>>>>> a41a0ff52e267cdebcb8cdd6f9da82c0e6485a13
        )));
  }
}
