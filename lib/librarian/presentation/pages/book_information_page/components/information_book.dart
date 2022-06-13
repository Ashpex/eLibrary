import 'package:elibrary/librarian/data/models/book.dart';
import 'package:elibrary/librarian/presentation/pages/book_information_page/book_information_page.dart';
import 'package:elibrary/presentations/widget/button.dart';
import 'package:elibrary/presentations/widget/text.dart';
import 'package:flutter/material.dart';

import '../../../../../source/color_constants.dart';
import 'cover_page.dart';

class InformationBook extends StatelessWidget {
  Book? book;
  BookInfoPage? imgCover;
  TextEditingController imgLinkController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController authorController = TextEditingController();
  TextEditingController starController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController desController = TextEditingController();

  InformationBook({this.book, this.imgCover, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    setUpTextController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        textFormField(imgLinkController, null, '', 'Image Link', (value) {}),
        textFormField(nameController, null, '', 'Name', (value) {}),
        textFormField(authorController, null, '', 'Author', (value) {}),
        textFormField(starController, null, '', 'Star', (value) {}),
        textFormField(categoryController, null, '', 'Category', (value) {}),
        textFormField(desController, null, '', 'Description', (value) {}),
        const Spacer(),
        Expanded(
            child: Row(
          children: [
            SizedBox(
                width: 150,
                height: 35,
                child: elevatedButton(
                    "Save", 17, FontWeight.w800, colorTheme, () {}))
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
