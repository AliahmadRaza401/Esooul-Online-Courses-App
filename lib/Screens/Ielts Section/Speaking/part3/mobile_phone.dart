import 'package:esooul/Screens/Ielts%20Section/Speaking/part1/answer.dart';
import 'package:esooul/Screens/Ielts%20Section/Speaking/part1/speaking_data.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:esooul/Widgets/ielts_widget.dart';
import 'package:flutter/material.dart';

class MobilePhonePart3 extends StatefulWidget {
  MobilePhonePart3({Key? key}) : super(key: key);

  @override
  _MobilePhonePart3State createState() => _MobilePhonePart3State();
}

class _MobilePhonePart3State extends State<MobilePhonePart3> {
  @override
  Widget build(BuildContext context) {
    List part1List = SpeakingData.part3Test1;
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
                              ),
                            ),
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
