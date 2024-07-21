import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/core/services/auth/auth_methods/social_methods_sign_in.dart';
import 'package:ecommerce_app/core/services/auth/auth_service.dart';
import 'package:ecommerce_app/core/services/auth/firebase_auth/auth_firebase.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthService _authService = GetIt.instance.get<AuthService>();
  AuthBloc() : super(AuthInitial()) {
    on<AuthSignedUp>((event, emit) async {
      emit(AuthLoading());
      final result =
          await _authService.signUpWithEmailAndPass(event.email, event.pass);
      result.fold((failure) {
        emit(AuthFailed(message: failure.errorMessage!));
      }, (userCredential) {
        emit(AuthSuccess());
      });
    });

    on<AuthSignedIn>((event, emit) async {
      emit(AuthLoading());
      final result =
          await _authService.signInWithEmailAndPass(event.email, event.pass);
      result.fold((failure) {
        emit(AuthFailed(message: failure.errorMessage!));
      }, (userCredential) {
        emit(AuthSuccess());
      });
    });

    on<AuthSocialSignIn>((event, emit) async {
      emit(AuthLoading());
      final result = await _authService.socialSignIn(event.socialMethodSignIn);
      result.fold((failure) {
        emit(AuthFailed(message: failure.errorMessage!));
      }, (userCredential) {
        emit(AuthSuccess());
      });
    });

    on<AuthResetPassword>((event, emit) async {
      emit(AuthLoading());
      final result = await _authService.resetPassword(event.email);
      result.fold((failure) {
        emit(AuthFailed(message: failure.errorMessage!));
      }, (userCredential) {
        emit(AuthSuccess());
      });
    });
  }
}
