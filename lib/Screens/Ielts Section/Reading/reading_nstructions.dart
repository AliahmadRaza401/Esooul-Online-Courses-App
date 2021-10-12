import 'package:esooul/Widgets/header.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../IELTS Home/ielts_widget.dart';

class ReadingTestInstructions extends StatefulWidget {
  const ReadingTestInstructions({Key? key}) : super(key: key);

  @override
  _ReadingTestInstructionsState createState() =>
      _ReadingTestInstructionsState();
}

class _ReadingTestInstructionsState extends State<ReadingTestInstructions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width * 1,
        child: Column(
          children: [
            Header(btntext: 'Instructions'),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    "Reading General Instructions",
                    style: TextStyle(color: Color(0xff196C7E)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            Container(
              // color: Colors.blue,
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: MediaQuery.of(context).size.width * .95,
              height: MediaQuery.of(context).size.height * .65,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    myText(
                        "Are the IELTS reading papers the same for both Academic and General Training?"),
                    myText(""),
                    myText(
                        "The reading skills required (prediction, finding specific information, identifying opinion etc.) are the same for both tests. The styles of question, for example, multiple-choice, sentence completion etc., are also the same for both the Academic and General Training papers."),
                    myText(""),
                    myText(
                        "The only difference is the type of text you will be given. This is to reflect the different expectations and motivations of both types of candidate. On the Academic paper, there will be three long academic texts that are similar to the type of reading you might expect at university. The readings are taken from academic journals, magazines, books and newspapers."),
                    myText(""),
                    myText(
                        "On the General Training paper, you will be given a mixture of long and short texts of a much more general nature and some related to work or social situations. The readings are taken from notices, flyers, timetables, documents, newspapers, instructions and manuals."),
                    myText(""),
                    myText("How much time will I have?"),
                    myText(""),
                    myText(
                        "You will have one hour to complete 40 questions in full and write your answers on the answer sheet. You will NOT be given extra time to transfer your answers to the answer sheet as you do in the listening test."),
                    myText("What skills will be tested?"),
                    myText(
                        "The reading paper will test a number of different skills, including:"),
                    myText(
                        "Tell the difference between main ideas and supporting details"),
                    myText("Identify the writer’s opinion"),
                    myText("Identify the writer’s purpose"),
                    myText(
                        "The reading test is also as much a vocabulary test as it is a reading test because most of the answers will be synonyms or paraphrases of the question."),
                    myText("What are the different question types?"),
                    myText(
                        "There are several different question types all designed to test different reading skills. It is essential that you familiarise yourself with each different question type."),
                    myText(
                        "Please click on the link below for common problems, IELTS Reading tips and a strategy for each type. They are as follows:"),
                    myText("Summary, note, table, flow-chart completion"),
                    myText('Multiple choice'),
                    myText('Matching information'),
                    myText('Matching headings'),
                    myText('Matching sentence endings'),
                    myText('True, false, not given'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget myText(String text) {
    return Row(
      children: [
        Expanded(
          child: Text(
            text,
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * .03),
      ],
    );
  }
}
