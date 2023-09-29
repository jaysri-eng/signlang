import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Basic extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Card(
              color: Colors.black,
              child: ListTile(
                title: Text('Days In a Week', style: GoogleFonts.nunito(color: Colors.white),),
                leading: Icon(Icons.access_time, color: Colors.white,),
                trailing: Icon(Icons.arrow_forward, color: Colors.white,),
                onTap: (){Navigator.pushNamed(context, '/second');},
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Card(
              color: Colors.blue,
              child: ListTile(
                title: Text('Family', style: GoogleFonts.nunito(color: Colors.white),),
                leading: Icon(Icons.family_restroom, color: Colors.white,),
                trailing: Icon(Icons.arrow_forward, color: Colors.white,),
                onTap: (){Navigator.pushNamed(context, '/third');},
              ),
            ),
            Padding(padding: EdgeInsets.all(10),),
            Card(
              color: Colors.green,
              child: ListTile(
                title: Text('Places', style: GoogleFonts.nunito(color: Colors.white),),
                leading: Icon(Icons.place, color: Colors.white,),
                trailing: Icon(Icons.arrow_forward, color: Colors.white,),
                onTap: (){Navigator.pushNamed(context, '/four');},
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Card(
              color: Colors.white,
              child: ListTile(
                title: Text('Health', style: GoogleFonts.nunito(color: Colors.black),),
                leading: Icon(Icons.healing, color: Colors.black,),
                trailing: Icon(Icons.arrow_forward, color: Colors.black,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}