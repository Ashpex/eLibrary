import 'dart:convert';

import 'package:elibrary/librarian/data/sources/constants.dart';
import 'package:elibrary/presentations/widget/snack_bar.dart';
import 'package:elibrary/source/api_constants.dart';
import 'package:elibrary/user/sources/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../../../widget/button.dart';
import '../../../widget/text.dart';

class BodySignInComponent extends StatelessWidget {
  bool? isUser;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  BodySignInComponent({this.isUser, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        // TextForm account
        textFormField(
            emailController,
            const Icon(
              Icons.mail,
              size: 15,
            ),
            'example@gmail.com',
            'Email',
            (value) {}),
        // TextForm password
        textFormField(passwordController, const Icon(Icons.lock, size: 15),
            '123123', 'Password', (value) {}),
        // Text forgetPassword
        Align(
          alignment: Alignment.centerRight,
          child: textWidget(
            'Forget Password?',
            Colors.red,
            12.0,
            FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 80,
        ),
        // Button Login
        SizedBox(
            width: 332,
            height: 35,
            child:
                elevatedButton("Sign in", 17, FontWeight.w800, colorTheme, () {
              if (isUser == true) {
              } else {
                loginLibrarian(context);
              }
            })),
        const SizedBox(
          height: 20,
        ),
        Image.asset(
          imagesPath + 'line.png',
          height: 2,
          width: 250,
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
            width: 204,
            height: 35,
            child:
                elevatedButton("Sign up", 17, FontWeight.w800, colorTheme, () {
              if (isUser == true) {
                signUpLibrarian(context);
              } else {
                showSnackBar(
                    'Please contact with developer to register new librarian account',
                    context);
              }
            })),
      ],
    );
  }

  void loginLibrarian(BuildContext context) {
    if (checkingNullInfo()) {
      showSnackBar("Information cannot be left blank", context);
      return;
    }
    sendingAccount(emailController.text, passwordController.text, "0");
  }

  void signUpLibrarian(BuildContext context) {}

  bool checkingNullInfo() =>
      emailController.text == "" || passwordController.text == "";
}

void sendingAccount(String account, String password, String type) async {
  Map<String, String> headers = {"Content-type": "application/json"};
  Map<String, dynamic> body = {
    'account': account,
    'password': password,
    'userType': type
  };
  Response response = await post(Uri.parse(api_login),
      headers: headers, body: json.encode(body));
  String bodyRespone = response.body;
  print(bodyRespone);
}
