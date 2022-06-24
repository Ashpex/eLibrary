import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle textStyle(color, size, fontWeight) {
  return GoogleFonts.openSans(
    color: color,
    fontSize: size.toDouble(),
    fontWeight: fontWeight,
  );
}

Widget textWidget(text, color, size, fontWeight, {maxline}) {
  return Text(
    text,
    maxLines: maxline??1,
    overflow: TextOverflow.ellipsis,
    style: textStyle(color, size, fontWeight),
  );
}
