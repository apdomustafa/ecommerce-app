part of 'package:ecommerce_app/features/auth/view/sign_in_view.dart';

class _SignInScaffold extends StatelessWidget {
  const _SignInScaffold(
      {required this.header,
      required this.userInfoSection,
      required this.forgotPasswordASection,
      required this.signInButton,
      required this.authDivider,
      required this.socialSignInMethods,
      required this.goToSignUpView});
  final CustomHeader header;
  final _SignInUserInfoSection userInfoSection;
  final _ForgotPasswordSection forgotPasswordASection;
  final _SignIn signInButton;
  final AuthDivider authDivider;
  final SocialSignInButtons socialSignInMethods;
  final _GoToSignUpView goToSignUpView;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Flexible(
                flex: 20,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Gap(12.h),
                      header,
                      Gap(24.h),
                      userInfoSection,
                      Gap(10.h),
                      forgotPasswordASection,
                      Gap(24.h),
                      signInButton,
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
                  goToSignUpView,
                  Gap(10.h),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
