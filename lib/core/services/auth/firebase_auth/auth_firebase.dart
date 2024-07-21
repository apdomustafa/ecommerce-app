import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/services/auth/auth_service.dart';
import 'package:ecommerce_app/core/services/auth/auth_methods/social_methods_sign_in.dart';
import 'package:ecommerce_app/core/utils/failure/failure.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthWithFirebase extends AuthService {
  @override
  Future<Either<Failure, UserCredential>> signUpWithEmailAndPass(
      String email, String pass) async {
    final UserCredential userCredential;
    try {
      userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: pass,
      );
      User? user = userCredential.user;
      if (user != null) {
        // user.sendEmailVerification();
        return right(userCredential);
      } else {
        return left(Failure(errorMessage: 'user not found'));
      }
    } on FirebaseAuthException catch (e) {
      return left(Failure.firebaseFailure(e.code));
    } catch (e) {
      return left(Failure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserCredential>> socialSignIn(
      SocialMethodsSignIn socialMethodsSignIn) {
    return socialMethodsSignIn.signIn();
  }

  @override
  Future<Either<Failure, UserCredential>> signInWithEmailAndPass(
      String email, String pass) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: pass);
      return right(credential);
    } on FirebaseAuthException catch (e) {
      return left(Failure.firebaseFailure(e.code));
    } catch (e) {
      return left(Failure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> resetPassword(String email) async {
    // In Firebase, you would typically send a password reset email.
    // However, for a custom implementation, you might need to manage this yourself
    // For this example, we're assuming you have a backend service to handle this part
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      return right(null);
    } on Exception catch (e) {
      return left(Failure(errorMessage: 'an error occured : $e'));
    }
  }
}
