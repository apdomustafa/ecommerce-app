part of 'package:ecommerce_app/features/auth/view/widgets/social_sign_methods.dart';

class _SocialButton extends StatelessWidget {
  const _SocialButton({required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 62.w,
      height: 62.h,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: AppColors.tertiryColor)),
      child: Center(
        child: Image.asset(
          image,
          height: 32.h,
          width: 32.w,
        ),
      ),
    );
  }
}
