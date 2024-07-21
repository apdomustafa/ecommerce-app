part of 'package:ecommerce_app/features/auth/view/sign_in_view.dart';

// sign up i the user doesn't have an account
class _GoToSignUpView extends StatelessWidget {
  const _GoToSignUpView();

  @override
  Widget build(BuildContext context) {
    return TextCombination(
      firstText: AppTexts.dontHaveAccount,
      secondText: AppTexts.join,
      onPressed: () {
        Navigator.pushNamed(context, AppConst.kSignUpView);
      },
    );
  }
}
