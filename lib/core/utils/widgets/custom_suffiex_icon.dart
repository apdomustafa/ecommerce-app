import 'package:ecommerce_app/core/utils/colors/app_colors.dart';
import 'package:flutter/material.dart';

class TextFieldSuffixIcon extends StatelessWidget {
  const TextFieldSuffixIcon({super.key, this.hasError});
  final bool? hasError;

  @override
  Widget build(BuildContext context) {
    if (hasError != null) {
      if (hasError!) {
        return const Icon(
          Icons.error_outline_rounded,
          color: AppColors.errorColor,
        );
      } else {
        return const Icon(
          Icons.check_circle_outline_rounded,
          color: Colors.green,
        );
      }
    } else {
      return const SizedBox();
    }
  }
}
