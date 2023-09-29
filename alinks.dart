import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      body: Container(
        padding: EdgeInsets.only(left: 30,right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(
              height: 180,width: MediaQuery.of(context).size.width/1.15,
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
                        Text('ASL dictionary',style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                          color: Color(0xff0A261F),
                        ),),
                        Text('Directs you to ASL\n dictionary page', style: GoogleFonts.nunito(
                            color: Color(0xff0A261F), fontSize: 15,fontWeight: FontWeight.w700),),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                              color: Color(0xff17e7b7),
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
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
              height: 180,width: MediaQuery.of(context).size.width/1.15,
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
                        Text('Alphabets videos',style:GoogleFonts.nunito(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Color(0xff0A261F),
                        ),),
                        Text('ASL Alphabets\nvideo link', style: GoogleFonts.nunito(
                            color: Color(0xff0A261F), fontSize: 15,fontWeight: FontWeight.w700),),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                              fontSize: 15,
                              color: Color(0xff17e7b7),
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
            SizedBox(
              height: 180,width: MediaQuery.of(context).size.width/1.15,
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
                        Text('Numbers videos',style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                          color: Color(0xff0A261F),
                        ),),
                        Text('ASL Numbers\nvideo link',
                          style: TextStyle(color: Color(0xff0A261F), fontSize: 15,fontWeight: FontWeight.w700),),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff17e7b7),
                            ),),
                            onPressed: (){numLink();},
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
    String url = "https://www.nidcd.nih.gov/health/american-sign-language";
    launch(url);
  }
  dictOpen(){
    String url = "https://www.youtube.com/watch?v=cGavOVNDj1s";
    launch(url);
  }
  numLink(){
    String url = "https://www.youtube.com/watch?v=jjvzIgFNY9Q";
    launch(url);
  }
}
