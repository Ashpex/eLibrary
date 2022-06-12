import 'package:elibrary/librarian/data/sources/constants.dart';
import 'package:elibrary/presentations/pages/sign_in/components/body.dart';
import 'package:elibrary/presentations/pages/sign_up/sign_up.dart';
import 'package:elibrary/presentations/widget/logo_hero.dart';
import 'package:elibrary/source/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:delayed_display/delayed_display.dart';

class SignInPage extends StatelessWidget {
  bool? isUser;
  SignInPage({this.isUser, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: colorTheme,
          resizeToAvoidBottomInset: false,
          body: Center(
            child: Column(
              children: [
                // Logo App
                Expanded(
                    flex: 2,
                    child: Center(
                      child: HeroLogo(),
                    )),
                // Container textField
                Expanded(
                  child: DelayedDisplay(
                    delay: const Duration(seconds: 2),
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: basePadding * 2,
                          right: basePadding * 2,
                          top: basePadding * 5),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(10))),
                      child: BodySignInComponent(isUser: isUser),
                    ),
                  ),
                  flex: 7,
                )
              ],
            ),
          )),
    );
  }
}
