import 'package:elibrary/librarian/data/sources/constants.dart';
import 'package:flutter/material.dart';

enum PageState { account, book, out }
class StatePage with ChangeNotifier {
  PageState page;
  String name;
  IconData icon;

  StatePage({required this.page,required this.name,required this.icon});
  void setPage(page, name) {
    this.page = page;
    this.name = name;
    notifyListeners();
  }

  PageState get getPage => page;
  String get getName => name;
  IconData get getIcon => icon;
}



final stateList = [
  StatePage(
      page: PageState.account, name: 'User Account', icon: Icons.account_circle),
  StatePage(page: PageState.book, name: 'Book', icon: Icons.library_books),
  StatePage(page: PageState.out, name: 'Sign out', icon: Icons.logout),
];
