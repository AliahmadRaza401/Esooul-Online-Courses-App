
import 'package:esooul/Screens/Ielts%20Section/Listening/vocabulary.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';

import 'Listening/grammer.dart';
import 'Listening/ielts_test_tips.dart';
import 'IELTS Home/ielts_widget.dart';

class PrepareListeningTest extends StatefulWidget {
  const PrepareListeningTest({Key? key}) : super(key: key);

  @override
  _PrepareListeningTestState createState() => _PrepareListeningTestState();
}

class _PrepareListeningTestState extends State<PrepareListeningTest> {
  bool show=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(
          children: [
            Column(
              children: [
                Header(btntext: ''),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text(
                        "Listening",
                        style: TextStyle(color: Color(0xff196C7E)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .01,
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      show=!show;
                    });
                  },
                  child: prepareTestCard(
                      context,
                      'assets/png/practiceTest.png',
                      'Complete Practice test',
                      'Prepare for IELTS with our practice tests to carry out timed practice sessions and develop your test technique.'),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Grammer()));
                  },
                  child: prepareTestCard(context, 'assets/png/grammer.png', 'Grammer',
                      'Enhances your ability to construct simple and correct sentences.'),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Vocabulary()));
                  },
                  child: prepareTestCard(context, 'assets/png/vocabulary.png', 'Vocabulary',
                      'Increase the number of words you know in english to become more fluent.'),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>IeltsTestTips()));
                  },
                  child: prepareTestCard(
                      context,
                      'assets/png/ieltsTips.png',
                      'IELTS test tips',
                      'Know what to do and not to do in IELTS test.'),
                )
              ],
            ),
            Visibility(
              visible: show,
              child: Container(
                color: Colors.white.withOpacity(.8),
                height: double.infinity,
                width: double.infinity,
                alignment: Alignment.center,
                child: selectTest(context)),
            )
          ],
        ),
      ),
    );
  }
}
