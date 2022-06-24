import 'package:elibrary/librarian/data/models/book.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/cover_page.dart';
import 'components/information_book.dart';
import 'provider/book_provider.dart';

class BookInfoPage extends StatelessWidget {
  Book book;
  bool isAdd = false;
  BookInfoPage({required this.book, Key? key, required this.isAdd}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BookState>(
      create: (_) => BookState(book: book),
      child: MaterialApp(
        home: Scaffold(
          body: Row(mainAxisSize: MainAxisSize.max, children: [
            Expanded(
              child: Consumer<BookState>(builder: (__, model, _) {
                return ImageCover(
                  link: model.book.img_link,
                );
              }),
              flex: 11,
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: InformationBook(isAdd: isAdd),
              flex: 19,
            )
          ]),
        ),
      ),
    );
  }
}
