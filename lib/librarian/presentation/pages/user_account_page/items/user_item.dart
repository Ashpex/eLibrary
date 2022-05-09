import 'package:elibrary/librarian/core/utils/text.dart';
import 'package:elibrary/librarian/data/sources/color_constants.dart';
import 'package:flutter/material.dart';

class ItemUser extends StatefulWidget {
  int id;
  bool isBan = false;
  ItemUser({required this.id, Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _ItemUser();
  }
}

class _ItemUser extends State<ItemUser> {
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
            flex: 4,
            child: textWidget(
                'ngocnguyenc3@gmail.com', Colors.black, 10.0, FontWeight.w600)),
        Expanded(
            flex: 4,
            child: textWidget(
                'Đoàn Ngọc Nguyên', Colors.black, 10.0, FontWeight.w600)),
        Expanded(
            flex: 1,
            child: textWidget('1', Colors.black, 10.0, FontWeight.w600)),
        Expanded(
            flex: 1,
            child: SizedBox(
              height: 20,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      widget.isBan ? Colors.red : colorTheme),
                  padding:
                      MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(0)),
                ),
                onPressed: () {
                  setState(() {
                    widget.isBan = !widget.isBan;
                  });
                },
                child: textWidget(widget.isBan ? 'Yes' : 'No', Colors.white,
                    10.0, FontWeight.w600),
              ),
            ))
      ],
    );
  }
}
