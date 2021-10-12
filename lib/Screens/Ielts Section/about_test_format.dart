import 'package:esooul/Screens/Ielts%20Section/question_types.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';

import 'IELTS Home/ielts_widget.dart';

class TestFormat extends StatefulWidget {
  const TestFormat({ Key? key }) : super(key: key);

  @override
  _TestFormatState createState() => _TestFormatState();
}

class _TestFormatState extends State<TestFormat> {
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
                child: Text("About test format",style: TextStyle(color: Colors.black),),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height *.01,),
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>QuestionTypes()));
            },
            child: 
          moduleCard(context, 'assets/png/listning.png','Question Types')),
          moduleCard(context, 'assets/png/listningPractice.png','Parts of quiz'),
        ],
      ),),
    );
  }
}