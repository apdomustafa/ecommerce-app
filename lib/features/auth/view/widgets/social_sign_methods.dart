import 'package:ecommerce_app/core/utils/colors/app_colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
part 'social_button.dart';

class SocialSignInMethods extends StatelessWidget {
  const SocialSignInMethods({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const _SocialButton(
          image: 'assets/icons/apple icon.png',
        ),
        Gap(12.w),
        const _SocialButton(
          image: 'assets/icons/google icon.png',
        ),
        Gap(12.w),
        const _SocialButton(
          image: 'assets/icons/facebook icon.png',
        ),
      ],
    );
  }
}
