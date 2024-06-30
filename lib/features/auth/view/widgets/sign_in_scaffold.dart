part of 'package:ecommerce_app/features/auth/view/sign_in_view.dart';

class _SignInScaffold extends StatelessWidget {
  const _SignInScaffold(
      {required this.header,
      required this.userInfoSection,
      required this.signInButton,
      required this.authDivider,
      required this.socialSignInMethods,
      required this.goToSignUpView});
  final CustomHeader header;
  final _SignInUserInfoSection userInfoSection;
  final _SignIn signInButton;
  final AuthDivider authDivider;
  final SocialSignInMethods socialSignInMethods;
  final _GoToSignUpView goToSignUpView;

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
                  Gap(42.h),
                  signInButton,
                  Gap(42.h),
                  authDivider,
                  Gap(42.h),
                  socialSignInMethods,
                  Gap(42.h),
                  goToSignUpView,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
