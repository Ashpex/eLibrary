import 'package:elibrary/librarian/core/utils/shadow.dart';
import 'package:elibrary/librarian/core/utils/text.dart';
import 'package:elibrary/librarian/data/sources/color_constants.dart';
import 'package:elibrary/librarian/data/sources/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderDrawer extends StatelessWidget {
  const HeaderDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      padding: const EdgeInsets.only(
          top: 20.0, bottom: 20.0, left: 10.0, right: 5.0),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [boxShadow()],
          borderRadius:
              const BorderRadius.only(topRight: Radius.circular(baseRadius))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset(
            imagesPath + 'avatar.png',
            width: 100,
            height: 100,
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              textShadowWidget('Admin 1', Colors.red, 28.0, FontWeight.w800),
              const SizedBox(
                height: 5,
              ),
              textWidget('Bá Vũ', colorBlueTheme, 24.0, FontWeight.w600),
              const SizedBox(
                height: 5,
              ),
            ],
          )
        ],
      ),
    );
  }
}
