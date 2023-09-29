import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_lang_app/quiz/alpaslquiz.dart';
import 'package:sign_lang_app/quiz/numb.dart';
import 'package:sign_lang_app/video_items.dart';
import 'package:video_player/video_player.dart';

class BasicsAsl extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: ListView(
          children: <Widget>[
            Card(
              margin: EdgeInsets.only(left: 20,right: 20),
              color: Color(0xffa1e5f5),
              child: ListTile(
                title: Text('Days in a week and signs of weekend',
                  style: GoogleFonts.nunito(
                    color: Color(0xff0A261F),
                    fontWeight: FontWeight.w700,
                    fontSize: 17
                  ),),
                leading: Icon(Icons.weekend, color: Color(0xff0A261F),),
                trailing: Icon(Icons.arrow_forward, color: Color(0xff0A261F),),
                onTap: (){Navigator.pushNamed(context, '/six');},
              ),
            ),
            Card(
              margin: EdgeInsets.only(left: 20,right: 20,top: 30),
              color: Color(0xffa1e5f5),
              child: ListTile(
                title: Text('Family', style: GoogleFonts.nunito(
                  color: Color(0xff0A261F),
                  fontWeight: FontWeight.w700,
                  fontSize: 18
                ),),
                leading: Icon(Icons.family_restroom, color: Color(0xff0A261F),),
                trailing: Icon(Icons.arrow_forward, color: Color(0xff0A261F),),
                onTap: (){Navigator.pushNamed(context, '/seven');},
              ),
            ),
            Card(
              margin: EdgeInsets.only(left: 20,right: 20,top: 30),
              color: Color(0xffa1e5f5),
              child: ListTile(
                title: Text('Basic Sentences', style: GoogleFonts.nunito(
                  color: Color(0xff0A261F),
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),),
                leading: Icon(Icons.score, color: Color(0xff0A261F),),
                trailing: Icon(Icons.arrow_forward, color: Color(0xff0A261F),),
                onTap: (){Navigator.pushNamed(context, '/eight');},
              ),
            ),
          ],
        ),
      ),
    );
  }
}