import 'package:ecommerce_app/utils/colors/app_colors.dart';
import 'package:ecommerce_app/utils/thems/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({super.key});

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool isVisable = false;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        hintText: '*********',
        hintStyle: AppTextStyle.styleHintText(),
        suffixIcon: IconButton(
            onPressed: () {},
            icon: isVisable
                ? const Icon(Icons.visibility)
                : const Icon(Icons.visibility_off)),
        enabledBorder: outLineBorder(AppColors.tertiryColor),
        focusedBorder: outLineBorder(AppColors.primaryColor),
        errorBorder: outLineBorder(AppColors.errorColor),
      ),
    );
  }

  OutlineInputBorder outLineBorder(Color color) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(32.r),
        borderSide: BorderSide(
          color: color,
        ));
  }
}
