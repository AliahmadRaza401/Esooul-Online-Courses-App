import 'dart:io';

import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:esooul/Screens/Authentication/signUp/signUp_provider.dart';
import 'package:esooul/Screens/Home/home.dart';
import 'package:esooul/Screens/Ielts%20Section/Listening/audio_manager.dart';
import 'package:esooul/Screens/Ielts%20Section/Listening/listening_provider.dart';
import 'package:esooul/Screens/Ielts%20Section/Writing/writing_provider.dart';
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

  const WritingTest({
    @required this.advantageDisadvantageEssay,
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
    @required this.tableChart,
  });

  @override
  _WritingTestState createState() => _WritingTestState();
}

class _WritingTestState extends State<WritingTest> {
  late WritingProvider writingProvider;
  var writingData;
  var name;
  var about;
  var instruction;
  var bar_chart;
  var line_graph;
  var pie_chart;
  var multiple_graphs;
  var process_diagram;
  var table_chart;
  var maps;
  var opinion_essay;
  var discussion_essay;
  var process_solution_essay;
  var advantages_disadvantages_essay;
  var double_question_essay;

  bool _loading = true;
  var type;
  @override
  void initState() {
    super.initState();
    writingProvider = Provider.of(this.context, listen: false);
    getTest();
  }

  getTest() async {
    var token = await Provider.of<SignUpProvider>(this.context, listen: false)
        .getUserTokenSF();
    var data = await writingProvider.writingTest(token);
    // print('data: $data');

    if (data['status'] == 200) {
      setState(() {
        writingData = data['data'][0];
        name = writingData['name'];
        about = writingData['about'];
        instruction = writingData['instruction'];
        bar_chart = writingData['bar_chart'];
        line_graph = writingData['line_graph'];
        pie_chart = writingData['pie_chart'];
        multiple_graphs = writingData['multiple_graphs'];
        process_diagram = writingData['process_diagram'];
        table_chart = writingData['table_chart'];
        maps = writingData['maps'];
        opinion_essay = writingData['opinion_essay'];
        discussion_essay = writingData['discussion_essay'];
        process_solution_essay = writingData['process_solution_essay'];
        advantages_disadvantages_essay =
            writingData['advantages_disadvantages_essay'];
        double_question_essay = writingData['double_question_essay'];
        type = writingData['type'];
        _loading = false;
      });
    } else {
      CommomWidget().okayAlertDialog(
        this.context,
        "Failed",
        "Check your internet connection",
      );
    }
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
                child: _loading == true
                    ? LoadingBounceAnimation(context)
                    : Container(
                        // color: Colors.yellow,
                        height: MediaQuery.of(context).size.height * .7,
                        child: ListView(
                          children: [
                            card("Bar Chart", bar_chart),
                            card("Line Graph", line_graph),
                            card("Pie Chart", pie_chart),
                            card("Multiple Graphs", multiple_graphs),
                            card("Process Diagram", process_diagram),
                            card("Table Chart", table_chart),
                            card("Maps", maps),
                            card("Opinion Essay", opinion_essay),
                            card("Discussion Eassy", discussion_essay),
                            card("Process Solution Essay",
                                process_solution_essay),
                            card("Advantages Disadvantages Easy",
                                advantages_disadvantages_essay),
                            card(
                                "Double Question Essay", double_question_essay),
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
