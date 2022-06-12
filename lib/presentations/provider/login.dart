import 'package:flutter/material.dart';

enum LoginEnum { login, register}
class LoginState with ChangeNotifier {
  LoginEnum state;
  String token = 'null';
  LoginState({required this.state});
  void setPage(state) {
    this.state = state;
    notifyListeners();
  }
  void setToken(token) {
    this.token = token;
  }

  LoginEnum get getState => state;
  String get getToken => token;
}