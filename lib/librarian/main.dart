import 'package:elibrary/librarian/presentation/pages/librarian_page/librarian_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft])
      .then((_) {
    runApp(LibrarianMain(
      name: "Nguyên",
    ));
  });
}

class LibrarianMain extends StatelessWidget {
  String name;
  LibrarianMain({required this.name, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LibrarianPage(name: "Nguyen"),
    );
  }
}
