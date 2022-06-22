import 'package:elibrary/librarian/data/models/book.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../data/models/author.dart';
import '../book_information_page/components/cover_page.dart';
import 'components/information_book.dart';
import 'provider/book_provider.dart';

class BookInfoPage extends StatelessWidget {
  BookInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BookState>(
      create: (_) => BookState(
          book: Book(
              id: 0,
              name: " ",
              img_link: " ",
              genres: [],
              add_date: " ",
              star: " ",
              author: Author(1, " "),
              description: "")),
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
              child: InformationBook(),
              flex: 19,
            )
          ]),
        ),
      ),
    );
  }
}
