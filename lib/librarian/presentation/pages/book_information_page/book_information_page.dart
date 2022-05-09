import 'package:flutter/material.dart';

import 'components/cover_page.dart';

class BookInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(mainAxisSize: MainAxisSize.max,children: [
          Expanded(
            child: ImageCover(
              link:
                  'https://nae.vn/ttv/ttv/public/images/story/19fbfde6e5bf27fba61b0a261dbdf65a283269995087ba99a79fe1b3d048ddc7.jpg',
            ),
            flex: 11,
          ),
          const SizedBox(width: 5,),
          Expanded(
            child: Text('lal'),
            flex: 19,
          )
        ]),
      ),
    );
  }
}
