import 'package:ecommerce_app/features/auth/view/widgets/social_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class SocialSignInMethods extends StatelessWidget {
  const SocialSignInMethods({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SocialButton(
          image: 'assets/icons/apple icon.png',
        ),
        Gap(12.w),
        const SocialButton(
          image: 'assets/icons/google icon.png',
        ),
        Gap(12.w),
        const SocialButton(
          image: 'assets/icons/facebook icon.png',
        ),
      ],
    );
  }
}
