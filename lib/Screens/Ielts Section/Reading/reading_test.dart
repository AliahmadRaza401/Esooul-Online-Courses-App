// ignore_for_file: non_constant_identifier_names

import 'package:esooul/Screens/Ielts%20Section/IELTS%20Home/ielts_widget.dart';
import 'package:esooul/Screens/Ielts%20Section/Reading/reading_data.dart';
import 'package:esooul/Screens/Ielts%20Section/Speaking/part1/answer.dart';
import 'package:esooul/Screens/Ielts%20Section/Speaking/part1/speaking_data.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:esooul/Widgets/ielts_widget.dart';
import 'package:flutter/material.dart';

class ReadingTest extends StatefulWidget {
  const ReadingTest({Key? key}) : super(key: key);

  @override
  _ReadingTestState createState() => _ReadingTestState();
}

class _ReadingTestState extends State<ReadingTest> {
  @override
  Widget build(BuildContext context) {
    List part1List = ReadingData.readingFillInBlankList;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Header(btntext: 'Question'),
            Container(
              height: MediaQuery.of(context).size.height * .7,
              child: Column(
                children: [
                  questionCardReading(
                    context,
                    ReadingData.readingCompreh[0].question,
                    Answer(
                      ans: ReadingData.readingCompreh[0].answer,
                      question: ReadingData.readingCompreh[0].question,
                    ),
                  ),
                  Container(
                    // color: Colors.greenAccent,
                    height: MediaQuery.of(context).size.height * .47,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: part1List.length,
                        itemBuilder: (context, index) {
                          return questionCardReading(
                            context,
                            part1List[index].question,
                            Answer(
                              ans: part1List[index].answer,
                              question: part1List[index].question,
                            ),
                          );
                        }),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget questionCardReading(BuildContext context, String question, pageName) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        // height: MediaQuery.of(context).size.height * .1,
        width: MediaQuery.of(context).size.width * .97,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(.2),
              spreadRadius: 3,
              blurRadius: 7,
              offset: Offset(0, 3))
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              // color: Colors.amber,
              width: MediaQuery.of(context).size.width * .72,
              child: Wrap(
                children: [
                  Text("$question"),
                ],
              ),
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height * .05,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => pageName));
                    },
                    child: Text("Answer")))
          ],
        ),
      ),
    );
  }
}
