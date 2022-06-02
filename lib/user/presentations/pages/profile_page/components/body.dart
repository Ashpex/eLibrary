import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:elibrary/models/User.dart';
import 'package:elibrary/user/sources/color_constants.dart';
import 'package:elibrary/user/presentations/pages/profile_page/components/header.dart';
import 'package:elibrary/user/presentations/pages/profile_page/components/body.dart';

class ProfileScreen extends StatelessWidget {
  final User user;
  ProfileScreen({required this.user});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: Text(
          'Profile',
          style: TextStyle(fontSize: 60),
        ),
      ),
    );
  }
}
