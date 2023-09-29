import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';


class Links extends StatefulWidget {
  @override
  _LinksState createState() => _LinksState();
}

class _LinksState extends State<Links> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          padding: EdgeInsets.only(left: 0,right: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(
                height: 180,width: MediaQuery.of(context).size.width/1.2,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffa1e5f5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('ISL dictionary',style: GoogleFonts.nunito(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),),
                          Text('Directs you to ISL\ndictionary page',
                            style: GoogleFonts.nunito(
                              color: Color(0xff0A261F),fontSize: 15,fontWeight: FontWeight.w600),),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 50,width: 110,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xff0A261F),
                                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                //side: BorderSide(width: 20),
                              ),
                              child: Text('Click Here',style: GoogleFonts.nunito(
                                color: Color(0xff17e7b7),
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),),
                              onPressed: (){openUrl();},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 200,
                width: MediaQuery.of(context).size.width/1.2,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffa1e5f5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Videos',style: GoogleFonts.nunito(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                          ),),
                          Text('Directs you to\nvideo references',
                            style: GoogleFonts.nunito(
                              color: Color(0xff0A261F),
                              fontSize: 15,
                              fontWeight: FontWeight.w600
                            ),),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 50,width: 110,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xff0A261F),
                                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                //side: BorderSide(width: 20),
                              ),
                              child: Text('Click Here',style: GoogleFonts.nunito(
                                color: Color(0xff17e7b7),
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                              ),),
                              onPressed: (){dictOpen();},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  openUrl(){
    String url = "https://indiansignlanguage.org/search-dictionary";
    launch(url);
  }
  dictOpen(){
    String url = "http://www.islrtc.nic.in/video-hiearchy-select";
    launch(url);
  }
}
