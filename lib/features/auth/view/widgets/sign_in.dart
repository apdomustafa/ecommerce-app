part of 'package:ecommerce_app/features/auth/view/sign_in_view.dart';

class _SignIn extends StatefulWidget {
  const _SignIn();

  @override
  State<_SignIn> createState() => _SignInState();
}

class _SignInState extends State<_SignIn> {
  UserInfoModel? _userInfo;
  AuthGlobalKeys? _globalKeys;

  @override
  Widget build(BuildContext context) {
    _userInfo = Provider.of<UserInfoModel>(context);
    _globalKeys = Provider.of<AuthGlobalKeys>(context);
    return CustomButton.primary(() async {
      if (userIsValidate()) {
        debugPrint('sign in successfully');
      }
    }, AppTexts.signUp);
  }

  bool userIsValidate() {
    if (_globalKeys!.signInEmailKey.currentState!.validate() &&
        _globalKeys!.signInPassKey.currentState!.validate()) {
      return true;
    }
    return false;
  }
}
