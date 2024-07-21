import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/services/auth/auth_methods/social_methods_sign_in.dart';
import 'package:ecommerce_app/core/utils/failure/failure.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInMethod extends SocialMethodsSignIn {
  @override
  Future<Either<Failure, UserCredential>> signIn() async {
    final UserCredential userCredential;
    // Trigger the authentication flow
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
    } on FirebaseException catch (e) {
      return left(Failure.firebaseFailure(e.code));
    } catch (e) {
      return left(Failure(errorMessage: e.toString()));
    }
    return right(userCredential);
  }
}
