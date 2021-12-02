// ignore_for_file: non_constant_identifier_names

import 'package:esooul/Screens/Ielts%20Section/IELTS%20Home/ielts_widget.dart';
import 'package:esooul/Screens/Ielts%20Section/Reading/reading_data.dart';
import 'package:esooul/Screens/Ielts%20Section/Speaking/part1/answer.dart';
import 'package:esooul/Screens/Ielts%20Section/Speaking/part1/speaking_data.dart';
import 'package:esooul/Screens/cambridge/testData.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:esooul/Widgets/ielts_widget.dart';
import 'package:flutter/material.dart';

class CamTest extends StatefulWidget {
  const CamTest({Key? key}) : super(key: key);

  @override
  _CamTestState createState() => _CamTestState();
}

class _CamTestState extends State<CamTest> {
  @override
  Widget build(BuildContext context) {
    List part1List = camData.Part1_2016;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Header(btntext: 'Question'),
            Container(
              padding: EdgeInsets.symmetric(vertical: 30),
              height: MediaQuery.of(context).size.height * .7,
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
