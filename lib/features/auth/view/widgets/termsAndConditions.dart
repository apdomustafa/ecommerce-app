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
    return Row(
      children: [
        Checkbox(
            value: isSelected,
            fillColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.selected)) {
                return AppColors
                    .primaryColor; // Color when checkbox is selected
              }
              return Colors.grey; // Color when checkbox is disabled
            }),
            onChanged: (value) {
              setState(() {
                isSelected = value!;
              });
            }),
        RichText(
            text: TextSpan(children: [
          TextSpan(
            text: AppTexts.agreeWith,
            style: AppTextStyle.styleNormal20(),
          ),
          TextSpan(
            text: AppTexts.termsAndConditions,
            style: AppTextStyle.styleBold20(),
          ),
        ]))
      ],
    );
  }
}
