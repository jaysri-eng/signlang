import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'asl.dart';
import 'bsl.dart';
import 'homePage.dart';

class Pages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime _lastExitTime = DateTime.now();
    return Scaffold(
      /*onWillPop: () async {
        return false;
      },*/
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: new NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
              return <Widget>[
                SliverAppBar(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  title: Text('Basics of Sign Language',
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      color: Colors.white,
                    ),),
                  backgroundColor: Color(0xff0A261F),
                  centerTitle: true,
                  pinned: true,
                  automaticallyImplyLeading: false,
                  floating: true,
                  bottom: TabBar(
                    indicatorPadding: EdgeInsets.only(left: 15,right: 15),
                    //indicatorSize: TabBarIndicatorSize.tab,
                    indicatorColor: Colors.greenAccent,
                    indicatorWeight: 5,
                    isScrollable: false,
                    tabs: [
                      Tab(child: Text('ISL',style: GoogleFonts.nunito(color: Colors.greenAccent),)),
                      Tab(child: Text('ASL',style: GoogleFonts.nunito(color: Colors.greenAccent),)),
                      Tab(child: Text('BSL',style: GoogleFonts.nunito(color: Colors.greenAccent),)),
                    ],
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: <Widget>[
                HomePage(),
                Asl(),
                Bsl(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
