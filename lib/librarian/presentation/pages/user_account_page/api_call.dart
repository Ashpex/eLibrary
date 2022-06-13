import 'dart:convert';
import 'package:elibrary/librarian/data/models/User.dart';
import 'package:elibrary/source/api_constants.dart';
import 'package:http/http.dart' as http;
Future<List<User>> fetchUser() async {
    List<User> listUser = [];
    Map<String, String> headers = {"Content-type": "application/json"};
    final response = await http.get(Uri.parse(api_all_user), headers: headers);
    for (var token in json.decode(response.body)) {
      listUser.add(User.fromJson(token));
    }
    return Future.value(listUser);
  }