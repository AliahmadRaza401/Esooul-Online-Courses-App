import 'package:esooul/Screens/Ielts%20Section/IELTS%20Home/ielts_widget.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:provider/single_child_widget.dart';

class DayBeforeTips extends StatefulWidget {
  const DayBeforeTips({ Key? key }) : super(key: key);

  @override
  _DayBeforeTipsState createState() => _DayBeforeTipsState();
}

class _DayBeforeTipsState extends State<DayBeforeTips> {
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
                child: Text("Test Tips",style: TextStyle(color: Color(0xff196C7E)),),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height *.01,),
          Container(
            // color: Colors.blue,
            height: MediaQuery.of(context).size.height *.65,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  bulletCard(context,"Check the start time and location of your IELTS test and make sure you know how to get there on time."),
                  bulletCard(context,"The best way to improve your listening skill is to practice listening in english as much as possible."),
                  bulletCard(context,"The best way to improve your listening skill is to practice listening in english as much as possible."),
                  bulletCard(context,"The best way to improve your listening skill is to practice listening in english as much as possible."),
                ],
              ),
            ),
          ),
          
        ],
      ),),
    );
  }
}