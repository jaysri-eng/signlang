import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:sign_lang_app/asl.dart';
import 'package:sign_lang_app/bsl.dart';
import 'package:sign_lang_app/homePage.dart';
import 'package:sign_lang_app/quiz/numb.dart';
import 'package:sign_lang_app/settings/contact.dart';
import 'package:sign_lang_app/settings/working.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share_plus/share_plus.dart';

/*Text('Indian sign language',style: GoogleFonts.k2d(
fontSize: 16,
fontWeight: FontWeight.w700,
color: Color(0xff0a261f),
),),*/

class Categories extends StatefulWidget{
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {


  //const Categories({Key? key}) : super(key: key);

  share() async{
    await Share.share(
     "https://play.google.com/store/apps/details?id=com.jayanthsrinivasan.signlangapp",
     subject: 'Basics of sign language app link',
    );
  }

  openUrl(){
    String url = "https://play.google.com/store/apps/details?id=com.jayanthsrinivasan.signlangapp";
    launch(url);
  }

  openPv(){
    String url = "https://sites.google.com/view/sign-language-privacy-policy/home";
    launch(url);
  }

  openInsta(){
    String url = "https://www.instagram.com/basics_of_signlang_app/";
    launch(url);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Container(
        width: MediaQuery.of(context).size.width,
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.only(top: 100,left: 20,right: 20),
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => WorkingIt()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Color(0xff17e7b7),width: 3)
                  ),
                  height: 70,
                  child: ListTile(
                    contentPadding: EdgeInsets.only(top: 5,left: 10,right: 10),
                    tileColor: Color(0xff17e7b7).withOpacity(0.5),
                    title: Text('How it works?',style: GoogleFonts.k2d(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff0a261f),
                    ),),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 20,),
                    leading: Image.asset('assets/settings/idea.png',height: 50,width: 50,),
                  ),
                ),
              ),
              /*GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ContactUs()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Color(0xff17e7b7),width: 3)
                  ),
                  margin: EdgeInsets.only(top: 30),
                  height: 80,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: ListTile(
                      contentPadding: EdgeInsets.only(top: 10,left: 10,right: 10),
                      tileColor: Color(0xff17e7b7).withOpacity(0.5),
                      title: Text('Help and support!',style: GoogleFonts.k2d(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff0a261f),
                      ),),
                      trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 20,),
                      leading: Image.asset('assets/settings/question.png',height: 50,width: 50,),
                    ),
                  ),
                ),
              ),*/
              GestureDetector(
                onTap: (){openPv();},
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Color(0xff17e7b7),width: 3)
                  ),
                  margin: EdgeInsets.only(top: 30),
                  height: 70,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: ListTile(
                      contentPadding: EdgeInsets.only(top: 5,left: 10,right: 10),
                      tileColor: Color(0xff17e7b7).withOpacity(0.5),
                      title: Text('Privacy policy',style: GoogleFonts.k2d(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff0a261f),
                      ),),
                      trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 20,),
                      leading: Image.asset('assets/settings/privacy.png',height: 50,width: 50,),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){openUrl();},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Color(0xff17e7b7),width: 3)
                  ),
                  margin: EdgeInsets.only(top: 30),
                  height: 70,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: ListTile(
                      contentPadding: EdgeInsets.only(top: 5,left: 10,right: 10),
                      tileColor: Color(0xff17e7b7).withOpacity(0.5),
                      title: Text('Rate us',style: GoogleFonts.k2d(
                          color: Color(0xff0a261f),
                          fontWeight: FontWeight.w700,
                          fontSize: 18
                      ),),
                      trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 20,),
                      leading: Image.asset('assets/settings/star.png',height: 50,width: 50,),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){openInsta();},
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Color(0xff17e7b7),width: 3)
                  ),
                  margin: EdgeInsets.only(top: 30),
                  height: 70,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: ListTile(
                      tileColor: Color(0xff17e7b7).withOpacity(0.5),
                      title: Text('Connect with us on Instagram',style: GoogleFonts.k2d(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff0a261f),
                      ),),
                      trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 20,),
                      leading: Padding(
                        padding: const EdgeInsets.only(top: 10,right: 10),
                        child: Image.asset('assets/settings/insta.png',height: 50,width:50,),
                      ),
                    ),
                  ),
                ),
              ),
              Divider(height: 190,thickness: 0,color: Colors.white,),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  //margin: EdgeInsets.only(top: 200),
                  height: 60,width: MediaQuery.of(context).size.width/1.2,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black,width: 2),
                    color: Color(0xffC1C1C1).withOpacity(0.5),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text('Current version - 3.5.6',style: GoogleFonts.k2d(
                        fontWeight: FontWeight.w600,
                        color: Color(0xff0a261f),
                        fontSize: 15
                    ),),
                  ),
                ),
              ),
            ],
          )
        ),
      ),
      backgroundColor: Color(0xff0a261f),
      appBar: AppBar(
        backgroundColor: Color(0xff0a261f),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.asset('assets/signapp_icon.png'),
        ),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20,left: 20,right: 20),
            child: Container(
              height: 110,width: MediaQuery.of(context).size.width/1.1,
              decoration: BoxDecoration(
                color: Color(0xff99CDD9),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/laugh.png',height: 80,width: 80,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:[
                      Text('Someone you know\nmay want to learn too!',style: GoogleFonts.k2d(
                        color: Color(0xff0a261f),
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                      ),),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                            backgroundColor: MaterialStateProperty.all(Color(0xff0a261f)),
                          ),
                          onPressed: (){share();},
                          child: Text('Share the app',style: GoogleFonts.k2d(
                            color: Color(0xffa1e5f5),
                            fontWeight: FontWeight.w600,
                          ),),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          /*Padding(
            padding: const EdgeInsets.only(left: 0,top: 25),
            child: Align(
              alignment: Alignment.center,
              child: Text('Choose any category',style: GoogleFonts.k2d(
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),),
            ),
          ),*/
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 0,left: 0,top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text('Top categories',style: GoogleFonts.k2d(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Color(0xffa1e5f5),
                        ),),
                      ),
                    ),
                    /*Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Scroll',style: GoogleFonts.k2d(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: Colors.blue
                        ),),
                        Icon(Icons.arrow_downward_outlined,color: Colors.blue,size: 16,)
                      ],
                    ),*/
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15,top: 30,right: 15),
                child: Container(
                  height: MediaQuery.of(context).size.height/3,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    side: BorderSide(
                                      color: Color(0xff17e7b7),
                                      width: 4,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    fixedSize: Size(100, 100),
                                  ),
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                                  },
                                  child: Image.asset('assets/flags/india.png',height: 70,width: 70,),
                                ),
                                Text('Indian sign\n language',style: GoogleFonts.k2d(
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xffa1e5f5),
                                    fontSize: 15
                                ),),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    side: BorderSide(
                                      color: Color(0xff17e7b7),
                                      width: 4,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    fixedSize: Size(100, 100),
                                  ),
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Asl()));
                                  },
                                  child: Image.asset('assets/flags/usa-map.png',height: 70,width: 70,),
                                ),
                                Text('American sign\n language',style: GoogleFonts.k2d(
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xffa1e5f5),
                                    fontSize: 15
                                ),),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    side: BorderSide(
                                      color: Color(0xff17e7b7),
                                      width: 4,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    fixedSize: Size(100, 100),
                                  ),
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Bsl()));
                                  },
                                  child: Image.asset('assets/flags/england.png',height: 70,width: 70,),
                                ),
                                Text('British sign\n language',style: GoogleFonts.k2d(
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xffa1e5f5),
                                    fontSize: 15
                                ),),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}


