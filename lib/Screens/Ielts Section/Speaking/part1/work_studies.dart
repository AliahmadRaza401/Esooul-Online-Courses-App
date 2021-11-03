// ignore_for_file: non_constant_identifier_names, empty_constructor_bodies

import 'package:esooul/Screens/Ielts%20Section/IELTS%20Home/ielts_widget.dart';
import 'package:esooul/Screens/Ielts%20Section/Speaking/part1/speaking_data.dart';
import 'package:esooul/Screens/Ielts%20Section/Speaking/part1/answer.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:esooul/Widgets/ielts_widget.dart';
import 'package:flutter/material.dart';

class WorkAndStudies extends StatefulWidget {
  const WorkAndStudies({Key? key}) : super(key: key);

  @override
  _WorkAndStudiesState createState() => _WorkAndStudiesState();
}

class _WorkAndStudiesState extends State<WorkAndStudies> {
  bool showAnser = false;
  void buttonevent() {
    setState(() {
      showAnser = true;
      // Answers[index]=Questions[index];
    });
    // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WorkStudiesAnsewer()));
  }

  // int index=0;

  @override
  Widget build(BuildContext context) {
    List part1List = SpeakingData.workStudyList;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Header(btntext: 'Question'),
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .7,
                  child: ListView.builder(
                      itemCount: part1List.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            questionCard(
                                context,
                                part1List[index].question,
                                Answer(
                                  ans: part1List[index].answer,
                                  question: part1List[index].question,
                                )),
                            // Text('$index')
                          ],
                        );
                      }),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
