import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/services/auth/auth_service.dart';
import 'package:ecommerce_app/core/services/auth/auth_methods/social_methods_sign_in.dart';
import 'package:ecommerce_app/core/utils/failure/failure.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthFirebase extends AuthService {
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
        user.sendEmailVerification();
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
      User? user = credential.user;
      if (user != null && user.emailVerified) {
        return right(credential);
      } else {
        return left(Failure(errorMessage: 'verfiy your email first'));
      }
    } on FirebaseAuthException catch (e) {
      return left(Failure.firebaseFailure(e.code));
    } catch (e) {
      return left(Failure(errorMessage: e.toString()));
    }
  }
}
