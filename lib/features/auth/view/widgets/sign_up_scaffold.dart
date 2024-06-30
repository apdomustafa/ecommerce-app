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
  final SocialSignInMethods socialSignInMethods;
  final _GoToSignInView goToSignInView;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  header,
                  Gap(52.h),
                  userInfoSection,
                  Gap(4.h),
                  termsAndCondition,
                  Gap(42.h),
                  signUpButton,
                  Gap(42.h),
                  authDivider,
                  Gap(42.h),
                  socialSignInMethods,
                  Gap(42.h),
                  goToSignInView,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
