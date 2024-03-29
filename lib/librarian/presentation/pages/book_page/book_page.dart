import 'package:elibrary/librarian/core/utils/text.dart';
import 'package:elibrary/librarian/data/models/book.dart';
import 'package:elibrary/librarian/data/sources/color_constants.dart';
import 'package:elibrary/librarian/data/sources/constants.dart';
import 'package:elibrary/librarian/presentation/pages/book_information_page/book_information_page.dart';
import 'package:elibrary/librarian/presentation/pages/book_page/items/book_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../presentations/provider/login.dart';
import '../../provider/state_page.dart';
import 'api_call.dart';

class BookPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String token = Provider.of<LoginState>(context, listen: false).getToken;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        IconButton(
            color: colorTheme,
            onPressed: () {
              showBottomSheet(
                  context: context,
                  builder: (_) => BookInfoPage(book: book_cons, isAdd: true));
            },
            icon: const Icon(Icons.add)),
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
        Consumer<StatePage>(
          builder: ((_, value, __) {
            return FutureBuilder<List<Book>>(
                future: fetchBook(token),
                builder: ((context, snapshot) {
                  if (snapshot.hasData) {
                    List<Book> _listBook = snapshot.data!;
                    List<Book> listBook = [];
                    for (Book frag in _listBook) {
                      if (frag.name.contains(value.searchBook)) {
                        listBook.add(frag);
                      }
                    }
                    return Expanded(
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: listBook.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: InkWell(
                                  onTap: () {
                                    showBottomSheet(
                                        context: context,
                                        builder: (_) => BookInfoPage(
                                            book: listBook[index], isAdd: false));
                                  },
                                  child: ItemBook(book: listBook[index])),
                            );
                          }),
                    );
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                }));
          }),
        )
      ],
    );
  }
}
