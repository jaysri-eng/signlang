import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DaysWeek extends StatelessWidget{
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
        title: Text('Days in a week', style: GoogleFonts.nunito(
          color: Color(0xff0A261F),
          fontSize: 20,
          fontWeight: FontWeight.w700,
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
                      child: Container(
                        child: Image.asset('assets/day.png', height: 180,),
                      ),
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
                      child: Image.asset('assets/ly.png', height: 180,),
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
                      child: Image.asset('assets/mo.png', height: 180,),
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
                      child: Image.asset('assets/nm.png', height: 180,),
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
                      child: Image.asset('assets/to.png', height: 180,),
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
                      child: Image.asset('assets/tom.png', height: 180,),
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
                      child: Image.asset('assets/week.png', height: 180,),
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
                      child: Image.asset('assets/weeknd.png', height: 180,),
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
                      child: Image.asset('assets/today.png', height: 160,),
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
                      child: Image.asset('assets/yes.png', height: 150,),
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
                      child: Image.asset('assets/mon.png', height: 150,),
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
                      child: Image.asset('assets/tues.png', height: 150,),
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
                      child: Image.asset('assets/wednes.png', height: 160,),
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
                      child: Image.asset('assets/th.png', height: 160,),
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
                      //fit: FlexFit.tight,
                      child: Image.asset('assets/frid.png', height: 150,),
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
                      //fit: FlexFit.tight,
                      child: Image.asset('assets/sa.png', height: 150,),
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
                      //fit: FlexFit.tight,
                      child: Image.asset('assets/su.png', height: 160,),
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