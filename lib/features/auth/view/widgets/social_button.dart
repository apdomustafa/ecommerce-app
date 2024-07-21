part of 'package:ecommerce_app/features/auth/view/widgets/social_sign_buttons.dart';

class _SocialButton extends StatelessWidget {
  const _SocialButton(
      {required this.image,
      required this.text,
      required this.textColor,
      required this.backgroundColor});
  final String image, text;
  final Color textColor, backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 17.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: backgroundColor,
          border: Border.all(color: AppColors.color200)),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              image,
              height: 24,
              width: 24,
            ),
            const Gap(10),
            Text(
              text,
              style: AppTextStyle.generalRegular16().copyWith(color: textColor),
            )
          ],
        ),
      ),
    );
  }
}
