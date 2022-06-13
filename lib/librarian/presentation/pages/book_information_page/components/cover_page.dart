import 'dart:ui';

import 'package:elibrary/librarian/data/sources/constants.dart';
import 'package:flutter/material.dart';

class ImageCover extends StatelessWidget {
  String? link = imageLink;
  ImageCover({Key? key, String? this.link}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
            child: Image.network(
              link!,
              fit: BoxFit.cover,
            )),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Image.network(
              link!,
              fit: BoxFit.contain,
            ),
          ),
        )
      ],
    );
  }


  
}


