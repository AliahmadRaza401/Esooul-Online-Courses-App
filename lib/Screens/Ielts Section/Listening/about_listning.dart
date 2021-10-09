import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';

import '../IELTS Home/ielts_widget.dart';

class AboutListning extends StatefulWidget {
  const AboutListning({Key? key}) : super(key: key);

  @override
  _AboutListningState createState() => _AboutListningState();
}

class _AboutListningState extends State<AboutListning> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(btntext: 'About Reading Test'),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.only(left:25),
            //       child: Text("About Listening test",style: TextStyle(color: Colors.black),),
            //     ),
            //   ],
            // ),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * .03,
            // ),
            Container(
              // color: Colors.amber,
              height: MediaQuery.of(context).size.height * .67,
              padding: EdgeInsets.symmetric( horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [


                    









                     SizedBox(
                      height: MediaQuery.of(context).size.height * .02,
                    ),
                    myHeading(context,"IELTS Reading test Format"),
                    myText(
                        "Timing: 60 minutes"),
                    myText(
                        "Number of questions: 40"),
                    myText("Reading texts:"),
                    myText(
                        "There are two versions of the Reading test – Academic and General. The difference between them is in the length and type of texts. Each has three sections."),
                        myText('Usually, the first section will be the easiest and the last one the hardest.'),
                        myText("Here is an outline of types of text for each test."),
                    myHeading(context,"IELTS Listening Test Conversion Table"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: MediaQuery.of(context).size.height * .3,
                            width: MediaQuery.of(context).size.width * .6,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/png/aboutReading.png"))))
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .02,
                    ),
                    myText(
                        "The Listening test is made up of four sections. In each section, you will listen to a recorded text and then answer a series of question on it."),
                    myText("The Four Sections"),
                    myHeading(context,'IELTS listening test format'),
                    myText(
                        "These are the 4 parts or sections of the IELTS Listening test."),
                    myText(
                        "Section 1 – A conversation between two people set in an everyday social context (e.g. booking tickets to the theatre)."),
                    myText(
                        "Section 2 – A monologue set in an everyday social context (e.g. a welcome talk for new college students)."),
                    myText(
                        "Section 3 – A conversation between up to four people set in an educational or training context (e.g. a group of students discussing a university assignment)."),
                    myText(
                        "Section 4 – A monologue on an academic subject (e.g. a lecture on wildlife)."),
                    myText("A monologue is where just one person is speaking."),
                    myText(
                        "As you can see, the first two sections of the test relate to social situations, while sections three and four relate to educational and training situations."),
                    myText(
                        "Although parts three and four have an academic context, you are not expected to have a detailed knowledge of the topics. It is your listening skills that are being assessed, not your understanding or knowledge of the subject."),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .02,
                    ),
                    myText("2 points to note:"),
                    myText("There will be 10 questions in each section."),
                    myText(
                        "The questions get harder as you progress through the test."),
                    myHeading(context,"Question Types"),
                    myText(
                        "You will be asked a variety of different types of questions selected from this list:"),
                    blueText('Matching'),
                    blueText('Multiple choice'),
                    blueText('Note completion'),
                    blueText('Form completion'),
                    blueText('Table completion'),
                    blueText('Sentence completion'),
                    blueText('Summary completion'),
                    blueText('Short answer questions'),
                    blueText('Map & plan labelling'),
                    blueText('Diagram & flowchart completion'),
                    myText("Click the links to see lessons on each type of question.")
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
            style: TextStyle(color: Colors.black, fontSize: 10),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * .05),
      ],
    );
  }

  Widget blueText(String text) {
    return Row(
      children: [
        Text(
          "\u2022",
          style: TextStyle(color: Colors.black, fontSize: 13),
        ),
        SizedBox(width: MediaQuery.of(context).size.width * .04),
        Text(
          text,
          style: TextStyle(color: Colors.blue, fontSize: 10),
        )
      ],
    );
  }
}
