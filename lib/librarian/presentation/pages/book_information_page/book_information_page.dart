import 'package:elibrary/librarian/data/models/book.dart';
import 'package:flutter/material.dart';

import 'components/cover_page.dart';
import 'components/information_book.dart';

class BookInfoPage extends StatefulWidget {
  Book? book;
  _BookInfoPageState _bookInfoPageState = _BookInfoPageState();
  BookInfoPage({required this.book, Key? key}) : super(key: key);
  void reload() {
    _bookInfoPageState.reload();
  }
  @override
  State<BookInfoPage> createState() => _bookInfoPageState;
}

class _BookInfoPageState extends State<BookInfoPage> {
  void reload() {
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        body: Row(mainAxisSize: MainAxisSize.max, children: [
          Expanded(
            child: ImageCover(
      link: widget.book!.img_link,
    ),
            flex: 11,
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: InformationBook(
              book: widget.book,
              imgCover: widget,
            ),
            flex: 19,
          )
        ]),
      ),
    );
  }
}
