import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class MyVideoPlayer extends StatefulWidget {
  final String path;

  MyVideoPlayer({required this.path});

  @override
  _MyVideoPlayerState createState() => new _MyVideoPlayerState();
}

class _MyVideoPlayerState extends State<MyVideoPlayer> {
  // late final String path;
  // _MyVideoPlayerState({required this.path});

  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;
  late Future<void> _future;

  Future<void> initVideoPlayer() async {
    await _videoPlayerController.initialize();
    setState(() {
      print(_videoPlayerController.value.aspectRatio);
      _chewieController = ChewieController(
          videoPlayerController: _videoPlayerController,
          aspectRatio: _videoPlayerController.value.aspectRatio,
          autoPlay: true,
          looping: false,
          showControls: true);
    });
  }

  @override
  void initState() {
    super.initState();
    _videoPlayerController =
        VideoPlayerController.network(widget.path.toString());
    // ('assets/video/school.mp4');
    // 'https://static.videezy.com/system/resources/previews/000/053/030/original/TrailerSchool37.mp4');
    _future = initVideoPlayer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Header(btntext: "Video"),
          Container(
            // color: Colors.green,
            height: MediaQuery.of(context).size.height * 0.7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: new FutureBuilder(
                      future: _future,
                      builder: (context, snapshot) {
                        return new Center(
                          child: _videoPlayerController.value.isInitialized
                              ? AspectRatio(
                                  aspectRatio:
                                      _videoPlayerController.value.aspectRatio,
                                  child: Chewie(
                                    controller: _chewieController,
                                  ),
                                )
                              : new CircularProgressIndicator(),
                        );
                      }),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }
}
