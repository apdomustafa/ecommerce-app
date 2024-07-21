part of 'package:ecommerce_app/features/auth/view/sign_up_view.dart';

class _SignUpScaffold extends StatelessWidget {
  const _SignUpScaffold(
      {required this.header,
      required this.userInfoSection,
      required this.termsAndCondition,
      required this.signUpButton,
      required this.authDivider,
      required this.socialSignInMethods,
      required this.goToSignInView});

  final CustomHeader header;
  final _SignUpUserInfoSection userInfoSection;
  final _TermsAndCondition termsAndCondition;
  final _SignUp signUpButton;
  final AuthDivider authDivider;
  final SocialSignInButtons socialSignInMethods;
  final _GoToSignInView goToSignInView;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              Expanded(
                flex: 40,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Gap(12.h),
                      header,
                      Gap(24.h),
                      userInfoSection,
                      Gap(12.h),
                      termsAndCondition,
                      Gap(24.h),
                      signUpButton,
                      Gap(24.h),
                      authDivider,
                      Gap(24.h),
                      socialSignInMethods,
                    ],
                  ),
                ),
              ),
              const Spacer(
                flex: 2,
              ),
              Column(
                children: [
                  goToSignInView,
                  Gap(12.h),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
