import 'package:ecommerce_app/core/utils/colors/app_colors.dart';
import 'package:ecommerce_app/core/utils/thems/text_style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextCombination extends StatelessWidget {
  const TextCombination(
      {super.key,
      required this.firstText,
      required this.secondText,
      required this.onPressed});
  final String firstText, secondText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: firstText,
          style: AppTextStyle.generalRegular14(),
          children: [
            TextSpan(
                recognizer: TapGestureRecognizer()..onTap = onPressed,
                text: secondText,
                style: AppTextStyle.generalRegular14().copyWith(
                    color: AppColors.color900,
                    decoration: TextDecoration.underline)),
          ]),
    );
  }
}
