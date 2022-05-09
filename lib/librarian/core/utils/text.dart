import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle textStyle(color, size, fontWeight) {
  return GoogleFonts.openSans(
      color: color, fontSize: size.toDouble(), fontWeight: fontWeight);
}

Widget textWidget(text, color, size, fontWeight) {
  return Text(
    text,
    style: textStyle(color, size, fontWeight),
  );
}
