import 'package:elibrary/librarian/data/sources/constants.dart';
import 'package:elibrary/user/sources/color_constants.dart';
import 'package:flutter/material.dart';

import '../../../widget/button.dart';
import '../../../widget/text.dart';

class BodySignInComponent extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
            child: elevatedButton(
                "Sign in", 17, FontWeight.w800, colorTheme, () {})),
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
            child: elevatedButton(
                "Sign up", 17, FontWeight.w800, colorTheme, () {})),
      ],
    );
  }
}
