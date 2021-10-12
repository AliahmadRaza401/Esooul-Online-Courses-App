import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';

import 'IELTS Home/ielts_widget.dart';
import 'Listening/listning_test_instructions.dart';

class QuestionTypes extends StatefulWidget {
  const QuestionTypes({ Key? key }) : super(key: key);

  @override
  _QuestionTypesState createState() => _QuestionTypesState();
}

class _QuestionTypesState extends State<QuestionTypes> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Container(child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header(btntext: ''),
          SizedBox(height: MediaQuery.of(context).size.height *.01,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:25),
                child: Text("About test format",style: TextStyle(color: Colors.black),),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height *.01,),
          GestureDetector(
            onTap: (){
            //  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TestFormat()));

            },
            child: 
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ListningTestInstructions()));
            },
            child: moduleCard(context, 'assets/png/multipleChoice.png','Multiple choice Questions'))),
          moduleCard(context, 'assets/png/matching.png','Matching'),
          moduleCard(context, 'assets/png/listningPractice.png','Labeling'),
          moduleCard(context, 'assets/png/listningPractice.png','Summery Completion'),
          moduleCard(context, 'assets/png/listningPractice.png','Note Completion'),
          moduleCard(context, 'assets/png/listningPractice.png','Table Completion'),
         
        ],
      ),),
    );
  }
}