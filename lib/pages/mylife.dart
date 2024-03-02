import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MyLife extends StatefulWidget {
  const MyLife({super.key});

  @override
  State<MyLife> createState() => MyLifeState();
}

class MyLifeState extends State<MyLife> {
  String videoURL = 'https://youtu.be/7VSO_KZ1UlY';
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    final videoID = YoutubePlayer.convertUrlToId(videoURL);
    _controller = YoutubePlayerController(
        initialVideoId: videoID!,
        flags: const YoutubePlayerFlags(autoPlay: false));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const SizedBox(
          height: 40,
        ),
        const Text(
          'Video Personal',
          style: TextStyle(
            fontFamily: 'Impact',
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        YoutubePlayer(
          controller: _controller,
          showVideoProgressIndicator: true,
        ),
      ]),
    );
  }
}
