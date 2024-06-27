part of 'package:ecommerce_app/features/auth/view/sign_in_view.dart';

class _SignInScaffold extends StatelessWidget {
  const _SignInScaffold();

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
                  CustomHeader(
                      firstText: AppTexts.signIn,
                      secondText: AppTexts.welcomMessage),
                  Gap(52.h),
                  const UserInfoSection(),
                  Gap(42.h),
                  CustomButton.primary(() {}, AppTexts.signIn),
                  Gap(42.h),
                  const AuthDivider(),
                  Gap(42.h),
                  const SocialSignInMethods(),
                  Gap(42.h),
                  const SignUp(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
