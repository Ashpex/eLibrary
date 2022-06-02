import 'package:elibrary/user/presentations/pages/bookshelf_page/bookshelf_screen.dart';
import 'package:elibrary/user/presentations/pages/home_page/home_screen.dart';
import 'package:elibrary/user/presentations/pages/library_page/library_screen.dart';
import 'package:elibrary/user/presentations/pages/profile_page/profile_screen.dart';
import 'package:flutter/material.dart';

import 'models/User.dart';

class UserMain extends StatelessWidget {
  const UserMain({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'eLibrary',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'eLibrary'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  int _counter = 0;
  final Screens = <Widget>[
    HomeScreen(),
    LibraryScreen(),
    BookshelfScreen(),
    ProfileScreen(
      user: User(
          id: 1,
          account: 'ashpex',
          name: 'Ashpex',
          password: '123123',
          phoneNumber: '099999999',
          gender: 2,
          address: '12/12 Random Street'),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: Screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Color(0xFF9bbae6),
        backgroundColor: Colors.white,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books_outlined),
            label: 'Library',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_outlined),
            label: 'Bookshelf',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
