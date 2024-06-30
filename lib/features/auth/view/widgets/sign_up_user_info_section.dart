part of 'package:ecommerce_app/features/auth/view/sign_up_view.dart';

class _SignUpUserInfoSection extends StatefulWidget {
  const _SignUpUserInfoSection();

  @override
  State<_SignUpUserInfoSection> createState() => _SignUpUserInfoSectionState();
}

class _SignUpUserInfoSectionState extends State<_SignUpUserInfoSection> {
  final FocusNode _nameFocuseNode = FocusNode();
  final FocusNode _emailFocuseNode = FocusNode();
  final FocusNode _passwordFocuseNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    final userInfoModel = Provider.of<UserInfoModel>(context, listen: false);
    final formkeys = Provider.of<AuthGlobalKeys>(context, listen: false);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppTexts.name,
          style: AppTextStyle.styleNormal16(),
        ),
        Gap(4.h),
        CustomTextField.withFocusNode(
          onChange: (name) {
            if (formkeys.signUpNameKey.currentState!.validate()) {
              userInfoModel.setName = name;
            }
          },
          hint: AppTexts.nameHint,
          sourceFocusNode: _nameFocuseNode,
          destinationFocusNode: _emailFocuseNode,
          formKey: formkeys.signUpNameKey,
          errorMessage: 'please enter your name',
        ),
        Gap(8.h),
        Text(
          AppTexts.email,
          style: AppTextStyle.styleNormal16(),
        ),
        Gap(4.h),
        CustomTextField.withFocusNode(
          onChange: (email) {
            if (formkeys.signUpEmailKey.currentState!.validate()) {
              userInfoModel.setEmail = email;
            }
          },
          hint: AppTexts.emailHint,
          sourceFocusNode: _emailFocuseNode,
          destinationFocusNode: _passwordFocuseNode,
          formKey: formkeys.signUpEmailKey,
          errorMessage: 'please enter your email',
        ),
        Gap(8.h),
        Text(
          AppTexts.password,
          style: AppTextStyle.styleNormal16(),
        ),
        Gap(4.h),
        PasswordTextField(
          onChange: (pass) {
            if (formkeys.signUpPassKey.currentState!.validate()) {
              userInfoModel.setpass = pass;
            }
          },
          passFoucNode: _passwordFocuseNode,
          formKey: formkeys.signUpPassKey,
        ),
      ],
    );
  }

  @override
  void dispose() {
    _nameFocuseNode.dispose();
    _emailFocuseNode.dispose();
    super.dispose();
  }
}
