import 'package:ecommerce_app/core/utils/colors/app_colors.dart';
import 'package:ecommerce_app/core/utils/thems/text_style.dart';
import 'package:flutter/material.dart';

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
        )));
  }
}
