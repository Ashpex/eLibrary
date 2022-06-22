import 'package:elibrary/librarian/core/utils/text.dart';
import 'package:elibrary/librarian/data/models/User.dart';
import 'package:elibrary/librarian/data/sources/color_constants.dart';
import 'package:flutter/material.dart';

class ItemUser extends StatefulWidget {
  User user;
  ItemUser({required this.user, Key? key}) : super(key: key);
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
            child: textWidget(widget.user.id.toString(), Colors.black, 10.0,
                FontWeight.w600)),
        Expanded(
            flex: 4,
            child: textWidget(
                widget.user.account, Colors.black, 10.0, FontWeight.w600)),
        Expanded(
            flex: 4,
            child: textWidget(
                widget.user.name, Colors.black, 10.0, FontWeight.w600)),
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
                      widget.user.isBan ? Colors.red : colorTheme),
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.all(0)),
                ),
                onPressed: () {
                  setState(() {
                    widget.user.isBan = !widget.user.isBan;
                  });
                },
                child: textWidget(widget.user.isBan ? 'Yes' : 'No',
                    Colors.white, 10.0, FontWeight.w600),
              ),
            ))
      ],
    );
  }
}
