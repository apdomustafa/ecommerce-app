import 'package:ecommerce_app/utils/const/app_texts.dart';
import 'package:ecommerce_app/utils/thems/text_style.dart';
import 'package:flutter/material.dart';

// sign up i the user doesn't have an account
class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
          text: AppTexts.dontHaveAccount,
          style: AppTextStyle.styleNormal16(),
        ),
        TextSpan(
          text: AppTexts.signUp,
          style: AppTextStyle.styleBold16(),
        ),
      ]),
    );
  }
}
