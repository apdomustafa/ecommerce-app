import 'package:flutter/material.dart';

class AuthUserValidation with ChangeNotifier {
  bool userIsValid = false;
  bool nameIsValid = false;
  bool emailIsValid = false;
  bool passsIsValid = false;

  void signInUserValidation() {
    if (emailIsValid && passsIsValid) {
      userIsValid = true;
    } else {
      userIsValid = false;
    }
    notifyListeners();
  }

  void signUpUserValidation() {
    if (nameIsValid && emailIsValid && passsIsValid) {
      userIsValid = true;
    } else {
      userIsValid = false;
    }
    notifyListeners();
  }
}
