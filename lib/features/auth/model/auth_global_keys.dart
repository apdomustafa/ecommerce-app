import 'package:flutter/material.dart';

class AuthGlobalKeys with ChangeNotifier {
  // sign up global keys
  final GlobalKey<FormState> signUpNameKey = GlobalKey<FormState>();
  final GlobalKey<FormState> signUpEmailKey = GlobalKey<FormState>();
  final GlobalKey<FormState> signUpPassKey = GlobalKey<FormState>();

  // sign in global keys
  final GlobalKey<FormState> signInEmailKey = GlobalKey<FormState>();
  final GlobalKey<FormState> signInPassKey = GlobalKey<FormState>();
}
