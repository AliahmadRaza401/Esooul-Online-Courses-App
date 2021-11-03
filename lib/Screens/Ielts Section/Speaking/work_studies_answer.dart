// ignore_for_file: non_constant_identifier_names

import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';

class WorkStudiesAnsewer extends StatefulWidget {
  var answer;
  WorkStudiesAnsewer({required this.answer});

  @override
  _WorkStudiesAnsewerState createState() => _WorkStudiesAnsewerState();
}

class _WorkStudiesAnsewerState extends State<WorkStudiesAnsewer> {
  List Answers=[
    'Answer 1',
    'Answer 2',
    'Answer 3',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Header(btntext: ''),
        // Text("$answer"),
        Container(
          height: MediaQuery.of(context).size.height *.7,
          child:ListView.builder(
            itemCount: Answers.length,
            itemBuilder: (context,index){
              return Container(
                padding: EdgeInsets.all(20),
                 alignment: Alignment.topLeft,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width *.95,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(
                color: Colors.black.withOpacity(.2),
                spreadRadius: 3,
                blurRadius: 7,
                offset: Offset(3,3)
              )]
              ),
                child: Text(Answers[index]));
            })
        )
      ],),
    );
  }
}