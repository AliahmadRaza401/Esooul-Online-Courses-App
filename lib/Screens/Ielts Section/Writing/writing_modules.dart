import 'package:esooul/Screens/Authentication/signUp/signUp_provider.dart';
import 'package:esooul/Screens/Ielts%20Section/IELTS%20Home/ielts_widget.dart';
import 'package:esooul/Screens/Ielts%20Section/Listening/ielts_test_tips.dart';
import 'package:esooul/Screens/Ielts%20Section/Listening/practice_listning_test.dart';
import 'package:esooul/Screens/Ielts%20Section/Writing/about_writing_test.dart';
import 'package:esooul/Screens/Ielts%20Section/Writing/vocabulary.dart';
import 'package:esooul/Screens/Ielts%20Section/Writing/writing_provider.dart';
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
    print("check ${writingData.about}");

    if (data['status'] == 200) {
      setState(() {
        writingData = data['data'];
        name = data['name'];
        about = writingData['about'];
        instruction = data['instruction'];
        bar_chart = data['bar_chart'];
        line_graph = data['line_graph'];
        pie_chart = data['pie_chart'];
        multiple_graphs = data['multiple_graphs'];
        process_diagram = data['process_diagram'];
        table_chart = data['table_chart'];
        maps = data['maps'];
        opinion_essay = data['opinion_essay'];
        discussion_essay = data['discussion_essay'];
        process_solution_essay = data['process_solution_essay'];
        advantages_disadvantages_essay = data['advantages_disadvantages_essay'];
        double_question_essay = data['double_question_essay'];
        type = data['type'];
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
                            about: about,
                          )));
                },
                child: moduleCard(
                    context, 'assets/png/listning.png', 'About Writing test')),
            GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => WritingTestInstruction()));
                },
                child: moduleCard(context, 'assets/png/listningPractice.png',
                    'Writing test (Instructions)')),
            GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => PracticeListeningTest()));
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
