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

class WritingTest extends StatefulWidget {
  final barChart;
  final lineGraph;
  final pieChart;
  final multipleGraph;
  final processDiagram;
  final tableChart;
  final maps;
  final opinionEssay;
  final discussionEssay;
  final processSolutionEssay;
  final advantageDisadvantageEssay;
  final doubleQuestionEssay;

  const WritingTest(
      {@required this.advantageDisadvantageEssay,
      @required this.barChart,
      @required this.discussionEssay,
      @required this.doubleQuestionEssay,
      @required this.lineGraph,
      @required this.maps,
      @required this.multipleGraph,
      @required this.opinionEssay,
      @required this.pieChart,
      @required this.processDiagram,
      @required this.processSolutionEssay,
      @required this.tableChart});

  @override
  _WritingTestState createState() => _WritingTestState();
}

class _WritingTestState extends State<WritingTest> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Header(btntext: 'Writing Test'),
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
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     Text(
                      //       "Writing Test ",
                      //       style: TextStyle(color: Color(0xff196C7E)),
                      //     ),
                      //     Text(
                      //       "",
                      //       style: TextStyle(color: Color(0xffEEBB05)),
                      //     ),
                      //   ],
                      // ),

                      card("Bar Chart", widget.barChart),
                      card("Line Graph", widget.lineGraph),
                      card("Pie Chart", widget.pieChart),
                      card("Multiple Graphs", widget.multipleGraph),
                      card("Process Diagram", widget.processDiagram),
                      card("Table Chart", widget.tableChart),
                      card("Maps", widget.maps),
                      card("Opinion Essay", widget.opinionEssay),
                      card("Discussion Eassy", widget.discussionEssay),
                      card("Process Solution Essay",
                          widget.processSolutionEssay),
                      card("Advantages Disadvantages Easy",
                          widget.advantageDisadvantageEssay),
                      card("Double Question Essay", widget.doubleQuestionEssay),
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

  Widget card(title, data) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                title + ":",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Html(data: data)
        ],
      ),
    );
  }
}
