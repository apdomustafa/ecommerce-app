part of 'package:ecommerce_app/features/auth/view/sign_up_view.dart';

class _SignUp extends StatefulWidget {
  const _SignUp();

  @override
  State<_SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<_SignUp> {
  UserInfoModel? _userInfo;
  AuthGlobalKeys? _globalKeys;

  @override
  Widget build(BuildContext context) {
    _userInfo = Provider.of<UserInfoModel>(context);
    _globalKeys = Provider.of<AuthGlobalKeys>(context);
    return CustomButton.primary(() async {
      if (userIsValidate()) {
        Navigator.pop(context);
      }
    }, AppTexts.signUp);
  }

  bool userIsValidate() {
    if (_globalKeys!.signUpNameKey.currentState!.validate() &&
        _globalKeys!.signUpEmailKey.currentState!.validate() &&
        _globalKeys!.signUpPassKey.currentState!.validate()) {
      return true;
    }
    return false;
  }
}
