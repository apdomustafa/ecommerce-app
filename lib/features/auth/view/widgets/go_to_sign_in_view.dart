part of 'package:ecommerce_app/features/auth/view/sign_up_view.dart';

class _GoToSignInView extends StatelessWidget {
  const _GoToSignInView();

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
          text: AppTexts.alreadryHaveAccount,
          style: AppTextStyle.styleNormal16(),
        ),
        TextSpan(
            text: AppTexts.signIn,
            style: AppTextStyle.styleBold16(),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pop(context);
              }),
      ]),
    );
  }
}
