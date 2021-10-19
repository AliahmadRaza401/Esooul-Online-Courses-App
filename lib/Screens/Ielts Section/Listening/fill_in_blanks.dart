import 'dart:io';

import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:esooul/Screens/Authentication/signUp/signUp_provider.dart';
import 'package:esooul/Screens/Ielts%20Section/Listening/audio_manager.dart';
import 'package:esooul/Screens/Ielts%20Section/Listening/listening_provider.dart';
import 'package:esooul/Widgets/dialog.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:esooul/Widgets/loading_animation.dart';
import 'package:esooul/Widgets/noData_msg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/shims/dart_ui_real.dart';
import 'package:provider/provider.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:path/path.dart';
import '../IELTS Home/ielts_widget.dart';

class FillInBlanks extends StatefulWidget {
  final audio;
  final questions;

  const FillInBlanks({@required this.audio, @required this.questions});

  @override
  _FillInBlanksState createState() => _FillInBlanksState();
}

class _FillInBlanksState extends State<FillInBlanks> {
  late final PageManager _pageManager;
  var _extension;
  @override
  void initState() {
    super.initState();
    print("Audio : ${widget.audio} ");
    _pageManager = PageManager(widget.audio);

    final File _file = new File(widget.audio);
    final _filename = basename(widget.audio);
    _extension = extension(widget.audio);
    final _nameWithoutExtension = basenameWithoutExtension(widget.audio);
    print('Filename: $_filename');
    print('Filename without extension: $_nameWithoutExtension');
    print('Extension: $_extension');
  }

  @override
  void dispose() {
    _pageManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Header(btntext: 'Listening Test'),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            Container(
              // padding: EdgeInsets.symmetric(horizontal: 25),
              width: MediaQuery.of(context).size.width * .95,
              child: SingleChildScrollView(
                child: Container(
                  // color: Colors.yellow,
                  height: MediaQuery.of(context).size.height * .7,
                  child: ListView(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Listening Test ",
                            style: TextStyle(color: Color(0xff196C7E)),
                          ),
                          Text(
                            "",
                            style: TextStyle(color: Color(0xffEEBB05)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .02,
                      ),
                      audioTile(context),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "write the correct answer",
                              style: TextStyle(color: Color(0xff196C7E)),
                            ),
                          ],
                        ),
                      ),
                      widget.questions == null
                          ? LoadingBounceAnimation(context)
                          : widget.questions.length <= 0
                              ? noDataMsg(context)
                              : ListView(
                                  shrinkWrap: true,
                                  physics: ClampingScrollPhysics(),
                                  children: [
                                    ListView.builder(
                                      shrinkWrap: true,
                                      physics: ClampingScrollPhysics(),
                                      itemCount: widget.questions.length == null
                                          ? 0
                                          : widget.questions.length,
                                      itemBuilder: (context, i) {
                                        return listCard(context, i,
                                            widget.questions[i].question);
                                      },
                                    )
                                  ],
                                ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .02,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * .05,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Submit',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(12), // <-- Radius
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .02,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget listCard(BuildContext context, count, question) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.02),
      // color: Colors.green,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Q:${count + 1}",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Html(data: question),
          Row(
            children: [
              Text(
                "Answer:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                child: TextField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    // hintText: 'Enter a search term',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget audioTile(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Audio",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            ValueListenableBuilder<ProgressBarState>(
              valueListenable: _pageManager.progressNotifier,
              builder: (_, value, __) {
                return ProgressBar(
                  progress: value.current,
                  buffered: value.buffered,
                  total: value.total,
                  progressBarColor: Colors.blue,
                  baseBarColor: Colors.blue.withOpacity(0.24),
                  bufferedBarColor: Colors.blue.withOpacity(0.24),
                  thumbColor: Colors.blue,
                  thumbGlowColor: Colors.blue.withOpacity(0.24),
                  barHeight: 9.0,
                  thumbRadius: 9.0,
                  onSeek: _pageManager.seek,
                  timeLabelTextStyle: TextStyle(color: Colors.black),
                );
              },
            ),
            ValueListenableBuilder<ButtonState>(
              valueListenable: _pageManager.buttonNotifier,
              builder: (_, value, __) {
                switch (value) {
                  case ButtonState.loading:
                    return Container(
                      margin: EdgeInsets.all(8.0),
                      width: 32.0,
                      height: 32.0,
                      child: CircularProgressIndicator(),
                    );
                  case ButtonState.paused:
                    return IconButton(
                      icon: Icon(
                        Icons.play_arrow,
                        color: Colors.blue,
                      ),
                      iconSize: 32.0,
                      onPressed: () {
                        if (_extension != '.mp3' || _extension == null) {
                          return CommomWidget().okayAlertDialog(
                              context, "Fail", "Audio File is not supported");
                        } else {
                          _pageManager.play();
                        }
                      },
                    );
                  case ButtonState.playing:
                    return IconButton(
                      icon: Icon(Icons.pause, color: Colors.blue),
                      iconSize: 32.0,
                      onPressed: () {
                        _pageManager.pause;
                      },
                    );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
