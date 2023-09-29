import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EssExp extends StatelessWidget{
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
        title: Text('Essential Expressions', style: GoogleFonts.nunito(
            color: Color(0xff0A261F),fontWeight: FontWeight.w700,fontSize: 20),),
        backgroundColor: Color(0xffa1e5f5),
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
                      //fit: FlexFit.tight,
                      child: Image.asset('assets/ep1.png', height: 160,),
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
                      child: Image.asset('assets/ep2.png', height: 160,),
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
                      child: Image.asset('assets/ep3.png', height: 160,),
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
                      child: Image.asset('assets/ep4.png', height: 160,),
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
                      child: Image.asset('assets/ep5.png', height: 160,),
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
                      child: Image.asset('assets/ep6.png', height: 160,),
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
                      child: Image.asset('assets/ep7.png', height: 160,),
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
                      child: Image.asset('assets/ep8.png', height: 160,),
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