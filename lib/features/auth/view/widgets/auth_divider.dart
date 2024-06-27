import 'package:ecommerce_app/utils/colors/app_colors.dart';
import 'package:ecommerce_app/utils/const/app_texts.dart';
import 'package:ecommerce_app/utils/thems/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthDivider extends StatelessWidget {
  const AuthDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: AppColors.tertiryColor,
              indent: 38.w,
              endIndent: 4.w,
            ),
          ),
          Text(
            AppTexts.signInWith,
            style: AppTextStyle.styleNormal12(),
          ),
          Expanded(
            child: Divider(
              color: AppColors.tertiryColor,
              indent: 4.w,
              endIndent: 38.w,
            ),
          ),
        ],
      ),
    );
  }
}
