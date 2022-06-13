import 'dart:convert';
import 'package:elibrary/librarian/data/models/book.dart';
import 'package:elibrary/librarian/data/models/user.dart';
import 'package:elibrary/source/api_constants.dart';
import 'package:http/http.dart' as http;

Future<List<Book>> fetchBook(token) async {
  List<Book> listBook = [];
  Map<String, String> headers = {
    "Content-type": "application/json",
    'Accept': 'application/json',
    'Authorization': 'Bearer $token'
  };
  final response = await http.get(Uri.parse(api_all_book), headers: headers);
  for (var token in json.decode(response.body)) {
    listBook.add(Book.fromJson(token));
  }
  return Future.value(listBook);
}
