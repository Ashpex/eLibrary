import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../source/constants copy.dart';

TextStyle textStyle(color, size, fontWeight) {
  return GoogleFonts.openSans(
      color: color, fontSize: size.toDouble(), fontWeight: fontWeight);
}

Widget textWidget(text, color, size, fontWeight, {TextAlign? textAlign}) {
  return Text(
    text,
    style: textStyle(color, size, fontWeight),
    textAlign: textAlign,
  );
}

Widget textFormField(
  controller,
  icon,
  hintText,
  labelText,
  onChanged,
) {
  return TextFormField(
    maxLines: calcLine(controller.text),
    controller: controller,
    style: const TextStyle(color: Colors.black),
    decoration: inputDecoration(icon, hintText, labelText),
    onSaved: (String? value) {},
    onChanged: onChanged,
    
  );
}

int calcLine(String message) {
  int len = message.length;
  if (len < 100) return 1;
  int result = (len / 100).ceil();
  return result;
}

InputDecoration inputDecoration(icon, hintText, labelText) {
  return InputDecoration(
    labelStyle: const TextStyle(color: Colors.grey),
    hintStyle: const TextStyle(color: Colors.grey),
    hintText: hintText,
    labelText: labelText,
    suffixIcon: icon,
  );
}
