import 'package:ecommerce_app/core/utils/colors/app_colors.dart';
import 'package:ecommerce_app/core/utils/const/app_const.dart';
import 'package:ecommerce_app/core/utils/helper_method/context_extension.dart';
import 'package:ecommerce_app/core/utils/thems/text_style.dart';
import 'package:ecommerce_app/core/utils/widgets/custom_button.dart';
import 'package:ecommerce_app/core/utils/widgets/custom_header.dart';
import 'package:ecommerce_app/core/utils/widgets/custom_loading.dart';
import 'package:ecommerce_app/core/utils/widgets/custom_text_field.dart';
import 'package:ecommerce_app/features/auth/view/sign_in_view.dart';
import 'package:ecommerce_app/features/auth/view_model/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({super.key});

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  TextEditingController controller = TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
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
              context.showSuccessMessage(
                  message: 'Password reset email sent! Check your email.');
              Navigator.pushReplacementNamed(context, AppConst.kSignInView);
            }
          },
          builder: (context, state) => CustomLoading(
            isLoading: isLoading,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: AppColors.color000,
                leading: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back)),
                elevation: 0,
              ),
              body: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomHeader(
                        firstText: 'Forgot password',
                        secondText:
                            'Enter your email for the verification process.\nWe will send 4 digits code to your email.'),
                    Gap(24.h),
                    Text(
                      'Email',
                      style: AppTextStyle.generalMedium16(),
                    ),
                    Gap(4.h),
                    CustomTextField.primary(
                        hint: 'enter your email address',
                        controller: controller,
                        onComplate: (value) {}),
                    const Spacer(),
                    CustomButton.primary(
                        onPressed: () {
                          BlocProvider.of<AuthBloc>(context).add(
                              AuthResetPassword(email: controller.text.trim()));
                        },
                        text: 'Send Code')
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
