import 'package:ecommerce_app/features/auth/view/widgets/password_text_field.dart';
import 'package:ecommerce_app/utils/const/app_texts.dart';
import 'package:ecommerce_app/utils/thems/text_style.dart';
import 'package:ecommerce_app/utils/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class UserInfoSection extends StatelessWidget {
  const UserInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppTexts.email,
          style: AppTextStyle.styleNormal16(),
        ),
        Gap(4.h),
        CustomTextField.primary(
            hint: AppTexts.emailHint, onComplate: (value) {}),
        Gap(8.h),
        Text(
          AppTexts.password,
          style: AppTextStyle.styleNormal16(),
        ),
        Gap(4.h),
        const PasswordTextField(),

        Gap(4.h),
        // forgot password
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            AppTexts.forgotPassword,
            style: AppTextStyle.styleBold16(),
          ),
        )
      ],
    );
  }
}
