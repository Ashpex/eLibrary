import 'package:elibrary/librarian/presentation/pages/books_user_page/components/header.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class BooksUserPage extends StatelessWidget {
  const BooksUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderBooksUser(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: BodyBooksUser(),
            ),
          )
        ],
      )),
    );
  }
}
