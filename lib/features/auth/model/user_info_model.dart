import 'package:flutter/material.dart';

class UserInfoModel with ChangeNotifier {
  String? _name, _email, _pass;

  String get getName {
    return _name!;
  }

  String get getEmail {
    return _email!;
  }

  String get getPass {
    return _pass!;
  }

  set setName(String name) {
    _name = name;
  }

  set setEmail(String email) {
    _email = email;
  }

  set setpass(String pass) {
    _pass = pass;
  }
}
