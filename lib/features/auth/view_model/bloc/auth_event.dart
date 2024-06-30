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
