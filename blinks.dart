import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';


class Blinks extends StatefulWidget {
  @override
  _BlinksState createState() => _BlinksState();
}

class _BlinksState extends State<Blinks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(left: 30,right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(
              height: 200,width: MediaQuery.of(context).size.width/1.2,
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
                        Text('BSL dictionary',style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w700,
                          color: Color(0xff0A261F),
                          fontSize: 17,
                        ),),
                        Text('Directs you to BSL\ndictionary page', style: GoogleFonts.nunito(
                            color: Color(0xff0A261F), fontSize: 15,fontWeight: FontWeight.w700),),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 50,width: 100,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xff0A261F),
                              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                              side: BorderSide(width: 10),
                            ),
                            child: Text('Click Here',style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w700,
                                color: Color(0xff17e7b7),
                                fontSize: 15
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
              height: 200,width: MediaQuery.of(context).size.width/1.2,
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
                        Text('Word game',style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          color: Color(0xff0A261F),
                        ),),
                        Text('Directs you to BSL\nword Search game', style: GoogleFonts.nunito(
                            color: Color(0xff0A261F), fontSize: 15,fontWeight: FontWeight.w700),),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 50,width: 100,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xff0A261F),
                              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                              //side: BorderSide(width: 20),
                            ),
                            child: Text('Click Here',style: GoogleFonts.nunito(
                                color: Color(0xff17e7b7),
                                fontWeight: FontWeight.w700,
                                fontSize: 15
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
    );
  }
  openUrl(){
    String url = "https://www.british-sign.co.uk/british-sign-language/dictionary/";
    launch(url);
  }
  dictOpen(){
    String url = "https://www.british-sign.co.uk/bsl-word-search/";
    launch(url);
  }
}
