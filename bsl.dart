//import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' hide Badge;
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_lang_app/alphabets/bsl_alp.dart';
import 'package:sign_lang_app/basics_bsl.dart';
import 'package:sign_lang_app/blinks.dart';
import 'package:sign_lang_app/comparison/bslcomalp.dart';
import 'package:sign_lang_app/comparison/bslcomnum.dart';
import 'package:sign_lang_app/detect/cambsl.dart';
import 'package:sign_lang_app/numbers/bslnum.dart';
import 'package:sign_lang_app/gree.dart';
import 'package:sign_lang_app/quiz/mainbsl.dart';
//import 'package:tflite/tflite.dart';

class Bsl extends StatefulWidget{
  @override
  _BslState createState() => _BslState();
}

class _BslState extends State<Bsl> {
  /*loadmodel() async {
    Tflite.loadModel(
      model: "assets/model/model_unquant.tflite",
      labels: "assets/model/labels.txt",
    );
  }*/
  final List<Widget> _children =[
    Example(),
    BslNum(),
    Blinks(),
    //BslGif(),
    //BasicBsl(),
    MainBsl(),
  ];
  int selectedPage = 0;

  void onTapped(int index){
    setState(() {
      selectedPage = index;
    });
  }

  @override
  void initState() {
    super.initState();
    //loadmodel();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*floatingActionButton: Container(
        width: 150,
        child: TextButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
              backgroundColor: MaterialStateProperty.all(Colors.blue),
              padding: MaterialStateProperty.all(EdgeInsets.all(10))
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Click to detect',style: GoogleFonts.nunito(color: Colors.black),),
              Icon(Icons.camera_alt_outlined,color: Colors.black,),
            ],
          ),
          onPressed: (){
            //Navigator.push(context, MaterialPageRoute(builder: (context) => CamBsl()));
            },
        ),
      ),*/
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: (){},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  /*Text('Compare',style: GoogleFonts.k2d(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffa1e5f5)
                  ),),*/
                  IconButton(
                    onPressed: (){
                      showDialog(
                        context: context,
                        builder: (BuildContext context){
                          return SimpleDialog(
                            backgroundColor: Color(0xffa1e5f5),
                            title: Center(child: Text('Select category\n for comparison',
                              style: GoogleFonts.nunito(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff0a261f),
                              ),)),
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.push(context,MaterialPageRoute(builder: (context) => BslComAlp()));
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text('Alphabets',style: GoogleFonts.nunito(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff0a261f),
                                    ),),
                                    Icon(Icons.sort_by_alpha,color: Color(0xff0a261f),size: 25,),
                                  ],
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(context,MaterialPageRoute(builder: (context) => BslCom()));
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text('Numbers',style: GoogleFonts.nunito(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff0a261f),
                              ),),
                                    Icon(Icons.format_list_numbered_sharp,
                                      color: Color(0xff0a261f),
                                      size: 27,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    tooltip: 'Compare with others',
                    icon: Icon(Icons.info_outline_rounded,color: Color(0xffa1e5f5),),
                    iconSize: 27,),
                ],
              ),
            ),
          ),
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        iconTheme: IconThemeData(color: Color(0xffa1e5f5)),
        backgroundColor: Color(0xff0a261f),
        title: Text('BSL',style: GoogleFonts.nunito(
          fontWeight: FontWeight.w700,
          fontSize: 22,
          color: Color(0xffa1e5f5),
        ),),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: const IconThemeData(color: Color(0xff17e7b7),),
        unselectedIconTheme: const IconThemeData(color: Colors.black),
        unselectedLabelStyle: const TextStyle(
            color: Colors.black
        ),
        selectedLabelStyle: const TextStyle(
            color: Color(0xff17e7b7)
        ),
        unselectedItemColor: Colors.white,
        selectedItemColor: const Color(0xff17e7b7),
        backgroundColor: Color(0xff0A261F),
        currentIndex: selectedPage,
        onTap: onTapped,
        elevation: 0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Alphabet',
            icon: Icon(Icons.sort_by_alpha,size: 25,),
          ),
          BottomNavigationBarItem(
            label: 'Numbers',
            icon: Icon(Icons.numbers_outlined,size: 25,),
          ),
          BottomNavigationBarItem(
            label: 'Links',
            icon: Icon(Icons.link_sharp,size: 25,),
          ),
          BottomNavigationBarItem(
            label: 'Practice',
            icon: Icon(Icons.score,size: 25,),
          ),
        ],
      ),
      /*bottomNavigationBar: BubbleBottomBar(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25)),
        backgroundColor: Color(0xff0A261F),
        currentIndex: selectedPage,
        onTap: onTapped,
        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(
            backgroundColor: Color(0xff17e7b7),
            icon: Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage('assets/alphabet-icon.png')),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(0,1),
                    blurRadius: 5,
                  ),
                ]
              ),
            ),
            activeIcon: Icon(
              Icons.access_time,
              color: Color(0xff17e7b7),
            ),title: Text('ALPHABET',style: GoogleFonts.nunito(fontSize: 10),),
          ),
          BubbleBottomBarItem(
            backgroundColor: Color(0xff17e7b7),
            icon: Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage('assets/Numbers-1-Black-icon.png')),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(0,1),
                    blurRadius: 5,
                  ),
                ]
              ),
            ),
            activeIcon: Icon(
              Icons.folder_open,
              color: Color(0xff17e7b7),
            ),title: Text('NUMBERS',style: GoogleFonts.nunito(fontSize: 10),),
          ),
          BubbleBottomBarItem(
            backgroundColor: Color(0xff17e7b7),
            icon: Icon(Icons.menu),
            activeIcon: Icon(Icons.menu, color: Color(0xff17e7b7),),title: Text('LINKS',style: GoogleFonts.nunito(
              fontSize: 10),),
          ),
          /*BubbleBottomBarItem(
            backgroundColor: Color(0xff17e7b7),
            icon: Icon(Icons.error),
            activeIcon: Icon(Icons.error, color: Color(0xff17e7b7),),
            title: Text('BASICS',style: GoogleFonts.nunito(fontSize: 10),),
          ),*/
          BubbleBottomBarItem(
            backgroundColor: Color(0xff17e7b7),
            icon: Icon(Icons.quiz_outlined),
            activeIcon: Icon(Icons.quiz_outlined, color: Color(0xff17e7b7),),
            title: Text('PRACTICE',style: GoogleFonts.nunito(fontSize: 10),),
          ),
        ], opacity: .2,
      ),*/
      body: _children[selectedPage],
    );
  }
}
