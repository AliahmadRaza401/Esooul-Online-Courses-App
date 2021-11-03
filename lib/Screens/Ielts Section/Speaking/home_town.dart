// ignore_for_file: non_constant_identifier_names

import 'package:esooul/Screens/Ielts%20Section/IELTS%20Home/ielts_widget.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:esooul/Widgets/ielts_widget.dart';
import 'package:flutter/material.dart';

class HomeTown extends StatefulWidget {
  const HomeTown({ Key? key }) : super(key: key);

  @override
  _HomeTownState createState() => _HomeTownState();
}

class _HomeTownState extends State<HomeTown> {
bool showAnser=false;
  void buttonevent(){
    setState(() {
      showAnser=true;
      // Answers[index]=Questions[index];
    });
    // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WorkStudiesAnsewer()));
  }
  List Answers=[
    'Answer 1',
    'Answer 2',
    'Answer 3',
    'Answer 4',
    'Answer 5',
  ];
  List Questions=[
    'Questions1',
    'Questions2',
    'Questions3',
    'Questions4',
    'Questions5',
    'Questions6',
    'Questions7',
    'Questions8',
    'Questions9',
    'Questions10',
    'Questions11',
    'Questions12',
    'Questions13',
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: [
          Header(btntext: ''),
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height *.7,
                child: ListView.builder(
                  itemCount: Questions.length,
                  itemBuilder: (context,index){
                    return questionCard(context,Questions[index],buttonevent);
                  }),
              ),
              Visibility(
                visible: showAnser,
                child: Container(
                  padding: EdgeInsets.all(20),
                   alignment: Alignment.topLeft,
                          height: MediaQuery.of(context).size.height *.7,
                          width: MediaQuery.of(context).size.width ,
                          decoration: BoxDecoration(
                color: Colors.white,
                ),
                child: Container(
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.topLeft,
                   height: MediaQuery.of(context).size.height *.65,
                          width: MediaQuery.of(context).size.width ,
                   decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(
                  color: Colors.black.withOpacity(.2),
                  spreadRadius: 3,
                  blurRadius: 7,
                  offset: Offset(3,3)
                )
                ]
                ),
                child: Column(children: [
                  Row(children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          showAnser=!showAnser;
                        });
                      },
                      child: Icon(Icons.close,size: 30,))
                  ],),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            // Text(Answers[3]),
                          ],
                        ),
                      ),
                    ],
                  )
                ],),
                ),
                ),
              )
            ],
          )
        ],),
      ),
    );
  }


  
}