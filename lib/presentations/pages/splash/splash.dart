import 'package:elibrary/presentations/pages/sign_in/sign_in.dart';
import 'package:elibrary/presentations/widget/logo_hero.dart';
import 'package:elibrary/presentations/widget/text.dart';
import 'package:elibrary/source/color_constants.dart';
import 'package:elibrary/user/main.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SplashPage();
  }
}

class _SplashPage extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    splashAction();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: colorTheme,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HeroLogo(),
                const SizedBox(
                  height: 10,
                ),
                textWidget("E-Library", Colors.white, 60.0, FontWeight.w400)
              ],
            ),
          )),
    );
  }

  splashAction() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushReplacement(
        context,
        PageRouteBuilder(
            transitionDuration: const Duration(seconds: 2),
            pageBuilder: (_, __, ___) => SignInPage()));
  }
}
