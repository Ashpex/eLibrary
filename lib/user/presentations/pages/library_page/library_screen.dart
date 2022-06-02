import 'package:flutter/material.dart';

class LibraryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('Library'),
      ),
      body: Center(
        child: Text(
          'Library',
          style: TextStyle(fontSize: 60),
        ),
      ));
}
