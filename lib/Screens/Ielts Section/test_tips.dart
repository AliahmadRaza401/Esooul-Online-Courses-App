import 'package:esooul/Screens/Ielts%20Section/day_before_tips.dart';
import 'package:esooul/Screens/Ielts%20Section/IELTS%20Home/ielts_widget.dart';
import 'package:esooul/Screens/Ielts%20Section/prepare_for_ielts.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';

class TestTips extends StatefulWidget {
  const TestTips({ Key? key }) : super(key: key);

  @override
  _TestTipsState createState() => _TestTipsState();
}

class _TestTipsState extends State<TestTips> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                child: Text("Listening",style: TextStyle(color: Color(0xff196C7E)),),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height *.01,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:25),
                child: Text("Test Tips",style: TextStyle(color: Color(0xff196C7E)),),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height *.01,),
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PrepareForIelts()));
            },
            child: moduleCard2(context, 'assets/png/writing.png', "How to prepare for IELTS")),
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DayBeforeTips()));
            },
            child: moduleCard2(context, 'assets/png/writing.png', "The day before your test")),
          moduleCard2(context, 'assets/png/writing.png', "On the test day"),
          moduleCard2(context, 'assets/png/writing.png', "During the IELTS day"),
        ],
      ),),
    );
  }
}