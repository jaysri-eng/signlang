import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SenAsl extends StatelessWidget{
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
        title: Text('Basic Sentences', style: GoogleFonts.nunito(
          color: Color(0xff0A261F),fontSize: 20,fontWeight: FontWeight.w700),),
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
                      child: Image.asset('assets/b11.png', height: 170,),
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
                      child: Image.asset('assets/b2.png', height: 170,),
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
                      child: Image.asset('assets/b3.png', height: 170,),
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
                      child: Image.asset('assets/b4.png', height: 170,width: 170,),
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
                      child: Image.asset('assets/b5.png', height: 170,),
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
                      child: Image.asset('assets/b6.png', height: 170,),
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
                      child: Image.asset('assets/b7.png', height: 170,),
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
                      child: Image.asset('assets/b8.png', height: 170,),
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
                      child: Image.asset('assets/b9.png', height: 180,),
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
                      child: Image.asset('assets/b10.png',height: 147,),
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