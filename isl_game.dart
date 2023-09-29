import 'package:flutter/material.dart';
import 'dart:math';

import 'package:google_fonts/google_fonts.dart';

class IslGame extends StatefulWidget {
  @override
  _IslGameState createState() => _IslGameState();
}

class _IslGameState extends State<IslGame> {

  // Loading the asset images
  AssetImage blank = AssetImage("assets/scratch_game/question1.png");
  AssetImage unlucky = AssetImage("assets/scratch_game/unlucky.png");
  AssetImage lucky = AssetImage("assets/scratch_game/lucky.png");
  AssetImage alpOne = AssetImage('assets/alphabetsisl/A.png');
  AssetImage alpTwo = AssetImage('assets/alphabetsisl/E.png');
  AssetImage numOne = AssetImage('assets/numbers/one.png');
  AssetImage numTwo = AssetImage('assets/numbers/seven.png');

  // Making an array which will be used to display items.
  List<String> itemArray;
  // This number will be used to display the cash image at a particular block
  int luckyNumber;
// To keep the track of the count
  int count=0;
  // For displaying a message with each app state
  String message="";

  // This function will be used to generate a number on which cash image will be displayed
  generateRandomNumber(){
    int random=Random().nextInt(25);
    setState(() {
      luckyNumber=random;
      print(luckyNumber);
    });
  }

  // For initializing the array
  @override
  void initState(){
    super.initState();
    itemArray=List<String>.generate(25, (index)=>"empty");
    generateRandomNumber();
    // audioCache. play('2.mp3');
  }

  // This function will be used to display a message in the
  // child text box when max tries reached
  displayMessage(){
    setState(() {
      message="You have reached Maximum tries";
      Delay();
    });
  }

  // Delay function
  Delay(){
    Future.delayed(const Duration(milliseconds: 1600),(){
      setState(() {
        this.resetGame();
        count=0;
      });
    });
  }

  // used for displaying the images according to their respective keywords
  AssetImage getImage(int index){
    String currentState=itemArray[index];
    switch(currentState){
      case "lucky":
        return alpOne;
        break;
      /*case "luckyOne":
        return alpTwo;
        break;
      case "luckyTwo":
        return numOne;
        break;
      case "luckyThree":
        return numTwo;
        break;*/
      case "unlucky":
        return unlucky;
        break;
    }
    return blank;
  }

  // used for playing the game
  playgame(int index){
    if(luckyNumber==index){
      setState(() {
        itemArray[index]="lucky";
        /*itemArray[index]='luckyOne';
        itemArray[index]='luckyTwo';
        itemArray[index]='luckyThree';*/
        //audioCache.play('cash.wav');
        this.message="Yay you won!";
        Delay();
      });
    }else if(luckyNumber!=index && count<=5){
      setState(() {
        itemArray[index]="unlucky";
        count++;
      });
      if(count==5){
        //audioCache.play('aww.mp3');
        displayMessage();
      }
      if(count==4){
        this.message="Your last chance";
      }
      if(count==3){
        this.message="2 more chances left, think clearly";
      }
      if(count==2){
        this.message="Just one more";
      }
      if(count==1){
        this.message="the last chance...";
      }
    }
  }

  // Reset all function for resetting the images which are displayed on the game screen
  resetGame(){
    setState(() {
      itemArray=List<String>.filled(25,"empty");
      this.message="";
      this.count=0;
    });
    generateRandomNumber();
  }

  // showing all the images or either the sad or the cash
  showAll(){
    setState(() {
      itemArray=List<String>.filled(25,"unlucky");
      itemArray[luckyNumber]="lucky";
      /*itemArray[luckyNumber]="two";
      itemArray[luckyNumber]="three";
      itemArray[luckyNumber]="four";*/
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(5),
          child: ElevatedButton(
            onPressed: (){Navigator.pop(context);},
            style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(Size(40,30)),
                backgroundColor: MaterialStateProperty.all(Color(0xff17e7b7)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ))
            ),
            child: Icon(Icons.arrow_back,color: Colors.black,size: 20,),
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Scratch and Win",
          style: GoogleFonts.k2d(
            color: Colors.black,
            fontSize: 19,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Expanded used to fill in the space available to its children
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(20),
              // SGDWFCAC will create grids with maximum cross axis alignment.
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 10,
                crossAxisCount: 5,
                childAspectRatio: 1,
                crossAxisSpacing: 10,
              ),
              itemCount: 25,

              // item array needs to be changed when we work on the array.

              itemBuilder: (context, i) => SizedBox(
                width: 70,
                height: 70,
                child: ElevatedButton(
                  style: ButtonStyle(
                    //fixedSize: MaterialStateProperty.all(Size(90,90)),
                    //textColor: Colors.white,
                    padding: MaterialStateProperty.all(EdgeInsets.all(1),),
                    backgroundColor: MaterialStateProperty.all(Color(0xff0a261f).withOpacity(0.2),),
                  ),
                  //color: Color(0xff0a261f).withOpacity(0.2),
                  //padding: EdgeInsets.all(1),
                  onPressed: () {
                    playgame(i);
                    // Here the function will be coming which will be executed on button press
                  },
                  child: Image(
                    image: this.getImage(i),
                    height: 50, width: 50,
                  ),
                ),
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(100, 12, 100, 12),
                color: Color(0xff0a261f).withOpacity(0.2),
                child: Text(
                  this.message,style: GoogleFonts.k2d(
                  fontSize: 10,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ), //Here the message will be coming
                ),
              )
            ],
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xff17e7b7),width: 3),
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.all(20),
                  child: ElevatedButton(
                    //elevation: 0,
                    onPressed: () {
                      this.resetGame();
                    },
                    style: ButtonStyle(
                      //fixedSize: MaterialStateProperty.all(Size(90,90)),
                      //textColor: Colors.white,
                      padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(40, 10, 40, 10),),
                      backgroundColor: MaterialStateProperty.all(Colors.white,),
                    ),
                    //padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                    //color: Colors.white,
                    child: Text(
                      "Reset",
                      style: GoogleFonts.k2d(color: Colors.black),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xff17e7b7),width: 3),
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.all(20),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      //fixedSize: MaterialStateProperty.all(Size(90,90)),
                      //textColor: Colors.white,
                      padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(40, 10, 40, 10),),
                      backgroundColor: MaterialStateProperty.all(Colors.white,),
                    ),
                    //elevation: 0,
                    onPressed: () {
                      this.showAll();
                    },
                    //padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                    child: Text("Show all",style:GoogleFonts.k2d(color: Colors.black),),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

