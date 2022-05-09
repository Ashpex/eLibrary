import 'package:elibrary/librarian/core/utils/text.dart';
import 'package:elibrary/librarian/data/sources/constants.dart';
import 'package:elibrary/librarian/presentation/pages/books_user_page/books_user_page.dart';
import 'package:elibrary/librarian/presentation/pages/user_account_page/items/user_item.dart';
import 'package:flutter/material.dart';

class TableAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 1,
                child: textWidget('id', Colors.red, 13.0, FontWeight.w600)),
            Expanded(
                flex: 4,
                child:
                    textWidget('account', Colors.red, 13.0, FontWeight.w600)),
            Expanded(
                flex: 4,
                child: textWidget('name', Colors.red, 13.0, FontWeight.w600)),
            Expanded(
                flex: 1,
                child: textWidget('count', Colors.red, 13.0, FontWeight.w600)),
            Expanded(
                flex: 1,
                child: textWidget('ban', Colors.red, 13.0, FontWeight.w600)),
          ],
        ),
        Image.asset(imagesPath + 'line.png'),
        Expanded(
          child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: InkWell(
                      onTap: () {
                        showBottomSheet(
                            context: context,
                            builder: (context) {
                              return const BooksUserPage();
                            });
                      },
                      child: ItemUser(id: index)),
                );
              }),
        )
      ],
    );
  }
}
