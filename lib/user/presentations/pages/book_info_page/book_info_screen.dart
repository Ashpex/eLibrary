import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:elibrary/user/sources/color_constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:elibrary/widgets/custom_tab_indicator.dart';
import 'package:elibrary/models/book.dart';

class BookInfoScreen extends StatelessWidget {
  final Book books;

  // ignore: prefer_const_constructors_in_immutables
  BookInfoScreen({required this.books});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 25, right: 25, bottom: 25),
        height: 49,
        color: Colors.transparent,
        child: FlatButton(
          color: colorTheme,
          onPressed: () {},
          child: Text(
            'Borrow',
            style: GoogleFonts.openSans(
                fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                backgroundColor: colorTheme,
                expandedHeight: MediaQuery.of(context).size.height * 0.5,
                flexibleSpace: Container(
                  color: colorTheme,
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 25,
                        top: 35,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushReplacementNamed(
                                context, "/HomeScreen");
                          },
                          child: Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white),
                            child: SvgPicture.asset(
                                'assets/icons/icon_back_arrow.svg'),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 62),
                          width: 172,
                          height: 225,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(books.image),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SliverList(
                  delegate: SliverChildListDelegate([
                Padding(
                  padding: EdgeInsets.only(top: 24, left: 25),
                  child: Text(
                    books.title,
                    style: GoogleFonts.openSans(
                        fontSize: 27,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 7, left: 25),
                  child: Text(
                    books.author,
                    style: GoogleFonts.openSans(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 7, left: 25),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Rating: ',
                          style: GoogleFonts.openSans(
                              fontSize: 14,
                              color: colorTheme,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          " 5",
                          //popularBookModel.stars,
                          style: GoogleFonts.openSans(
                              fontSize: 32,
                              color: colorTheme,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    )),
                Container(
                  height: 28,
                  margin: EdgeInsets.only(top: 23, bottom: 36),
                  padding: EdgeInsets.only(left: 25),
                  child: DefaultTabController(
                    length: 3,
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
                            weight: 2, width: 30, color: Colors.black),
                        tabs: [
                          Tab(
                            child: Container(
                              margin: EdgeInsets.only(right: 39),
                              child: Text('Description'),
                            ),
                          ),
                          Tab(
                            child: Container(
                              margin: EdgeInsets.only(right: 39),
                              child: Text('Reviews'),
                            ),
                          ),
                          Tab(
                            child: Container(
                              margin: EdgeInsets.only(right: 39),
                              child: Text('Similar'),
                            ),
                          )
                        ]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 25, bottom: 25),
                  child: Text(
                    books.description,
                    style: GoogleFonts.openSans(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                      letterSpacing: 1.5,
                      height: 2,
                    ),
                  ),
                )
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
