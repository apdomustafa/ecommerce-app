part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

class AuthSignedUp extends AuthEvent {
  final String email, pass;
  AuthSignedUp({
    required this.email,
    required this.pass,
  });
}

class AuthSignedIn extends AuthEvent {
  final String email, pass;
  AuthSignedIn({
    required this.email,
    required this.pass,
  });
}

class AuthSocialSignIn extends AuthEvent {
  final SocialMethodsSignIn socialMethodSignIn;
  AuthSocialSignIn({required this.socialMethodSignIn});
}

class AuthResetPassword extends AuthEvent {
  final String email;
  AuthResetPassword({required this.email});
}
