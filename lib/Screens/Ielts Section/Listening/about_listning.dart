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
            Header(btntext: 'About Listening Test'),
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
                    myHeading(context,"IELTS test sections Listening About the Listening Test  Understand the test format( Question Types ) "),
                    myText(context,'IELTS Listening in detail'),
                    myText(context,'Task type 1 – Multiple choice'),
                    myText(context,'Task type and format: In multiple choice tasks, there is a question followed by three possible answers, or the beginning of a sentence followed by three possible ways to complete the sentence. Test takers are required to choose the one correct answer - A, B or C.'),
                    myText(context,'Sometimes, test takers are given a longer list of possible answers and told that they have to choose more than one. In this case, they should read the question carefully to check how many answers are required.'),
                    myText(context,'Task focus: Multiple choice questions are used to test a wide range of skills. The test taker may be required to have a detailed understanding of specific points or an overall understanding of the main points of the listening text.'),
                    myText(context,'No. of questions: Variable'),
                    myText(context,''),
                    myText(context,'Task type 2 – Matching'),
                    myText(context,'Task type and format: Test takers are required to match a numbered list of items from the listening text to a set of options on the question paper. The set of options may be criteria of some kind.'),
                    myText(context,'Task focus: Matching assesses the skill of listening for detail and whether a test taker can understand information given in a conversation on an everyday topic, such as the different types of hotel or guest house accommodation. It also assesses the ability to follow a conversation between two people. It may also be used to assess test takers’ ability to recognise relationships and connections between facts in the listening text.'),
                    myText(context,'No. of questions: Variable'),
                    myText(context,''),
                    myText(context,'Task type 3 – Plan, map, diagram labelling'),
                    myText(context,'Task type and format: Test takers are required to complete labels on a plan (eg of a building), map (eg of part of a town) or diagram (e.g. of a piece of equipment). The answers are usually selected from a list on the question paper.'),
                    myText(context,'Task focus: This type of task assesses the ability to understand, for example, a description of a place, and to relate this to a visual representation. This may include being able to follow language expressing spatial relationships and directions (e.g. straight on/through the far door).'),
                    myText(context,'No. of questions: Variable'),
                    myText(context,'Task type 4 – Form, note, table, flow-chart, summary completion'),
                    myText(context,'Task type and format: Test takers are required to fill in the gaps in an outline of part or of all of the listening text. The outline will focus on the main ideas/facts in the text. It may be:'),
                    myText(context,'1.	 a form: often used to record factual details such as names'),
                    myText(context,' 2. a set of notes: used to summarise any type of information using the layout to show how different items relate to one another'),
                    myText(context,' 3. a table: used as a way of summarising information which relates to clear categories – e.g. place/time/price,'),
                    myText(context,' 4. a flow-chart: used to summarise a process which has clear stages, with the direction of the process shown by arrows.'),
                    myText(context,'Test takers may have to select their answers from a list on the question paper or identify the missing words from the recording, keeping to the word limit stated in the instructions. Test takers do not have to change the words from the recording in any way.'),
                    myText(context,'Test takers should read the instructions very carefully as the number of words or numbers they should use to fill the gaps will vary. A word limit is given, for example, ‘NO MORE THAN TWO WORDS AND/OR A NUMBER’. Test takers are penalised for writing more than the stated number of words, and test takers should check this word limit carefully for each task. Contracted words will not be tested. Hyphenated words count as single words.'),
                    myText(context,'Task focus: This focuses on the main points which a listener would naturally record in this type of situation.'),
                    myText(context,'No. of questions: Variable'),
                    myText(context,'Task type 5 – Sentence completion'),
                    myText(context,'Task type and format: Test takers are required to read a set of sentences summarising key information from all the listening text or from one part of it. They then fill a gap in each sentence using information from the listening text. A word limit is given, for example, ‘NO MORE THAN ONE WORD AND/OR A NUMBER’.'),
                    myText(context,'Test takers are penalised for writing more than the stated number of words. (Test takers should check this word limit carefully for each task: the limit is either ONE, TWO or THREE words). Contracted words will not be tested. Hyphenated words count as single words.'),
                    myText(context,'Task focus: Sentence completion focuses on the ability to identify the key information in a listening text. Test takers have to understand functional relationships such as cause and effect.'),
                    myText(context,'No. of questions: Variable'),
                    myText(context,''),
                    myText(context,'Task type 6 – Short-answer questions'),
                    myText(context,'Task type and format: Test takers are required to read a question and then write a short answer using information from the listening text. A word limit is given, for example, ‘NO MORE THAN THREE WORDS AND/OR A NUMBER’. Test takers are penalised for writing more than the stated number of words. (Test takers should check this word limit carefully for each task.) Contracted words will not be tested. Hyphenated words count as single words. Sometimes test takers are given a question which asks them to list two or three points.'),
                    myText(context,'Task focus: Sentence completion focuses on the ability to listen for concrete facts, such as places, prices or times, within the listening text.'),
                    myText(context,'No. of questions: Variable'),
                    myText(context,'IELTS Listening – how it\'s marked'),
                    myText(context,'The Listening test is marked by certificated markers, who are regularly monitored to ensure their reliability. All answer sheets, after being marked, are further analysed by Cambridge Assessment English.'),
                    myText(context,'Band score conversion'),
                    myText(context,'Band score conversion'),
                    myText(context,'A Band Score conversion table is produced for each version of the Listening test which translates scores out of 40 into the IELTS 9-band scale. Scores are reported in whole bands and half bands.'),
                    myText(context,'One mark is awarded for each correct answer in the 40-item test. Care should be taken when writing answers on the answer sheet as poor spelling and grammar are penalised.'),
                    myText(context,''),
                    myText(context,''),
                    myText(context,''),
                    myText(context,''),
                    myText(context,''),
                    myText(context,''),
                    myText(context,''),
                    myText(context,''),
                    myText(context,''),
                    myText(context,''),
                 

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  

  // Widget myText(String text) {
  //   return Row(
  //     children: [
  //       Expanded(
  //         child: Text(
  //           text,
  //           style: TextStyle(color: Colors.black, fontSize: 10),
  //         ),
  //       ),
  //       SizedBox(height: MediaQuery.of(context).size.height * .05),
  //     ],
  //   );
  // }

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
