import 'package:elibrary/librarian/data/models/book.dart';
import 'package:flutter/material.dart';
class BookState with ChangeNotifier {
  Book book;

  BookState({required this.book});
  void setLink(imgLink) {
    book.img_link = imgLink;
    notifyListeners();
  }
}