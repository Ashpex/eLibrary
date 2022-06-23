import 'dart:convert';

import 'package:elibrary/librarian/data/sources/color_constants.dart';
import 'package:elibrary/presentations/pages/splash/splash.dart';
import 'package:elibrary/presentations/provider/login.dart';
import 'package:elibrary/presentations/widget/button.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

import '../../../../../librarian/data/models/user.dart';
import 'components/body.dart';
import 'components/header.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorTheme,
      body: FutureBuilder<User>(
          future: getProfile(context),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Column(
                children: [
                  Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Spacer(),
                            HeaderProfile(user: snapshot.data!),
                            const Spacer(),
                            elevatedButton1(
                                'Sign out', 20.0, FontWeight.bold, Colors.white,
                                () {
                              Navigator.pushReplacement(
                                  context,
                                  PageRouteBuilder(
                                      transitionDuration:
                                          const Duration(seconds: 2),
                                      pageBuilder: (_, __, ___) => MaterialApp(
                                          home: SplashPage(isUser: true))));
                            })
                          ],
                        ),
                      )),
                  Expanded(
                    flex: 5,
                    child: ProfileBody(user: snapshot.data!),
                  )
                ],
              );
            }
            return const Center(child: CircularProgressIndicator());
          }),
    );
  }
}

Future<User> getProfile(context) async {
  var accessToken = Provider.of<LoginState>(context, listen: false).token;
  Map<String, String> headers = {
    "Content-type": "application/json",
    'Authorization': 'Bearer $accessToken'
  };
  final response = await get(
      Uri.parse('https://elib-be.herokuapp.com/api/user/profile'),
      headers: headers);
  return User.fromJson(json.decode(response.body));
}
