import 'package:elibrary/presentations/widget/text.dart';
import 'package:flutter/material.dart';

import '../../librarian/data/sources/color_constants.dart';

ButtonStyle buttonStyle(color) {
  return ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(color),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      )));
}

// Widget textButton(text, size, fontWeight, color, onTap) {
//   return TextButton(
//     style: buttonStyle(color),
//     child: Text(
//       text,
//       style: textStyle(Colors.white, size, fontWeight),
//     ),
//     onPressed: onTap,
//   );
// }

Widget elevatedButton(text, fontSize, fontWeight, color, onTap) {
  return ElevatedButton(
      child: textWidget(text, Colors.white, fontSize, fontWeight),
      style: buttonStyle(color),
      onPressed: onTap);
}
Widget elevatedButton1(text, fontSize, fontWeight, color, onTap) {
  return ElevatedButton(
      child: textWidget(text, colorTheme, fontSize, fontWeight),
      style: buttonStyle(color),
      onPressed: onTap);
}