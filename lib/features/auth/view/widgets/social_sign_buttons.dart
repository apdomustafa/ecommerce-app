import 'package:ecommerce_app/core/utils/colors/app_colors.dart';
import 'package:ecommerce_app/core/utils/thems/text_style.dart';
import 'package:ecommerce_app/gen/assets.gen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get_it/get_it.dart';
part 'social_button.dart';

class SocialSignInButtons extends StatelessWidget {
  const SocialSignInButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final getIt = GetIt.instance;
    return Column(
      children: [
        _SocialButton(
          image: getIt<$AssetsIconsGen>().googleIconSvg,
          text: 'Login with Google',
          textColor: AppColors.color900,
          backgroundColor: AppColors.color000,
        ),
        Gap(16.h),
        _SocialButton(
          image: getIt<$AssetsIconsGen>().facebookLogo,
          text: 'Login with Facebook',
          textColor: AppColors.color000,
          backgroundColor: AppColors.blueColor,
        ),
      ],
    );
  }
}
