import 'package:flutter/material.dart';

class BookshelfScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('Bookshelf'),
      ),
      body: Center(
        child: Text(
          'Bookshelf',
          style: TextStyle(fontSize: 60),
        ),
      ));
}
