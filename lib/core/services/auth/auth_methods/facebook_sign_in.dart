import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/services/auth/auth_methods/social_methods_sign_in.dart';
import 'package:ecommerce_app/core/utils/failure/failure.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class FacebookSignIn extends SocialMethodsSignIn {
  @override
  Future<Either<Failure, UserCredential>> signIn() async {
    final UserCredential userCredential;
    // Trigger the sign-in flow
    try {
      final LoginResult loginResult = await FacebookAuth.instance.login();
      // Create a credential from the access token
      final OAuthCredential facebookAuthCredential =
<<<<<<< HEAD
          FacebookAuthProvider.credential(loginResult.accessToken!.tokenString);
=======
          FacebookAuthProvider.credential(loginResult.accessToken!.token);
>>>>>>> a41a0ff52e267cdebcb8cdd6f9da82c0e6485a13
      // Once signed in, return the UserCredential
      userCredential = await FirebaseAuth.instance
          .signInWithCredential(facebookAuthCredential);
    } on FirebaseException catch (e) {
      return Left(Failure.firebaseFailure(e.code));
    } catch (e) {
      return Left(Failure(errorMessage: e.toString()));
    }
    return Right(userCredential);
  }
}
