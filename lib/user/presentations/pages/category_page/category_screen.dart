import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('Category'),
      ),
      body: Center(
        child: Text(
          'Category',
          style: TextStyle(fontSize: 60),
        ),
      ));
}
