part of 'package:ecommerce_app/features/auth/view/sign_up_view.dart';

class _TermsAndCondition extends StatefulWidget {
  const _TermsAndCondition();

  @override
  State<_TermsAndCondition> createState() => _TermsAndConditionState();
}

class _TermsAndConditionState extends State<_TermsAndCondition> {
  bool isSelected = true;
  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
        text: 'By signing up you agree to our Terms, ',
        style: AppTextStyle.generalRegular14(),
      ),
      TextSpan(
        text: 'Privacy Policy, ',
        style: AppTextStyle.generalRegular14().copyWith(
            color: AppColors.color900, decoration: TextDecoration.underline),
      ),
      TextSpan(
        text: 'and ',
        style: AppTextStyle.generalRegular14(),
      ),
      TextSpan(
        text: 'Cookie Use',
        style: AppTextStyle.generalRegular14().copyWith(
            color: AppColors.color900, decoration: TextDecoration.underline),
      ),
    ]));
  }
}
