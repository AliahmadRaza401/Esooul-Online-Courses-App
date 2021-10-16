import 'package:esooul/Screens/Ielts%20Section/Listening/ielts_test_tips.dart';
import 'package:esooul/Screens/Ielts%20Section/Listening/practice_listning_test.dart';
import 'package:esooul/Screens/Ielts%20Section/Reading/reading_nstructions.dart';
import 'package:esooul/Screens/Ielts%20Section/Writing/grammer.dart';
import 'package:esooul/Screens/Ielts%20Section/Writing/vocabulary.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';

import '../Listening/about_listning.dart';
import '../IELTS Home/ielts_widget.dart';

class ReadingModule extends StatefulWidget {
  const ReadingModule({ Key? key }) : super(key: key);

  @override
  _ReadingModuleState createState() => _ReadingModuleState();
}

class _ReadingModuleState extends State<ReadingModule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(child: Column(
        children: [
          Header(btntext: 'Reading'),
          SizedBox(height: MediaQuery.of(context).size.height *.01,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:25),
                child: Text("Reading",style: TextStyle(color: Colors.black),),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height *.01,),
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AboutListning()));
            },
            child: 
          moduleCard(context, 'assets/png/listning.png','About Reading test')),

          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ReadingTestInstructions()));
            },
            child: moduleCard(context, 'assets/png/listningPractice.png','Reading test (Instructions)')),
         
         
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PracticeListeningTest()));
            },
            child: moduleCard(context, 'assets/png/listningPreparation.png','Reading test')),
            // GestureDetector(
            //   onTap: (){
            //     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Grammer()));
            //   },
            //   child: moduleCard(context, 'assets/png/listningPreparation.png','Grammer')),
            // GestureDetector(
            //    onTap: (){
            //     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Vocabulary()));
            //   },
            //   child: moduleCard(context, 'assets/png/listningPreparation.png','Vocabulary')),
            GestureDetector(
               onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>IeltsTestTips()));
              },
              child: moduleCard(context, 'assets/png/listningPreparation.png','Test')),

        ],
      ),),
    );
  }
}