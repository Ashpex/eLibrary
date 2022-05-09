import 'package:elibrary/librarian/core/utils/shadow.dart';
import 'package:elibrary/librarian/core/utils/text.dart';
import 'package:elibrary/librarian/data/sources/color_constants.dart';
import 'package:elibrary/librarian/presentation/provider/state_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BodyDrawer extends StatelessWidget {
  const BodyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 250,
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: ListView.builder(
            itemCount: stateList.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  // if (stateList[index].getState() == StatePage.out) {
                  //   Navigator.pushReplacement(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (context) => const LoginPage()));
                  // }
                  Provider.of<StatePage>(context, listen: false).setPage(
                      stateList[index].getPage, stateList[index].getName);
                  Scaffold.of(context).openEndDrawer();
                },
                child: Consumer<StatePage>(
                  builder: (yourContext, model, _) {
                    PageState state = model.page;
                    return Container(
                      padding: const EdgeInsets.only(
                          left: 10, top: 5, right: 8, bottom: 5),
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [boxShadow()],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            stateList[index].getIcon,
                            // width: 23,
                            // height: 23,
                            color: state == stateList[index].getPage
                                ? colorTheme
                                : Colors.black,
                          ),
                          const SizedBox(width: 29),
                          Text(stateList[index].getName,
                              style: textStyle(
                                  state == stateList[index].getPage
                                      ? colorTheme
                                      : Colors.black,
                                  18,
                                  FontWeight.w600))
                        ],
                      ),
                    );
                  },
                ),
              );
            }));
  }
}
