import 'package:elibrary/librarian/data/models/book.dart';
import 'package:elibrary/librarian/presentation/pages/book_information_page/book_information_page.dart';
import 'package:elibrary/librarian/presentation/pages/book_information_page/provider/book_provider.dart';
import 'package:elibrary/presentations/widget/button.dart';
import 'package:elibrary/presentations/widget/text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../source/color_constants.dart';
import 'cover_page.dart';

class InformationBook extends StatelessWidget {
  Book? book;
  bool isAdd;
  TextEditingController imgLinkController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController authorController = TextEditingController();
  TextEditingController starController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController desController = TextEditingController();

  InformationBook({Key? key, required this.isAdd}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    book = Provider.of<BookState>(context, listen: false).book;
    setUpTextController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        textFormField(imgLinkController, null, '', 'Image Link', (value) {
          Provider.of<BookState>(context, listen: false).setLink(value);
        }),
        textFormField(nameController, null, '', 'Name', (value) {}),
        textFormField(authorController, null, '', 'Author', (value) {}),
        textFormField(starController, null, '', 'Star', (value) {}),
        textFormField(categoryController, null, '', 'Category', (value) {}),
        textFormField(desController, null, '', 'Description', (value) {}),
        const Spacer(),
        Expanded(
            child: Row(
          children: [
            const Spacer(),
            if (!isAdd)
              SizedBox(
                  width: 150,
                  height: 35,
                  child: elevatedButton(
                      "Delete", 17, FontWeight.w800, Colors.red, () {})),
            const SizedBox(
              width: 15,
            ),
            if (!isAdd)
              SizedBox(
                  width: 150,
                  height: 35,
                  child: elevatedButton(
                      "Reserve List", 17, FontWeight.w800, colorTheme, () {})),
            const SizedBox(
              width: 15,
            ),
            SizedBox(
                width: 150,
                height: 35,
                child: elevatedButton(
                    "Save", 17, FontWeight.w800, colorTheme, () {})),
            const SizedBox(
              width: 15,
            ),
          ],
        ))
      ],
    );
  }

  void setUpTextController() {
    imgLinkController.text = book!.img_link;
    nameController.text = book!.name;
    authorController.text = book!.author.name;
    starController.text = book!.star;
    categoryController.text = book!.getGenres();
    desController.text = book!.description;
  }
}
