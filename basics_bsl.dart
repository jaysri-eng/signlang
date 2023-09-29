import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BasicBsl extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: ListView(
            children: <Widget>[
              Card(
                margin: EdgeInsets.only(left: 20,right: 20),
                color: Color(0xffa1e5f5),
                child: ListTile(
                  title: Text('Basic Greetings', style: GoogleFonts.nunito(
                    color: Color(0xff0A261F),
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),),
                  leading: Icon(Icons.face_retouching_natural, color: Color(0xff0A261F),),
                  trailing: Icon(Icons.arrow_forward, color: Color(0xff0A261F),),
                  onTap: (){Navigator.pushNamed(context, '/five');},
                ),
              ),
              Card(
                margin: EdgeInsets.only(left: 20,right: 20,top: 30),
                color: Color(0xffa1e5f5),
                child: ListTile(
                  title: Text('Essential Expressions', style: GoogleFonts.nunito(
                    color: Color(0xff0A261F),
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),),
                  leading: Icon(Icons.tag_faces_sharp, color: Color(0xff0A261F),),
                  trailing: Icon(Icons.arrow_forward, color: Color(0xff0A261F),),
                  onTap: (){Navigator.pushNamed(context, '/nine');},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}