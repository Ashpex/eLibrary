import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('eLibrary'),
      ),
      body: Center(
        child: Text(
          'Home',
          style: TextStyle(fontSize: 60),
        ),
      ));
}
