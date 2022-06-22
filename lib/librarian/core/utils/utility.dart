import 'package:elibrary/librarian/core/utils/text.dart';
import 'package:elibrary/librarian/data/sources/color_constants.dart';
import 'package:elibrary/librarian/data/sources/constants.dart';
import 'package:flutter/material.dart';

import 'shadow.dart';

Widget searchBox(controller, onChanged) {
  return Container(
    width: 300,
    height: 40,
    decoration: BoxDecoration(boxShadow: [
      boxShadow()
    ], borderRadius: const BorderRadius.all(Radius.circular(baseRadius + 5.0))),
    child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        style: textStyle(Colors.black54, 14, FontWeight.w500),
        decoration: InputDecoration(
          suffixIcon: const Icon(
            Icons.search,
            color: colorTheme,
          ),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(baseRadius + 5)),
              borderSide: BorderSide.none),
          labelStyle: textStyle(Colors.black45, 14, FontWeight.w500),
          labelText: 'Search',
          filled: true,
          fillColor: Colors.white,
        )),
  );
}
