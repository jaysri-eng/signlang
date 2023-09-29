//import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:sign_lang_app/Pages.dart';
import 'package:sign_lang_app/asl.dart';
import 'package:sign_lang_app/basic_sen_asl.dart';
import 'package:sign_lang_app/basics.dart';
import 'package:sign_lang_app/basics_bsl.dart';
import 'package:sign_lang_app/bsl.dart';
import 'package:sign_lang_app/cats.dart';
import 'package:sign_lang_app/ess_exp.dart';
import 'package:sign_lang_app/fam.dart';
import 'package:sign_lang_app/fam_asl.dart';
import 'package:sign_lang_app/gree.dart';
import 'package:sign_lang_app/homePage.dart';
import 'package:sign_lang_app/places.dart';
import 'package:sign_lang_app/time_isl.dart';
import 'package:sign_lang_app/vids/friday.dart';
import 'package:sign_lang_app/vids/monday.dart';
import 'package:sign_lang_app/vids/saturday.dart';
import 'package:sign_lang_app/vids/sunday.dart';
import 'package:sign_lang_app/vids/thursday.dart';
import 'package:sign_lang_app/vids/tuesday.dart';
import 'package:sign_lang_app/vids/wednesday.dart';
import 'package:sign_lang_app/week_asl.dart';
import 'package:google_fonts/google_fonts.dart';

//List<CameraDescription> cameras;
Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  //cameras = await availableCameras();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/home': (context) => Basic(),
        '/second': (context) => HomeScreen(),
        '/third': (context) => Fam(),
        '/four': (context) => Places(),
        '/five': (context) => Gree(),
        '/six': (context) => DaysWeek(),
        '/seven': (context) => FamAsl(),
        '/eight': (context) => SenAsl(),
        '/nine': (context) => EssExp(),
        '/ten': (context) => Monday(),
        '/eleven': (context) => Tuesday(),
        '/twelve': (context) => Wednesday(),
        '/thirteen': (context) => Thursday(),
        '/fourteen': (context) => Friday(),
        '/fifteen': (context) => Saturday(),
        '/sixteen': (context) => Sunday(),
        '/seventeen': (context) => Pages(),
      },
      debugShowCheckedModeBanner: false,
      //title: 'Basics of Sign Language',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LaunchScreen(),
    );
  }
}

class LaunchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          IntroductionScreen(
            showDoneButton: true,
            showNextButton: false,
            onDone: () => Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Pages())),
            done: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xff51e5a1)),
              ),
              onPressed: (){
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Categories()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Next',style:
                  GoogleFonts.nunito(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                  Icon(Icons.arrow_forward,color: Colors.black,size: 18,),
                ],
              ),
            ),
            //skip: Text("Skip",style: TextStyle(fontStyle: FontStyle.italic,color: Colors.green),),
            curve: Curves.fastLinearToSlowEaseIn,
            dotsDecorator: const DotsDecorator(
              size: Size(10.0, 10.0),
              color: Colors.green,
              activeColor: Color(0xff0A261F),
              activeSize: Size(20.0, 10.0),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
              ),
            ),
            dotsContainerDecorator: BoxDecoration(color: Color(0xff0A261F)),
            pages: [
              PageViewModel(
                image: Image.asset("assets/signapp_icon.png"),
                titleWidget: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "BASICS OF SIGN LANGUAGE",
                    style: GoogleFonts.nunito(
                        //fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff51e5a1),//0xff17E7B7),
                        fontSize: 15),
                  ),
                ),
                bodyWidget: Text(
                  "Ready to make your fingers dance?",
                  style: GoogleFonts.nunito(
                    fontSize: 15,
                    /*shadows: <Shadow>[
                      Shadow(
                        offset: Offset(5.0, 5.0),
                        blurRadius: 5.0,
                        color: Colors.grey,
                      ),
                    ],*/
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffA1E5F5),
                  ),
                ),
                /*footer: Padding(
                  padding: EdgeInsets.only(top: 70),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "from Paradox",
                        style: GoogleFonts.nunito(
                          //fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),*/
                decoration: PageDecoration(
                  pageColor: Color(0xff0A261F),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}



