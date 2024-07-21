part of 'package:ecommerce_app/features/auth/view/sign_up_view.dart';

class _GoToSignInView extends StatelessWidget {
  const _GoToSignInView();

  @override
  Widget build(BuildContext context) {
    return TextCombination(
        firstText: AppTexts.alreadryHaveAccount,
        secondText: AppTexts.logIn,
        onPressed: () {
          Navigator.pushNamed(context, AppConst.kSignInView);
        });
  }
}
