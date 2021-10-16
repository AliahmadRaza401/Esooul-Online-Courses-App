import 'package:esooul/Screens/Ielts%20Section/IELTS%20Home/ielts_widget.dart';
import 'package:esooul/Screens/Ielts%20Section/Listening/ielts_test_tips.dart';
import 'package:esooul/Screens/Ielts%20Section/Listening/practice_listning_test.dart';
import 'package:esooul/Screens/Ielts%20Section/Writing/vocabulary.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';
import 'grammer.dart';

class WritingModules extends StatefulWidget {
  const WritingModules({ Key? key }) : super(key: key);

  @override
  _WritingModulesState createState() => _WritingModulesState();
}

class _WritingModulesState extends State<WritingModules> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(child: Column(
        children: [
          Header(btntext: 'Writing'),
          SizedBox(height: MediaQuery.of(context).size.height *.01,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:25),
                child: Text("Writing",style: TextStyle(color: Colors.black),),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height *.01,),
          GestureDetector(
            onTap: (){
              // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AboutListning()));
            },
            child: 
          moduleCard(context, 'assets/png/listning.png','About Writing test')),

          GestureDetector(
            onTap: (){
              // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ListningTestInstructions()));
            },
            child: moduleCard(context, 'assets/png/listningPractice.png','Writing test (Instructions)')),
         
         
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PracticeListeningTest()));
            },
            child: moduleCard(context, 'assets/png/listningPreparation.png','Writing test')),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Grammer()));
              },
              child: moduleCard(context, 'assets/png/listningPreparation.png','Grammer')),
            GestureDetector(
               onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Vocabulary()));
              },
              child: moduleCard(context, 'assets/png/listningPreparation.png','Vocabulary')),
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