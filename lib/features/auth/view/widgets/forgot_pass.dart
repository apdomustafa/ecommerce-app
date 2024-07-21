part of 'package:ecommerce_app/features/auth/view/sign_in_view.dart';

class _ForgotPasswordSection extends StatelessWidget {
  const _ForgotPasswordSection();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: TextCombination(
        firstText: 'Forgot your password? ',
        secondText: 'Reset your passowrd',
        onPressed: () {
          Navigator.pushNamed(context, AppConst.kForgotPasswordView);
        },
      ),
    );
  }
}
