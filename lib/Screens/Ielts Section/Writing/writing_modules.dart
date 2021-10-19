import 'package:esooul/Screens/Authentication/signUp/signUp_provider.dart';
import 'package:esooul/Screens/Ielts%20Section/IELTS%20Home/ielts_widget.dart';
import 'package:esooul/Screens/Ielts%20Section/Listening/ielts_test_tips.dart';
import 'package:esooul/Screens/Ielts%20Section/Listening/practice_listning_test.dart';
import 'package:esooul/Screens/Ielts%20Section/Writing/about_writing_test.dart';
import 'package:esooul/Screens/Ielts%20Section/Writing/vocabulary.dart';
import 'package:esooul/Screens/Ielts%20Section/Writing/writing_provider.dart';
import 'package:esooul/Screens/Ielts%20Section/Writing/writing_test.dart';
import 'package:esooul/Screens/Ielts%20Section/Writing/writing_test_instruction.dart';
import 'package:esooul/Widgets/dialog.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'grammer.dart';

class WritingModules extends StatefulWidget {
  const WritingModules({Key? key}) : super(key: key);

  @override
  _WritingModulesState createState() => _WritingModulesState();
}

class _WritingModulesState extends State<WritingModules> {
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
  var type;
  @override
  void initState() {
    super.initState();
    writingProvider = Provider.of<WritingProvider>(context, listen: false);
    getTest();
  }

  getTest() async {
    var token = await Provider.of<SignUpProvider>(context, listen: false)
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
      });
    } else {
      CommomWidget().okayAlertDialog(
        context,
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
            Header(btntext: 'Writing'),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    "Writing",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            GestureDetector(
                onTap: () {
                  print('about: $about');
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => AboutWritingTest(
                            about: instruction,
                          )));
                },
                child: moduleCard(
                    context, 'assets/png/listning.png', 'About Writing test')),
            GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => WritingTestInstruction(
                            instruction: instruction,
                          )));
                },
                child: moduleCard(context, 'assets/png/listningPractice.png',
                    'Writing test (Instructions)')),
            GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => WritingTest(
                          advantageDisadvantageEssay:
                              advantages_disadvantages_essay,
                          barChart: bar_chart,
                          discussionEssay: discussion_essay,
                          doubleQuestionEssay: double_question_essay,
                          lineGraph: line_graph,
                          maps: maps,
                          multipleGraph: multiple_graphs,
                          opinionEssay: opinion_essay,
                          pieChart: pie_chart,
                          processDiagram: process_diagram,
                          processSolutionEssay: process_solution_essay,
                          tableChart: table_chart),
                    ),
                  );
                },
                child: moduleCard(context, 'assets/png/listningPreparation.png',
                    'Writing test')),
            GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Grammer()));
                },
                child: moduleCard(
                    context, 'assets/png/listningPreparation.png', 'Grammer')),
            GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Vocabulary()));
                },
                child: moduleCard(context, 'assets/png/listningPreparation.png',
                    'Vocabulary')),
            GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => IeltsTestTips()));
                },
                child: moduleCard(
                    context, 'assets/png/listningPreparation.png', 'Test')),
          ],
        ),
      ),
    );
  }
}
