part of 'package:ecommerce_app/features/auth/view/sign_in_view.dart';

class _SignIn extends StatefulWidget {
  const _SignIn();

  @override
  State<_SignIn> createState() => _SignInState();
}

class _SignInState extends State<_SignIn> {
  UserInfoModel? _userInfo;
  AuthGlobalKeys? _globalKeys;
  AuthUserValidation? _userValidation;
  @override
  Widget build(BuildContext context) {
    _userInfo = Provider.of<UserInfoModel>(context);
    _globalKeys = Provider.of<AuthGlobalKeys>(context);
    _userValidation = Provider.of<AuthUserValidation>(context, listen: true);
    if (_userValidation!.userIsValid) {
      return CustomButton.primary(
          onPressed: () async {
            BlocProvider.of<AuthBloc>(context).add(AuthSignedIn(
                email: _userInfo!.getEmail, pass: _userInfo!.getPass));
          },
          text: AppTexts.logIn);
    }
    return CustomButton.secondry(
      text: AppTexts.logIn,
    );
  }
}
