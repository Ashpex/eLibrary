import 'package:elibrary/librarian/core/utils/text.dart';
import 'package:elibrary/librarian/core/utils/utility.dart';
import 'package:elibrary/librarian/data/sources/color_constants.dart';
import 'package:elibrary/librarian/data/sources/constants.dart';
import 'package:elibrary/librarian/presentation/pages/book_page/book_page.dart';
import 'package:elibrary/librarian/presentation/pages/user_account_page/user_account_page.dart';
import 'package:elibrary/librarian/presentation/provider/state_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainBody extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  MainBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 60,
            width: double.infinity,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                  child: Image.asset(
                    imagesPath + 'avatar.png',
                    width: 50,
                    height: 50,
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                textWidget(
                    Provider.of<StatePage>(context, listen: true).getName,
                    colorTheme,
                    27,
                    FontWeight.w800),
                const Spacer(),
                searchBox(searchController),
              ],
            ),
          ),
          Expanded(
              child: Container(
                  margin: EdgeInsets.all(10.0),
                  child: Consumer<StatePage>(
                    builder: (context, model, _) {
                      PageState page = model.getPage;
                      if (page == PageState.account) {
                        return TableAccountPage();
                      } else if (page == PageState.book) {
                        return BookPage();
                      } else {
                        
                        return const Spacer();
                      }
                    },
                  )))
        ],
      ),
    );
  }
}
