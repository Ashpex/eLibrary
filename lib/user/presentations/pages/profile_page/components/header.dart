import 'package:elibrary/librarian/core/utils/text.dart';
import 'package:elibrary/user/sources/constants.dart';
import 'package:flutter/material.dart';

import '../../../../../librarian/data/models/user.dart';

class HeaderProfile extends StatelessWidget {
  User user;

  HeaderProfile({required this.user, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imagesPath + 'avatar.png',
          width: 100,
          height: 100,
        ),
        const SizedBox(
          width: 25,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textWidget(user.name, Colors.white, 29.0, FontWeight.bold,
                maxline: 5),
            textWidget(user.account, Colors.white, 15.0, FontWeight.w500)
          ],
        ),
      ],
    );
  }
}
