import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class FamAsl extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SizedBox(
        height: 40,width: 110,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Color(0xffa1e5f5)),
          ),
          onPressed: (){},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Scroll',style: GoogleFonts.nunito(
                  color: Color(0xff0A261F),
                  fontWeight:FontWeight.w700,
                  fontSize: 18
              ),),
              Icon(Icons.arrow_downward_outlined,color: Color(0xff0A261F),),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xffa1e5f5),
        title: Text('Family', style: GoogleFonts.nunito(
          color: Color(0xff0A261F),
          fontWeight: FontWeight.w700,
          fontSize: 20
        ),),
        iconTheme: IconThemeData(color: Color(0xff0A261F)),
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 3,color: Color(0xff17e7b7)),//0xffa1e5f5
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset('assets/fam.png', height: 170,),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 3,color: Color(0xff17e7b7)),//0xffa1e5f5
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset('assets/fat.png', height: 170,),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 3,color: Color(0xff17e7b7)),//0xffa1e5f5
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset('assets/mot.png', height: 170,),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 3,color: Color(0xff17e7b7)),//0xffa1e5f5
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset('assets/son.png', height: 170,),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 3,color: Color(0xff17e7b7)),//0xffa1e5f5
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset('assets/daug.png', height: 170,),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 3,color: Color(0xff17e7b7)),//0xffa1e5f5
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset('assets/aunt.png', height: 170,),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 3,color: Color(0xff17e7b7)),//0xffa1e5f5
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset('assets/unc.png', height: 170,),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 3,color: Color(0xff17e7b7)),//0xffa1e5f5
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset('assets/mc.png', height: 170,),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 3,color: Color(0xff17e7b7)),//0xffa1e5f5
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset('assets/fc.png', height: 170,),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}