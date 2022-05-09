import 'package:elibrary/librarian/core/utils/text.dart';
import 'package:elibrary/librarian/data/sources/color_constants.dart';
import 'package:elibrary/librarian/data/sources/constants.dart';
import 'package:elibrary/librarian/presentation/pages/book_information_page/book_information_page.dart';
import 'package:elibrary/librarian/presentation/pages/book_page/items/book_item.dart';
import 'package:flutter/material.dart';

class BookPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        IconButton(
            color: colorTheme, onPressed: () {}, icon: const Icon(Icons.add)),
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
            Expanded(
                flex: 1,
                child: textWidget('', Colors.red, 13.0, FontWeight.w600)),
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
                            builder: (context) => BookInfoPage());
                      },
                      child: ItemBook(id: index)),
                );
              }),
        )
      ],
    );
  }
}
