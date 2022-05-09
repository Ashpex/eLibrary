import 'package:elibrary/librarian/data/sources/constants.dart';
import 'package:elibrary/librarian/presentation/provider/state_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/body_main.dart';
import 'components/drawer/body.dart';
import 'components/drawer/header.dart';

class LibrarianPage extends StatelessWidget {
  String name;
  LibrarianPage({required this.name, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<StatePage>(
      create: (context) => StatePage(
          page: PageState.account,
          name: 'User Account',
          icon: Icons.account_circle),
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          drawer: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(baseRadius),
                    bottomRight: Radius.circular(baseRadius))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: const [
                HeaderDrawer(),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: BodyDrawer(),
                )
              ],
            ),
          ),
          body: MainBody(),),
    );
  }
}
