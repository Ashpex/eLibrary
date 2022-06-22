import 'package:elibrary/user/sources/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:elibrary/models/Book.dart';
import 'package:elibrary/widgets/custom_tab_indicator.dart';
import 'package:elibrary/user/presentations/pages/book_info_page/book_info_screen.dart';

class BookShelfScreen extends StatefulWidget {
  @override
  @override
  _BookShelfScreenState createState() => _BookShelfScreenState();
}

class _BookShelfScreenState extends State<BookShelfScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(left: 25, top: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Bookshelf',
                        style: GoogleFonts.openSans(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: colorTheme),
                      ),
                    ],
                  )),
              Container(
                height: 39,
                margin: EdgeInsets.only(left: 25, right: 25, top: 18),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[300]),
                child: Stack(
                  children: <Widget>[
                    TextField(
                      //maxLengthEnforced: true,
                      style: GoogleFonts.openSans(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                      decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.only(left: 19, right: 50, bottom: 8),
                          border: InputBorder.none,
                          hintText: 'Search book..',
                          hintStyle: GoogleFonts.openSans(
                              fontSize: 12,
                              color: Colors.grey[600],
                              fontWeight: FontWeight.w600)),
                    ),
                    Positioned(
                      right: 0,
                      child:
                          SvgPicture.asset('assets/svg/background_search.svg'),
                    ),
                    Positioned(
                      top: 8,
                      right: 9,
                      child: SvgPicture.asset(
                          'assets/icons/icon_search_white.svg'),
                    )
                  ],
                ),
              ),
              Container(
                height: 25,
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.only(left: 25),
                child: DefaultTabController(
                  length: 2,
                  child: TabBar(
                      labelPadding: EdgeInsets.all(0),
                      indicatorPadding: EdgeInsets.all(0),
                      isScrollable: true,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      labelStyle: GoogleFonts.openSans(
                          fontSize: 14, fontWeight: FontWeight.w700),
                      unselectedLabelStyle: GoogleFonts.openSans(
                          fontSize: 14, fontWeight: FontWeight.w600),
                      indicator: RoundedRectangleTabIndicator(
                          weight: 2, width: 10, color: Colors.black),
                      tabs: [
                        Tab(
                          child: Container(
                            margin: EdgeInsets.only(right: 23),
                            child: Text('Borrowed'),
                          ),
                        ),
                        Tab(
                          child: Container(
                            margin: EdgeInsets.only(right: 23),
                            child: Text('Reservation'),
                          ),
                        ),
                      ]),
                ),
              ),
              ListView.builder(
                  padding: EdgeInsets.only(top: 25, right: 25, left: 25),
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: popularBooks.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        print('ListView Tapped');
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                BookInfoScreen(books: popularBooks[index]),
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 19),
                        height: 200,
                        width: MediaQuery.of(context).size.width - 50,
                        color: Colors.white,
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 200,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image:
                                        AssetImage(popularBooks[index].image),
                                  ),
                                  color: colorTheme),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  popularBooks[index].title,
                                  style: GoogleFonts.openSans(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: colorTextTitle),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  popularBooks[index].author,
                                  style: GoogleFonts.openSans(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Rating: 5', //+ populars[index].rating,
                                  style: GoogleFonts.openSans(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
