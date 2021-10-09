import 'package:esooul/Screens/Ielts%20Section/test_tips.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';

import 'IELTS Home/ielts_widget.dart';

class HelpAboutTest extends StatefulWidget {
  const HelpAboutTest({ Key? key }) : super(key: key);

  @override
  _HelpAboutTestState createState() => _HelpAboutTestState();
}

class _HelpAboutTestState extends State<HelpAboutTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(child: Column(
        children: [
          Header(btntext: ''),
          SizedBox(height: MediaQuery.of(context).size.height *.01,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:25),
                child: Text("Listening",style: TextStyle(color: Color(0xff196C7E)),),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height *.01,),
          GestureDetector(
            onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TestTips()));
                  },
            child: prepareTestCard(context, "assets/png/vocabulary.png", "Test Tips", "How to prepare for IELTS, a day before your test, and for the test day.")),
          prepareTestCard(context, "assets/png/vocabulary.png", "Malpractice warning", "Do’s and Don’ts of IELTS test."),
        ],
      ),),
    );
  }
}