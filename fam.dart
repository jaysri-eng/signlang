import 'package:flutter/material.dart';
import 'package:sign_lang_app/video_items.dart';
import 'package:video_player/video_player.dart';
class Fam extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('FAMILY'),
      ),
      body: ListView(
        children: <Widget>[
          VideoItems(
            videoPlayerController: VideoPlayerController.asset('assets/Father.mp4'),
            looping: false,
            autoplay: false,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.asset('assets/mother.mp4'),
            looping: false,
            autoplay: false,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.asset('assets/Son.mp4'),
            looping: false,
            autoplay: false,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.asset('assets/Daug.mp4'),
            looping: false,
            autoplay: false,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.asset('assets/brother.mp4'),
            looping: false,
            autoplay: false,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.asset('assets/Sis.mp4'),
            looping: false,
            autoplay: false,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.asset('assets/grandfat.mp4'),
            looping: false,
            autoplay: false,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.asset('assets/grandmot.mp4'),
            looping: false,
            autoplay: false,
          ),
        ],
      ),
    );
  }
}