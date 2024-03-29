import 'package:desktop_window/desktop_window.dart';
import 'package:elibrary/presentations/pages/splash/splash.dart';
import 'package:elibrary/user/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:elibrary/user/main.dart';
import 'package:elibrary/user/sources/color_constants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Set max min size windows app
  //testWindowFunctions();
  runApp(MaterialApp(home: SplashPage(isUser: true)));
  //runApp(UserMain());
}

// Future testWindowFunctions() async {
//   Size size = await DesktopWindow.getWindowSize();

//   await DesktopWindow.setMinWindowSize(Size(1000, 1000));

//   await DesktopWindow.resetMaxWindowSize();
//   await DesktopWindow.toggleFullScreen();
//   bool isFullScreen = await DesktopWindow.getFullScreen();
//   await DesktopWindow.setFullScreen(true);
//   await DesktopWindow.setFullScreen(false);
// }
