import 'package:elibrary/librarian/core/utils/text.dart';
import 'package:elibrary/librarian/data/sources/color_constants.dart';
import 'package:flutter/material.dart';

class ItemBooksUser extends StatefulWidget {
  int id;
  int state = 2;
  ItemBooksUser({required this.id, Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _ItemBooksUser();
  }
}

class _ItemBooksUser extends State<ItemBooksUser> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
            flex: 1,
            child: Align(
              child: textWidget(
                  widget.id.toString(), Colors.black, 10.0, FontWeight.w600),
            )),
        Expanded(
            flex: 8,
            child: textWidget(
                'Vạn cổ thần đế', Colors.black, 10.0, FontWeight.w600)),
        Expanded(
            flex: 1,
            child: SizedBox(
              height: 20,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      colorState(widget.state)),
                  padding:
                      MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(0)),
                ),
                onPressed: () {
                  setState(() {
                    if (widget.state != 1) {
                      widget.state = 0;
                    }
                  });
                },
                child: textWidget(textState(widget.state), Colors.white, 10.0,
                    FontWeight.w600),
              ),
            ))
      ],
    );
  }
}

String textState(state) {
  String result = '';
  switch (state) {
    case 0:
      result = 'Returned';
      break;
    case 1:
      result = 'Borrow';
      break;
    case 2:
      result = 'Reverse';
      break;
  }

  return result;
}

Color colorState(state) {
  Color result = Colors.white;
  switch (state) {
    case 0:
      result = colorTheme;
      break;
    case 1:
      result = Colors.red;
      break;
    case 2:
      result = colorBlueTheme;
      break;
  }

  return result;
}
