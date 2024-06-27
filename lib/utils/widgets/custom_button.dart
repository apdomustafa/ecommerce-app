import 'package:ecommerce_app/utils/colors/app_colors.dart';
import 'package:ecommerce_app/utils/thems/text_style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color backgroundColor, textColor;

  const CustomButton._intern(
      {required this.onPressed,
      required this.text,
      required this.backgroundColor,
      required this.textColor});

  factory CustomButton.primary(VoidCallback onPressed, String text) {
    return CustomButton._intern(
        onPressed: onPressed,
        text: text,
        backgroundColor: AppColors.primaryColor,
        textColor: AppColors.buttonTextColor);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 12),
            backgroundColor: backgroundColor,
          ),
          child: Text(
            text,
            style: AppTextStyle.styleButtomText().copyWith(color: textColor),
          )),
    );
  }
}
