import 'package:esooul/Screens/Ielts%20Section/IELTS%20Home/ielts_widget.dart';
import 'package:esooul/Screens/Ielts%20Section/Listening/ielts_test_tips.dart';
import 'package:esooul/Screens/Ielts%20Section/Listening/practice_listning_test.dart';
import 'package:esooul/Screens/Ielts%20Section/Speaking/about_speaking.dart';
import 'package:esooul/Screens/Ielts%20Section/Writing/grammer.dart';
import 'package:esooul/Screens/Ielts%20Section/Writing/vocabulary.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';

class SpeakingModules extends StatefulWidget {
  const SpeakingModules({ Key? key }) : super(key: key);

  @override
  _SpeakingModulesState createState() => _SpeakingModulesState();
}

class _SpeakingModulesState extends State<SpeakingModules> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(child: Column(
        children: [
          Header(btntext: 'Speaking'),
          SizedBox(height: MediaQuery.of(context).size.height *.01,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:25),
                child: Text("Speaking",style: TextStyle(color: Colors.black),),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height *.01,),
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AboutSpeaking()));
            },
            child: 
          moduleCard(context, 'assets/png/listning.png','About Speaking test')),

          GestureDetector(
            onTap: (){
              // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ListningTestInstructions()));
            },
            child: moduleCard(context, 'assets/png/listningPractice.png','Speaking test (Instructions)')),
         
         
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PracticeListeningTest()));
            },
            child: moduleCard(context, 'assets/png/listningPreparation.png','Speaking test')),
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