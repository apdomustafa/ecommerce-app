import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/services/auth/auth_methods/social_methods_sign_in.dart';
import 'package:ecommerce_app/core/utils/failure/failure.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthService {
  Future<Either<Failure, UserCredential>> socialSignIn(
      SocialMethodsSignIn socialMethodsSignIn);

  Future<Either<Failure, UserCredential>> signInWithEmailAndPass(
      String email, String pass);

  Future<Either<Failure, UserCredential>> signUpWithEmailAndPass(
      String email, String pass);
<<<<<<< HEAD
=======

  Future<Either<Failure, void>> resetPassword(String email);
>>>>>>> a41a0ff52e267cdebcb8cdd6f9da82c0e6485a13
}
