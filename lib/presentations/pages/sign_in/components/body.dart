import 'dart:convert';

import 'package:elibrary/librarian/data/sources/constants.dart';
import 'package:elibrary/presentations/widget/snack_bar.dart';
import 'package:elibrary/source/api_constants.dart';
import 'package:elibrary/user/presentations/pages/home_page/home_screen.dart';
import 'package:elibrary/user/sources/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

import '../../../../librarian/main.dart';
import '../../../../user/main.dart';
import '../../../provider/login.dart';
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
              if (checkingNullInfo()) {
                showSnackBar("Information cannot be left blank", context);
                return;
              }
              sendingAccount(emailController.text, passwordController.text,
                      isUser == true ? '1' : '0', context)
                  .then((value) {
                if (value == true) {
                  Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                          transitionDuration: const Duration(seconds: 2),
                          pageBuilder: (_, __, ___) => isUser == true?const UserMain():LibrarianMain(name: "Nguyen")));
                } else {
                  showSnackBar('Cannot login', context);
                }
              });
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

  void signUpLibrarian(BuildContext context) {
    Provider.of<LoginState>(context, listen: false).setPage(LoginEnum.register);
  }

  bool checkingNullInfo() =>
      emailController.text == "" || passwordController.text == "";
}

Future<bool> sendingAccount(
    String account, String password, String type, context) async {
  Map<String, String> headers = {"Content-type": "application/json"};
  Map<String, dynamic> body = {
    'account': account,
    'password': password,
    'userType': type
  };
  Response response = await post(Uri.parse(api_login),
      headers: headers, body: json.encode(body));
  if (response.statusCode != 201) {
    return false;
  }
  Map<String, dynamic> result = json.decode(response.body);
  Provider.of<LoginState>(context, listen: false)
      .setToken(result['access_token']);
  return true;
}
