import 'package:esooul/Screens/Ielts%20Section/Listening/fill_in_blanks.dart';
import 'package:esooul/Screens/Ielts%20Section/question_types.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';

import '../IELTS Home/ielts_widget.dart';

class PracticeListeningTest extends StatefulWidget {
  const PracticeListeningTest({Key? key}) : super(key: key);

  @override
  _PracticeListeningTestState createState() => _PracticeListeningTestState();
}

class _PracticeListeningTestState extends State<PracticeListeningTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Header(btntext: 'Listening test'),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    " (There are 4 parts each part 10 questions) ",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            GestureDetector(
              
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: ((context)=>FillInBlanks())));
              },
              child: practiceTestCard(context,'Practice Test 01 ','')),
            
             GestureDetector(
              
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: ((context)=>FillInBlanks())));
              },
              child: practiceTestCard(context,'Practice Test 02 ','')), GestureDetector(
              
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: ((context)=>FillInBlanks())));
              },
              child: practiceTestCard(context,'Practice Test 03 ','')), GestureDetector(
              
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: ((context)=>FillInBlanks())));
              },
              child: practiceTestCard(context,'Practice Test 04 ','Buy Now')), GestureDetector(
              
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: ((context)=>FillInBlanks())));
              },
              child: practiceTestCard(context,'Practice Test 05 ','Buy Now')),
          ],
        ),
      ),
    );
  }
}
