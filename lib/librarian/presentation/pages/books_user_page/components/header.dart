import 'package:elibrary/librarian/core/utils/text.dart';
import 'package:elibrary/librarian/core/utils/utility.dart';
import 'package:elibrary/librarian/data/sources/color_constants.dart';
import 'package:elibrary/librarian/data/sources/constants.dart';
import 'package:flutter/material.dart';

class HeaderBooksUser extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      height: 60,
      width: double.infinity,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [               
          textWidget('List Book', colorTheme, 27, FontWeight.w800),
          const Spacer(),
          searchBox(searchController, (value) {
            
          }),
        ],
      ),
    );
  }

}