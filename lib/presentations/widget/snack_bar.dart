import 'package:flutter/material.dart';
void showSnackBar(content, context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(content),
    ));
}