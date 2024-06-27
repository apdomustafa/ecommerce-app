import 'package:ecommerce_app/features/auth/view/widgets/auth_divider.dart';
import 'package:ecommerce_app/features/auth/view/widgets/sign_up.dart';
import 'package:ecommerce_app/features/auth/view/widgets/social_sign_methods.dart';
import 'package:ecommerce_app/features/auth/view/widgets/user_info_section.dart';
import 'package:ecommerce_app/utils/const/app_texts.dart';
import 'package:ecommerce_app/utils/thems/text_style.dart';
import 'package:ecommerce_app/utils/widgets/custom_button.dart';
import 'package:ecommerce_app/utils/widgets/custom_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

part 'widgets/sign_in_scaffold.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return const _SignInScaffold();
  }
}
