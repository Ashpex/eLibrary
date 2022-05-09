import 'dart:ui';

import 'package:elibrary/librarian/data/sources/constants.dart';
import 'package:flutter/material.dart';

class ImageCover extends StatefulWidget {
  final _ImageCover _imageCover = _ImageCover();
  String? link = imageLink;
  ImageCover({Key? key, String? this.link}) : super(key: key);

  void setImageLink(link) {
    this.link = link;
    _imageCover.reloadImage();
  }

  @override
  State<StatefulWidget> createState() {
    return _imageCover;
  }
}

class _ImageCover extends State<ImageCover> {
  void reloadImage() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
            child: Image.network(
              widget.link!,
              fit: BoxFit.cover,
            )),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Image.network(
              widget.link!,
              fit: BoxFit.contain,
            ),
          ),
        )
      ],
    );
  }
}
