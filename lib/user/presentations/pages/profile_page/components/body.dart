import 'package:elibrary/librarian/core/utils/text.dart';
import 'package:elibrary/presentations/widget/button.dart';
import 'package:elibrary/user/sources/color_constants.dart';
import 'package:elibrary/user/presentations/pages/profile_page/components/header.dart';
import 'package:elibrary/user/presentations/pages/profile_page/components/body.dart';
import 'package:flutter/material.dart';

import '../../../../../librarian/data/models/user.dart';
import '../../../../sources/constants.dart';

class ProfileBody extends StatelessWidget {
  User user;

  ProfileBody({required this.user, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.phone,
                    size: 30,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      textWidget(
                          'Phone Number', Colors.black, 25.0, FontWeight.w600),
                      textWidget(user.phoneNumber, Colors.black, 20.0,
                          FontWeight.w500),
                      Image.asset(
                        imagesPath + 'line.png',
                        width: 150,
                        height: 2,
                      )
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.male,
                    size: 30,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      textWidget('Gender', Colors.black, 25.0, FontWeight.w600),
                      textWidget(
                          user.gender, Colors.black, 20.0, FontWeight.w500),
                      Image.asset(
                        imagesPath + 'line.png',
                        width: 150,
                        height: 2,
                      )
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.house,
                    size: 30,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      textWidget(
                          'Address', Colors.black, 25.0, FontWeight.w600),
                      textWidget(
                          user.address, Colors.black, 20.0, FontWeight.w500),
                      Image.asset(
                        imagesPath + 'line.png',
                        width: 150,
                        height: 2,
                      )
                    ],
                  )
                ],
              ),
              elevatedButton1(
                  'Edit', 20.0, FontWeight.bold, Colors.white, () {})
            ]),
        padding: const EdgeInsets.only(
            left: basePadding * 3, right: basePadding, top: basePadding * 1),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(10))));
  }
}
