import 'package:flutter/material.dart';

enum LoginEnum { login, register}
class LoginState with ChangeNotifier {
  LoginEnum state;
  String token = 'null';
  String name = '';
  int id = 0;
  LoginState({required this.state});
  void setPage(state) {
    this.state = state;
    notifyListeners();
  }
  void setToken(token) {
    this.token = token;
  }
  void setUserName(name) {
    this.name = name;
  }
  void setId(id) {
    this.id = id;
  }

  LoginEnum get getState => state;
  String get getToken => token;
}