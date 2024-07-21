import 'package:ecommerce_app/core/utils/colors/app_colors.dart';
import 'package:ecommerce_app/core/utils/const/app_const.dart';
import 'package:ecommerce_app/core/utils/const/app_texts.dart';
import 'package:ecommerce_app/core/utils/helper_method/context_extension.dart';
import 'package:ecommerce_app/core/utils/thems/text_style.dart';
import 'package:ecommerce_app/core/utils/widgets/custom_button.dart';
import 'package:ecommerce_app/core/utils/widgets/custom_header.dart';
import 'package:ecommerce_app/core/utils/widgets/custom_loading.dart';
import 'package:ecommerce_app/core/utils/widgets/custom_text_field.dart';
import 'package:ecommerce_app/features/auth/model/user_info_model.dart';
import 'package:ecommerce_app/features/auth/model/user_validation.dart';
import 'package:ecommerce_app/features/auth/view/widgets/password_text_field.dart';
import 'package:ecommerce_app/features/auth/view/widgets/social_sign_buttons.dart';
import 'package:ecommerce_app/features/auth/view/widgets/texts_combination.dart';
import 'package:ecommerce_app/features/auth/view_model/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

import '../model/auth_global_keys.dart';

part 'widgets/sign_in_scaffold.dart';
part 'widgets/sign_in.dart';
part 'widgets/auth_divider.dart';
part 'widgets/go_to_sign_up_view.dart';
part 'widgets/sign_in_user_info_section.dart';
part 'widgets/forgot_pass.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserInfoModel()),
        ChangeNotifierProvider(create: (_) => AuthGlobalKeys()),
        ChangeNotifierProvider(create: (_) => AuthUserValidation()),
      ],
      child: BlocProvider(
        create: (context) => AuthBloc(),
        child: Builder(builder: (context) {
          return BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state is AuthLoading) {
                isLoading = true;
              } else if (state is AuthFailed) {
                isLoading = false;
                context.showErrorMessage(message: state.message);
              } else if (state is AuthSuccess) {
                Navigator.pushNamed(context, AppConst.kHomeView);
              }
            },
            builder: (context, state) {
              return CustomLoading(
                isLoading: isLoading,
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
            },
          );
        }),
      ),
    );
  }
}
