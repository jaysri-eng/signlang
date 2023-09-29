import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_lang_app/video_items.dart';
import 'package:video_player/video_player.dart';

class Places extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('COMMON PLACES',style: GoogleFonts.nunito(),),
     ),
     body: ListView(
       children: <Widget>[
         Padding(padding: EdgeInsets.only(top: 5)),
         Center(
           child: Text('Clinic'),
         ),
         VideoItems(
           videoPlayerController: VideoPlayerController.asset('assets/Clinic.mp4'),
           looping: false,autoplay: false,
         ),
         Center(
           child: Text('Post Office'),
         ),
         Padding(padding: EdgeInsets.only(bottom: 5)),
         VideoItems(
           videoPlayerController: VideoPlayerController.asset('assets/Post office.mp4'),
           looping: false,autoplay: false,
         ),
         VideoItems(
           videoPlayerController: VideoPlayerController.asset('assets/Saloon.mp4'),
           looping: false,autoplay: false,
         ),
         VideoItems(
           videoPlayerController: VideoPlayerController.asset('assets/Bank.mp4'),
           looping: false,autoplay: false,
         ),
         VideoItems(
           videoPlayerController: VideoPlayerController.asset('assets/Shop2.mp4'),
           looping: false,autoplay: false,
         ),
         VideoItems(
           videoPlayerController: VideoPlayerController.asset('assets/Zoo.mp4'),
           looping: false,autoplay: false,
         ),
         VideoItems(
           videoPlayerController: VideoPlayerController.asset('assets/Restaurant.mp4'),
           looping: false,autoplay: false,
         ),
         VideoItems(
           videoPlayerController: VideoPlayerController.asset('assets/Factory.mp4'),
           looping: false,autoplay: false,
         ),
         VideoItems(
           videoPlayerController: VideoPlayerController.asset('assets/Police Station.mp4'),
           looping: false,autoplay: false,
         ),
       ],
     ),
   );
  }
}