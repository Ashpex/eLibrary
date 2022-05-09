import 'package:elibrary/librarian/data/sources/color_constants.dart';
import 'package:flutter/material.dart';

BoxShadow boxShadow({dynamic color}) {
  return BoxShadow(
    color: color ?? colorBoxShadow,
    blurRadius: 4,
    offset: const Offset(0, 4),
  );
}

Widget textShadowWidget(text, color, size, fontWeight) {
  return Text(
    text,
    style: TextStyle(
        color: color,
        overflow: TextOverflow.ellipsis,
        fontSize: size.toDouble(),
        fontWeight: fontWeight,
        shadows: [shadow()]),
  );
}

Shadow shadow() {
  return const Shadow(
      offset: Offset(0.0, 4.0), blurRadius: 4, color: colorBoxShadow);
}
