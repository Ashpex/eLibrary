import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../../../source/constants copy.dart';

class ImageCover extends StatelessWidget {
  String? link;
  ImageCover({Key? key, String? this.link}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
              child: Image.network(
                link ?? imgError,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) {
                  return Image.network(imgError, fit: BoxFit.cover);
                },
              )),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Image.network(link!, fit: BoxFit.contain,
                errorBuilder: (_, __, ___) {
              return Image.network(imgError, fit: BoxFit.contain);
            }),
          ),
        )
      ],
    );
  }
}
