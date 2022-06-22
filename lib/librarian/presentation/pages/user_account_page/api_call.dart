import 'dart:convert';
import 'package:elibrary/librarian/data/models/User.dart';
import 'package:elibrary/source/api_constants.dart';
import 'package:http/http.dart' as http;

Future<List<User>> fetchUser(accessToken) async {
  List<User> listUser = [];
  Map<String, String> headers = {
    "Content-type": "application/json",
    'Accept': 'application/json',
    'Authorization': 'Bearer $accessToken'
  };
  final response = await http.get(Uri.parse(api_all_user), headers: headers);
  if (response.statusCode == 201 || response.statusCode == 200) {
    for (var frag in json.decode(response.body)) {
      listUser.add(User.fromJson(frag));
    }
  }
  return Future.value(listUser);
}
