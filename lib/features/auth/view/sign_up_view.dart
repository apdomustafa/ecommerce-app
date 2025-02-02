import 'package:ecommerce_app/core/services/auth/auth_methods/google_sign_in.dart';
import 'package:ecommerce_app/core/services/auth/firebase_auth/auth_firebase.dart';
import 'package:ecommerce_app/core/utils/colors/app_colors.dart';
import 'package:ecommerce_app/core/utils/const/app_const.dart';
import 'package:ecommerce_app/core/utils/const/app_texts.dart';
import 'package:ecommerce_app/core/utils/helper_method/context_extension.dart';
import 'package:ecommerce_app/core/utils/thems/text_style.dart';
import 'package:ecommerce_app/core/utils/widgets/custom_button.dart';
import 'package:ecommerce_app/core/utils/widgets/custom_header.dart';
import 'package:ecommerce_app/core/utils/widgets/custom_loading.dart';
import 'package:ecommerce_app/core/utils/widgets/custom_text_field.dart';
import 'package:ecommerce_app/features/auth/model/auth_global_keys.dart';
import 'package:ecommerce_app/features/auth/model/user_info_model.dart';
import 'package:ecommerce_app/features/auth/model/user_validation.dart';
import 'package:ecommerce_app/features/auth/view/sign_in_view.dart';
import 'package:ecommerce_app/features/auth/view/widgets/password_text_field.dart';
import 'package:ecommerce_app/features/auth/view/widgets/social_sign_buttons.dart';
import 'package:ecommerce_app/features/auth/view/widgets/texts_combination.dart';
import 'package:ecommerce_app/features/auth/view_model/bloc/auth_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

part 'widgets/sign_up_scaffold.dart';
part 'widgets/sign_up.dart';
part 'widgets/sign_up_user_info_section.dart';
part 'widgets/termsAndConditions.dart';
part 'widgets/go_to_sign_in_view.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
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
                isLoading = false;
                context.showSuccessMessage(
                    message: 'Account is created successfully');
                Navigator.pop(context);
              }
            },
            builder: (context, state) => CustomLoading(
              isLoading: isLoading,
              child: _SignUpScaffold(
                header: CustomHeader(
                    firstText: AppTexts.createAccount,
                    secondText: AppTexts.signUpDescription),
                userInfoSection: const _SignUpUserInfoSection(),
                termsAndCondition: const _TermsAndCondition(),
                signUpButton: const _SignUp(),
                authDivider: AuthDivider(
                  text: AppTexts.signUpWith,
                ),
                socialSignInMethods: const SocialSignInButtons(),
                goToSignInView: const _GoToSignInView(),
              ),
            ),
          );
        }),
      ),
    );
  }
}
