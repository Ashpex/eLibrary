import 'package:elibrary/presentations/pages/splash/splash.dart';
import 'package:elibrary/user/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:elibrary/user/main.dart';
import 'package:elibrary/user/sources/color_constants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft])
  //     .then((_) {
  //   runApp(LibrarianMain(
  //     name: "Nguyên",
  //   ));
  // });
  runApp(const MaterialApp(
    home: SplashPage() ,
    ));
}

