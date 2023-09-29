import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_lang_app/video_items.dart';
import 'package:video_player/video_player.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        title: Text('Days In A Week',style: GoogleFonts.nunito(),),
      ),
      body: ListView(
        children: <Widget>[
          VideoItems(
            videoPlayerController: VideoPlayerController.asset(
                "assets/monday.mp4",
            ),
            looping: false,
            autoplay: false,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.asset('assets/tuesday.mp4'),
            looping: false,
            autoplay: false,
          ),
          VideoItems(videoPlayerController: VideoPlayerController.asset('assets/wednesday.mp4'),
          looping: false,
          autoplay: false,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.asset('assets/thursday.mp4'),
            looping: false,
            autoplay: false,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.asset('assets/friday.mp4'),
            looping: false,
            autoplay: false,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.asset('assets/saturday.mp4'),
            looping: false,
            autoplay: false,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.asset('assets/sunday.mp4'),
            looping: false,autoplay: false,
          ),
        ],
      ),
    );
  }
}