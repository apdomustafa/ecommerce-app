import 'package:ecommerce_app/utils/colors/app_colors.dart';
import 'package:ecommerce_app/utils/const/type_def.dart';
import 'package:ecommerce_app/utils/thems/text_style.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final Function1 onComplate;
  final bool isObscure;
  final Widget? suffixIcon = null;
  final Widget? preffixIcon = null;

  const CustomTextField._internal(
      {required this.hint,
      required this.onComplate,
      required this.isObscure,
      suffixIcon,
      preffixIcon});

  factory CustomTextField.primary(
      {required String hint, required Function1 onComplate}) {
    return CustomTextField._internal(
        hint: hint, onComplate: onComplate, isObscure: false);
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        hintText: hint,
        hintStyle: AppTextStyle.styleHintText(),
        suffixIcon: suffixIcon,
        enabledBorder: outLineBorder(AppColors.tertiryColor),
        focusedBorder: outLineBorder(AppColors.primaryColor),
        errorBorder: outLineBorder(AppColors.errorColor),
      ),
    );
  }

  OutlineInputBorder outLineBorder(Color color) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(32),
        borderSide: BorderSide(
          color: color,
        ));
  }
}
