import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';

import '../IELTS Home/ielts_widget.dart';

class IeltsTestTips extends StatefulWidget {
  const IeltsTestTips({Key? key}) : super(key: key);

  @override
  _IeltsTestTipsState createState() => _IeltsTestTipsState();
}

class _IeltsTestTipsState extends State<IeltsTestTips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(children: [
            Header(btntext: 'IELTS listening Tips'),
            Container(
                // height: MediaQuery.of(context).size.height *.27,
              
              padding:EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              child: Column(children: [
              grammerAndVocabularyCard(context, 'assets/png/listenignTips.png',"IELTS Listening Tips"),
              grammerAndVocabularyCard(context,'assets/png/writingTips.png', 'IELTS Writing Tips'),
              grammerAndVocabularyCard(context,'assets/png/readingTips.png', 'IELTS Reading Tips'),
              grammerAndVocabularyCard(context,'assets/png/speakingTips.png', 'IELTS Speaking Tips'),

              Container(
                // color: Colors.amber,
                width: double.infinity,
                height: MediaQuery.of(context).size.height *.4,
                child: SingleChildScrollView(child: Column(
                  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height:MediaQuery.of(context).size.height *.02 ,),
               Text("10 Top Tips for a High Score",style: TextStyle(color: Color(0xff196C7E)),),
                    SizedBox(height:MediaQuery.of(context).size.height *.02 ,),
               myText(context,'All the lessons in this section of the website are packed full of IELTS Listening tips, strategies and advice but here are 10 things I especially want to highlight.'),
               myText(context,'1) Listen to English every day'),
               myText(context,'The only way to improve your listening skills is to listen to English every day. It doesn’t matter if it’s just 10 or 15 minutes here and there as you’re travelling on a bus, eating lunch or cooking the tea, just listen to something.'),
               myText(context,'You need to hear English used naturally in many different contexts and spoken with a range of accents. In your test, you could hear speakers from the UK (including different regional accents), Ireland, the US, Canada, New Zealand, Australia or South Africa.'),
               myText(context,'2) Listen to a range of things'),
               myText(context,'The test will include two monologues (one person speaking) and two conversations, so you must practice listening to both. You’ll find all the practice material you need online. Podcasts and TED Talks are great for listening to monologues, and radio broadcasts and interviews on YouTube ideal for conversations.'),
               myText(context,'You’ll find more resource ideas here: How To Improve IELTS Listening'),
               myText(context,'3) Improve your vocabulary'),
               myText(context,'The third of my IELTS Listening tips might seem obvious but many students don’t know the most effective way to improve their vocabulary. Just memorising lists of new words will achieve very little. You won’t fully understand the words – what they mean and how they’re used in context – and you’ll quickly forget them.'),
               myText(context,'When you listen to spoken English, listen actively, that is, note down words you hear that are unfamiliar or you don’t fully understand. Then, check them out in a dictionary. Note the meaning, pronunciation, how the word is used in a sentence, common synonyms, antonyms and collocations. Record all this information in your vocabulary notebook.'),
               myText(context,'Yes, this takes time, but it’s time well spent. Every time you do this, you will have added one more word to your vocabulary that you’ll remember and be able to use confidently in all parts of the IELTS exam.'),
               myText(context,'For more help with what vocabulary to learn and how to learn it, study the lessons in the Vocabulary section of the website. '),
               myText(context,'4) Have a strategy'),
               myText(context, 'To score highly in the Listening test, you need to understand the 10 different types of questions and have a strategy for answering them. Click the links below to learn how to answer each type:')
             
              ],),))
            ],),)
        ],)
      ),
    );
  }
}
