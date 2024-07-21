part of 'package:ecommerce_app/features/auth/view/sign_up_view.dart';

class _SignUp extends StatefulWidget {
  const _SignUp();

  @override
  State<_SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<_SignUp> {
  UserInfoModel? _userInfo;
  AuthGlobalKeys? _globalKeys;
  AuthUserValidation? _userValidation;

  @override
  Widget build(BuildContext context) {
    _userInfo = Provider.of<UserInfoModel>(context);
    _globalKeys = Provider.of<AuthGlobalKeys>(context);
    _userValidation = Provider.of<AuthUserValidation>(context, listen: true);
    if (_userValidation!.userIsValid) {
      return CustomButton.primary(onPressed: () {}, text: AppTexts.logIn);
    }
    return CustomButton.secondry(
      text: AppTexts.logIn,
    );
  }
}
