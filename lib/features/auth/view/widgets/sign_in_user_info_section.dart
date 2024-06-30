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

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppTexts.email,
          style: AppTextStyle.styleNormal16(),
        ),
        Gap(4.h),
        CustomTextField.withFocusNode(
          hint: AppTexts.nameHint,
          sourceFocusNode: _emailFocusNode,
          destinationFocusNode: _passFocusNode,
          onChange: (String email) {
            if (formkeys.signInEmailKey.currentState!.validate()) {
              userInfo.setEmail = email;
            }
          },
          formKey: formkeys.signInEmailKey,
          errorMessage: 'please enter your name',
        ),
        Text(
          AppTexts.password,
          style: AppTextStyle.styleNormal16(),
        ),
        Gap(4.h),
        PasswordTextField(
          passFoucNode: _passFocusNode,
          onChange: (String pass) {
            if (formkeys.signInPassKey.currentState!.validate()) {
              userInfo.setpass = pass;
            }
          },
          formKey: formkeys.signInPassKey,
        ),

        Gap(4.h),
        // forgot password
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            AppTexts.forgotPassword,
            style: AppTextStyle.styleBold16(),
          ),
        )
      ],
    );
  }
}
