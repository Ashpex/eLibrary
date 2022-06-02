import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../data/models/User.dart';
import '../../data/models/newbook_model.dart';
import '../../data/models/popularbook_model.dart';

import '../../../../../../widgets/custom_tab_indicator.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('eLibrary'),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(left: 25, top: 25),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Hi, Ashpex',
                      style: GoogleFonts.openSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey),
                    ),
                    Text(
                      'Discover Latest Books',
                      style: GoogleFonts.openSans(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ],
                )),
            Container(
                height: 40,
                margin: EdgeInsets.only(left: 25, right: 25, top: 18),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                ),
                child: Stack(
                  children: <Widget>[
                    TextField(
                      maxLengthEnforced: true,
                      style: GoogleFonts.openSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.only(left: 20, right: 50, bottom: 8),
                        border: InputBorder.none,
                        hintText: 'Search your book ...',
                        hintStyle: GoogleFonts.openSans(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Positioned(
                        right: 0,
                        child:
                            SvgPicture.asset('asssets/background_search.svg')),
                    Positioned(
                        top: 8,
                        right: 9,
                        child: SvgPicture.asset('assets/icon_search_white.svg'))
                  ],
                )),
            Container(
              height: 25,
              margin: EdgeInsets.only(top: 30),
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
                      weight: 2,
                      width: 10,
                      color: Colors.black,
                    ),
                    tabs: [
                      Tab(
                          child: Container(
                        margin: EdgeInsets.only(right: 23),
                        child: Text('New'),
                      )),
                      Tab(
                          child: Container(
                        margin: EdgeInsets.only(right: 23),
                        child: Text('Trending'),
                      )),
                      Tab(
                          child: Container(
                        margin: EdgeInsets.only(right: 23),
                        child: Text('Best Seller'),
                      ))
                    ]),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 21),
              height: 210,
              child: ListView.builder(
                  padding: EdgeInsets.only(left: 25, right: 6),
                  itemCount: newbooks.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 210,
                      width: 153,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage(newbooks[index].image),
                          )),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
