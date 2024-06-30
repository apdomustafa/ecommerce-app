part of 'package:ecommerce_app/features/auth/view/sign_in_view.dart';

// sign up i the user doesn't have an account
class _GoToSignUpView extends StatelessWidget {
  const _GoToSignUpView();

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
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pushNamed(context, AppConst.kSignUpView);
              }),
      ]),
    );
  }
}
