import 'package:esooul/Widgets/header.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'fill_in_blanks1.dart';
import '../IELTS Home/ielts_widget.dart';

class ListningTestInstructions extends StatefulWidget {
  const ListningTestInstructions({Key? key}) : super(key: key);

  @override
  _ListningTestInstructionsState createState() =>
      _ListningTestInstructionsState();
}

class _ListningTestInstructionsState extends State<ListningTestInstructions> {
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
                    "Listening General Instructions",
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
              padding:EdgeInsets.symmetric(horizontal: 20),
              width: MediaQuery.of(context).size.width*.95,
              height: MediaQuery.of(context).size.height*.65,
              child: SingleChildScrollView(
                child: Column(
                children: [
                           myText("IELTS Listening Test"),
                           myText("Listening Strategies"),
                           myText("Listening Skills"),
                           myText("Listening Exercises"),
                           myText("Question Types"),
                           myText("Listening Tips"),
                           myText("How to Improve at Listening"),
                           myText("4 Listening Practice Techniques"),
                           myText("Map & Plan Vocabulary"),
                           myText("instructions to test takers In the actual test you will be given the following instructions:"),
                           myText("do not open this question paper until you are told to do so"),
                           myText("write your name and candidate number in the spaces at the top of this page"),
                           myText("listen to the instructions for each part of the paper carefully"),
                           myText("answer all the questions"),
                           myText("while you are listening, write your answers on the question paper"),
                           myText("you will have 10 minutes at the end of the test to copy your answers onto the separate answer sheet; use a pencil"),
                           myText("At the end of the test you will be asked to hand in the question paper."),
                ],
                          ),
              ),)
           
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
