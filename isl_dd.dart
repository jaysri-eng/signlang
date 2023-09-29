import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_lang_app/quiz/alphabet.dart';
import 'package:sign_lang_app/quiz/numb.dart';
import 'package:sign_lang_app/vids/alle.dart';
import 'package:sign_lang_app/vids/bank.dart';
import 'package:sign_lang_app/vids/bro.dart';
import 'package:sign_lang_app/vids/can.dart';
import 'package:sign_lang_app/vids/clinic.dart';
import 'package:sign_lang_app/vids/col.dart';
import 'package:sign_lang_app/vids/cough.dart';
import 'package:sign_lang_app/vids/daug.dart';
import 'package:sign_lang_app/vids/diab.dart';
import 'package:sign_lang_app/vids/fac.dart';
import 'package:sign_lang_app/vids/fat.dart';
import 'package:sign_lang_app/vids/friday.dart';
import 'package:sign_lang_app/vids/gf.dart';
import 'package:sign_lang_app/vids/gm.dart';
import 'package:sign_lang_app/vids/jaun.dart';
import 'package:sign_lang_app/vids/monday.dart';
import 'package:sign_lang_app/vids/mot.dart';
import 'package:sign_lang_app/vids/res.dart';
import 'package:sign_lang_app/vids/saloon.dart';
import 'package:sign_lang_app/vids/saturday.dart';
import 'package:sign_lang_app/vids/shop.dart';
import 'package:sign_lang_app/vids/sis.dart';
import 'package:sign_lang_app/vids/son.dart';
import 'package:sign_lang_app/vids/sunday.dart';
import 'package:sign_lang_app/vids/thursday.dart';
import 'package:sign_lang_app/vids/tuesday.dart';
import 'package:sign_lang_app/vids/wednesday.dart';
import 'package:sign_lang_app/vids/woun.dart';
import 'package:sign_lang_app/vids/zoo.dart';


class IslDd extends StatefulWidget {
  @override
  _IslDdState createState() => _IslDdState();
}

class _IslDdState extends State<IslDd> {
  String dval = 'Cough';
  String dropdownvalue="Monday";
  String ddvalue = "Clinic";
  String dd = 'Alphabets';
  select(){
    switch(dd){
      case 'Alphabets':{
        return Alp();
      }
      break;
      case 'Numbers':{
        return Num();
      }
    }
  }
  selec(){
    switch(ddvalue){
      case 'Clinic':{
        return Clinic();
      }
      break;
      case 'Saloon':{
        return Saloon();
      }
      break;
      case 'Bank':{
        return Bank();
      }
      break;
      case 'Shop':{
        return Shop();
      }
      break;
      case 'Zoo':{
        return Zoo();
      }
      break;
      case 'Restaurant':{
        return Restaurant();
      }
      break;
      case 'Factory':{
        return Factory();
      }
      break;
    }
  }
  selction(){
    switch(dropdownvalue){
      case 'Monday':{
        return Monday();
      }
      break;
      case 'Tuesday':{
        return Tuesday();
      }
      break;
      case 'Wednesday':{
        return Wednesday();
      }
      case 'Thursday':{
        return Thursday();
      }
      case 'Friday':{
        return Friday();
      }
      case 'Saturday':{
        return Saturday();
      }
      case 'Sunday':{
        return Sunday();
      }
    }
  }
  selc(){
    switch(dval){
      case 'Cough':{
        return Cough();
      }
      break;
      case 'Cold':{
        return Cold();
      }
      break;
      case 'Cancer':{
        return Cancer();
      }
      break;
      case 'Allergy':{
        return Allergy();
      }
      break;
      case 'Wound':{
        return Wound();
      }
      break;
      case 'Jaundice':{
        return Jaundice();
      }
      break;
      case 'Diabetes':{
        return Diabetes();
      }
      break;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text('Select any\nday in a week',style: GoogleFonts.nunito(
                    color: Color(0xff0A261F),
                    fontWeight: FontWeight.w700,
                    fontSize: 16
                  ),),
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Container(
                      height: 60,width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xff17e7b7),width: 3),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            dropdownColor: Color(0xffa1e5f5),
                            iconEnabledColor: Color(0xff0A261F),
                            iconSize: 20,
                            style: GoogleFonts.nunito(fontSize: 15,color: Colors.blue,fontWeight: FontWeight.w600),
                            underline: Container(
                              height: 2,
                              color: Colors.black,),
                            value: dropdownvalue,
                            onChanged: (String newValue){
                              setState(() {
                                dropdownvalue=newValue;
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>selction()));
                              });
                            },
                            items:<String>['Monday',"Tuesday","Wednesday", "Thursday","Friday","Saturday","Sunday"].map<DropdownMenuItem<String>>((String value){
                              return DropdownMenuItem<String>(
                                value:value,
                                child:Text(value,style: GoogleFonts.nunito(
                                  color: Colors.blue,
                                  fontSize: 10,
                                ),),
                              );
                            }
                            ).toList(),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text('Select any place\nof your choice',style: GoogleFonts.nunito(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff0A261F),
                  ),),
                  Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: Container(
                      height: 60,width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xff17e7b7),width: 3)
                      ),
                      child: DropdownButtonHideUnderline(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: DropdownButton<String>(
                            dropdownColor: Color(0xffa1e5f5),
                            iconEnabledColor: Color(0xff0A261F),
                            iconSize: 20,
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w600,
                              fontSize: 15
                            ),
                            underline: Container(
                              height: 2,
                              color: Colors.black,),
                            value: ddvalue,
                            onChanged: (String newValue){
                              setState(() {
                                ddvalue=newValue;
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>selec()));
                              });
                            },
                            items:<String>['Clinic',"Saloon", "Bank","Shop","Zoo","Restaurant", "Factory"].map<DropdownMenuItem<String>>((String value){
                              return DropdownMenuItem<String>(
                                value:value,
                                child:Text(value,style: GoogleFonts.nunito(
                                  color: Colors.blue,
                                  fontSize: 10,
                                ),),
                              );
                            }
                            ).toList(),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text('Select any\nhealth problem',style: GoogleFonts.nunito(
                    color: Color(0xff0A261F),
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),),
                  Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: Container(
                      height: 60,width: 120,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff17e7b7),width: 3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: DropdownButton<String>(
                            dropdownColor: Color(0xffa1e5f5),
                            iconEnabledColor: Color(0xff0A261F),
                            iconSize: 20,
                            style: TextStyle(color: Colors.blue,fontSize: 15,fontWeight: FontWeight.w600),
                            underline: Container(
                              height: 2,
                              color: Colors.black,),
                            value: dval,
                            onChanged: (String newValue){
                              setState(() {
                                dval=newValue;
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>selc()));
                              });
                            },
                            items:<String>['Cough',"Cold", "Cancer","Allergy","Wound","Jaundice","Diabetes"].map<DropdownMenuItem<String>>((String value){
                              return DropdownMenuItem<String>(
                                value:value,
                                child:Text(value,style: GoogleFonts.nunito(
                                  color: Colors.blue,
                                  fontSize: 10,
                                ),),
                              );
                            }
                            ).toList(),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
