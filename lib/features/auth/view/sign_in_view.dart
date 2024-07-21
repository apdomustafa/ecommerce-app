import 'package:ecommerce_app/core/utils/colors/app_colors.dart';
import 'package:ecommerce_app/core/utils/const/app_const.dart';
import 'package:ecommerce_app/core/utils/const/app_texts.dart';
import 'package:ecommerce_app/core/utils/thems/text_style.dart';
import 'package:ecommerce_app/core/utils/widgets/custom_button.dart';
import 'package:ecommerce_app/core/utils/widgets/custom_header.dart';
import 'package:ecommerce_app/core/utils/widgets/custom_text_field.dart';
import 'package:ecommerce_app/features/auth/model/user_info_model.dart';
import 'package:ecommerce_app/features/auth/model/user_validation.dart';
import 'package:ecommerce_app/features/auth/view/sign_up_view.dart';
import 'package:ecommerce_app/features/auth/view/widgets/password_text_field.dart';
import 'package:ecommerce_app/features/auth/view/widgets/social_sign_buttons.dart';
import 'package:ecommerce_app/features/auth/view/widgets/texts_combination.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';

import '../model/auth_global_keys.dart';

part 'widgets/sign_in_scaffold.dart';
part 'widgets/sign_in.dart';
part 'widgets/auth_divider.dart';
part 'widgets/go_to_sign_up_view.dart';
part 'widgets/sign_in_user_info_section.dart';
part 'widgets/forgot_pass.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserInfoModel()),
        ChangeNotifierProvider(create: (_) => AuthGlobalKeys()),
        ChangeNotifierProvider(create: (_) => AuthUserValidation()),
      ],
      child: _SignInScaffold(
        header: CustomHeader(
            firstText: AppTexts.loginMessage,
            secondText: AppTexts.welcomMessage),
        userInfoSection: const _SignInUserInfoSection(),
        forgotPasswordASection: const _ForgotPasswordSection(),
        signInButton: const _SignIn(),
        authDivider: AuthDivider(
          text: AppTexts.logIn,
        ),
        socialSignInMethods: const SocialSignInButtons(),
        goToSignUpView: const _GoToSignUpView(),
      ),
    );
  }
}
