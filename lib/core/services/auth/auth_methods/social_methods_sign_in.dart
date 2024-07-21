import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/utils/failure/failure.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class SocialMethodsSignIn {
  Future<Either<Failure, UserCredential>> signIn();
}
