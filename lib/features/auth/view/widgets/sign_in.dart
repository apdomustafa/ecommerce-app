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
            await signInWithGoogle();
          },
          text: AppTexts.logIn);
    }
    return CustomButton.secondry(
      text: AppTexts.logIn,
    );
  }
}

Future<User?> signInWithGoogle() async {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
  if (googleUser == null) {
    // The user canceled the sign-in
    return null;
  }

  final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
  final AuthCredential credential = GoogleAuthProvider.credential(
    accessToken: googleAuth.accessToken,
    idToken: googleAuth.idToken,
  );

  final UserCredential userCredential =
      await auth.signInWithCredential(credential);
  return userCredential.user;
}
