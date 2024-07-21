import 'package:firebase_auth/firebase_auth.dart';

class Failure {
  final String? errorMessage;
  Failure({required this.errorMessage});
  factory Failure.firebaseFailure(String errorCode) {
    switch (errorCode) {
      case 'invalid-email':
        return Failure(errorMessage: 'The email address is not valid.');
      case 'user-disabled':
        return Failure(errorMessage: 'The user has been disabled.');
      case 'user-not-found':
        return Failure(errorMessage: 'No user found for that email.');
      case 'wrong-password':
        return Failure(errorMessage: 'Incorrect password provided.');
      case 'email-already-in-use':
        return Failure(
            errorMessage:
                'The email address is already in use by another account.');
      case 'operation-not-allowed':
        return Failure(errorMessage: 'This sign-in method is not allowed.');
      case 'weak-password':
        return Failure(errorMessage: 'The password is too weak.');
      case 'account-exists-with-different-credential':
        return Failure(
            errorMessage:
                'An account already exists with the same email address but different sign-in credentials.');
      case 'invalid-credential':
        return Failure(errorMessage: 'wrong email or password');
      case 'invalid-verification-code':
        return Failure(errorMessage: 'The verification code is invalid.');
      case 'invalid-verification-id':
        return Failure(errorMessage: 'The verification ID is invalid.');
      default:
        return Failure(
            errorMessage: 'An unknown error occurred. Please try again.');
    }
  }
}
