import 'package:flutter/material.dart';

import 'author.dart';

class Book {
  int id;
  String name;
  String img_link;
  String star;
  String description;
  List<String> genres;
  String add_date;
  Author author;
  Book(
      {required this.id,
      required this.name,
      required this.img_link,
      required this.star,
      required this.description,
      required this.genres,
      required this.add_date,
      required this.author});

  factory Book.fromJson(Map<String, dynamic> map) {
    List<String> gen = [];
    for(var i in map['genres']) {
      gen.add(i['name']);
    }
    return Book(
        id: map["id"],
        name: map["name"],
        img_link: map["img_link"],
        star: map["star"],
        description: map["description"],
        genres: gen,
        add_date: map["add_date"],
        author: Author(map['author']['id'], map['author']['name']));
  }

  String getGenres() {
    String result = '';
    for(var i in genres) {
      result += i + '/';
    }

    return result;
  }
}
