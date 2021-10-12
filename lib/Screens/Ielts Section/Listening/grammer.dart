import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';

import '../IELTS Home/ielts_widget.dart';

class Grammer extends StatefulWidget {
  const Grammer({ Key? key }) : super(key: key);

  @override
  _GrammerState createState() => _GrammerState();
}

class _GrammerState extends State<Grammer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(children: [
            Header(btntext: 'IELTS grammer'),
            Container(
                // height: MediaQuery.of(context).size.height *.27,
              
              padding:EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              child: Column(children: [
              grammerAndVocabularyCard(context, 'assets/png/listeningGrammer.png',"IELTS Listening Grammer"),
              grammerAndVocabularyCard(context,'assets/png/writingGrammer.png', 'IELTS Writing Grammer'),
              grammerAndVocabularyCard(context,'assets/png/readingGrammer.png', 'IELTS Reading Grammer'),
              grammerAndVocabularyCard(context,'assets/png/speakingGrammer.png', 'IELTS Speaking Grammer'),

              Container(
                // color: Colors.amber,
                width: double.infinity,
                height: MediaQuery.of(context).size.height *.4,
                child: SingleChildScrollView(child: Column(
                  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height:MediaQuery.of(context).size.height *.02 ,),
               Text("Grammar for IELTS: 7 Key English",style: TextStyle(color: Color(0xff196C7E)),),
                    SizedBox(height:MediaQuery.of(context).size.height *.02 ,),
               
               myText(context,'1. The Simple Aspect'),
               myText(context,'We use the simple aspect to talk about general, permanent or repeated actions.'),
               myText(context,'Here, the present simple is used to refer to a general, habitual action:'),
               myText(context,'I often read business magazines online.'),
               myText(context,'In the above example, it is implied that you read these magazines online all the time. This is something you do regularly.'),
               myText(context,'We use the continuous aspect to focus on progressive actions that usually happen around the moment of speaking.'),
               myText(context,'Here, the present continuous is used to refer to an action that is happening at the moment of speaking:'),
               myText(context,'I am reading an interesting book.'),
               myText(context,'The same rule applies to all the verb tenses, past, present and future. If you want to focus on the continuity of the action, use the continuous aspect. If you are more interested in the result of the action, then use the simple aspect.'),
               myText(context,'Why is this useful for IELTS?'),
               myText(context,'In IELTS Speaking Part 1 you have to answer questions about yourself.'),
               myText(context,'You will need to make sure you use the right verb tense and the right aspect—simple or continuous—depending on what you want to say. If you want to talk about general things that you do regularly, then you need the present simple. If, however, you want to refer to actions that are temporary and happen around the moment of speaking, then you need the present continuous.'),
               myText(context,'You may also need this grammar rule in Writing Part 1 when describing trends shown in graphs or charts. You are probably going to use the past simple quite a lot because in this part you report on situations that happened in the past.'),
             
              ],),))
            ],),)
        ],)
      ),
    );
  }
}