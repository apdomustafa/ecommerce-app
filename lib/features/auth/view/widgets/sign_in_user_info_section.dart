part of 'package:ecommerce_app/features/auth/view/sign_in_view.dart';

class _SignInUserInfoSection extends StatefulWidget {
  const _SignInUserInfoSection();

  @override
  State<_SignInUserInfoSection> createState() => _SignInUserInfoSectionState();
}

class _SignInUserInfoSectionState extends State<_SignInUserInfoSection> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passcontroller = TextEditingController();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    final userInfo = Provider.of<UserInfoModel>(context, listen: false);
    final formkeys = Provider.of<AuthGlobalKeys>(context, listen: false);
    final signInUserValidation = Provider.of<AuthUserValidation>(
      context,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppTexts.email,
          style: AppTextStyle.textRegular16(),
        ),
        Gap(4.h),
        CustomTextField.withFocusNode(
          hint: AppTexts.emailHint,
          sourceFocusNode: _emailFocusNode,
          destinationFocusNode: _passFocusNode,
          onChange: (String email) {
            if (formkeys.signInEmailKey.currentState!.validate()) {
              signInUserValidation.emailIsValid = true;
              signInUserValidation.signInUserValidation();
              userInfo.setEmail = email;
            } else {
              signInUserValidation.emailIsValid = false;
              signInUserValidation.signInUserValidation();
            }
          },
          formKey: formkeys.signInEmailKey,
          errorMessage: 'please enter your email',
        ),
        const Gap(16),
        Text(
          AppTexts.password,
          style: AppTextStyle.textRegular16(),
        ),
        Gap(4.h),
        PasswordTextField(
          passFoucNode: _passFocusNode,
          onChange: (String pass) {
            if (formkeys.signInPassKey.currentState!.validate()) {
              signInUserValidation.passsIsValid = true;
              signInUserValidation.signInUserValidation();
              userInfo.setpass = pass;
            } else {
              signInUserValidation.passsIsValid = false;
              signInUserValidation.signInUserValidation();
            }
          },
          formKey: formkeys.signInPassKey,
        ),
      ],
    );
  }
}
