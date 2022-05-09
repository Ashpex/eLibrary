import 'package:elibrary/librarian/core/utils/text.dart';
import 'package:elibrary/librarian/data/sources/constants.dart';
import 'package:elibrary/librarian/presentation/pages/books_user_page/items/item_user_book.dart';
import 'package:flutter/material.dart';

class BodyBooksUser extends StatelessWidget {
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
                flex: 8,
                child: textWidget('name', Colors.red, 13.0, FontWeight.w600)),
            Expanded(
                flex: 1,
                child: textWidget('state', Colors.red, 13.0, FontWeight.w600)),
          ],
        ),
        Image.asset(imagesPath + 'line.png'),
        Expanded(
          child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(top: 5.0),
                  child: ItemBooksUser(id: index),
                );
              }),
        )
      ],
    );
  }
}
