part of 'package:ecommerce_app/features/auth/view/sign_in_view.dart';

class AuthDivider extends StatelessWidget {
  const AuthDivider({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: AppColors.tertiryColor,
              indent: 38.w,
              endIndent: 4.w,
            ),
          ),
          Text(
            text,
            style: AppTextStyle.generalRegular12(),
          ),
          Expanded(
            child: Divider(
              color: AppColors.tertiryColor,
              indent: 4.w,
              endIndent: 38.w,
            ),
          ),
        ],
      ),
    );
  }
}
