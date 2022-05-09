import 'package:elibrary/librarian/core/utils/text.dart';
import 'package:elibrary/librarian/data/sources/color_constants.dart';
import 'package:flutter/material.dart';

class ItemBook extends StatefulWidget {
  int id;
  bool isShow = false;
  ItemBook({required this.id, Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _ItemBook();
  }
}

class _ItemBook extends State<ItemBook> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
            flex: 1,
            child: textWidget(
                widget.id.toString(), Colors.black, 10.0, FontWeight.w600)),
        Expanded(
            flex: 8,
            child: textWidget(
                'Vạn cổ thần đế', Colors.black, 10.0, FontWeight.w600)),
        Expanded(
            flex: 1,
            child: textWidget('Borrowed', Colors.black, 10.0, FontWeight.w600)),
        Expanded(
            flex: 1,
            child: SizedBox(
              height: 20,
              child: TextButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.all(0)),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        widget.isShow ? Colors.red : colorTheme)),
                onPressed: () {
                  setState(() {
                    widget.isShow = !widget.isShow;
                  });
                },
                child: textWidget(widget.isShow ? 'Hide' : 'Show', Colors.white,
                    10.0, FontWeight.w600),
              ),
            ))
      ],
    );
  }
}
