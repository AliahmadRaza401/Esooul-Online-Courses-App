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
            Header(btntext: 'IELTS Test Tips'),
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
               Wrap(
                 children: [
                   Text("IELTS test sections Listening Preparation help IELTS test tips ( Test tips )",style: TextStyle(color: Color(0xff196C7E)),),
                 ],
               ),
                    SizedBox(height:MediaQuery.of(context).size.height *.02 ,),
              myHeading(context,'How to Prepare for IELTS '),
              myText(context,'- The best way to improve your listening skills is to practice listening in English as much as possible.'),
              myText(context,'- You should make listening in English a regular part of your life long before you take the exam'),
              myText(context,'- You can find Podcasts on the internet , or websites like TED talks website, which has a lot of short lectures ( with transcripts )in English on a wide range of topics.'),
              myText(context,'- Ideally, you should do at least one practise test before your exam, so that you have an idea of the format and the difficulty of the test.'),
              myText(context,'- Listen to the things you are interested in. If you enjoy what you are listening to, you are likely to do more of it, and your listening comprehension will improve.'),
              myText(context, ''),

              myHeading(context,'The day before your test'),
              myText(context,'Check the start time and the location of your IELTS test and make sure that you know how to get there on time. '),
              myText(context,'-  Remember, the address of your ILETS test location may be different to that of test centre where you booked your test.'),
              myText(context,'- Take the time to read full details of the ‘IELTS test terms and conditions’ for important information about your IELTS test day.'),
              myText(context,'- Get a full night sleep. Don’t be tempted to stay up late revising vocabulary.'),
              myText(context,'- Improving your English is a long term project - unlikely to significantly improve your English level the nigh before the exam.'),
              myText(context, ''),

              myHeading(context,'On the test day'),
              myText(context,'- You need to arrive in good time for your IELTS test if you arrive late, you may not be allowed to take the test. '),
              myText(context,'- The listening, reading and writing tests take 2 hours 40 minutes are there are no breaks between each part of test.'),
              myText(context,'- The IELTS test location staff will check your identity when you arrive. Make sure that you have the right ID with you, the ID you used while registering online. IF you arrive with the wrong ID, you will not be allowed to take the test. You will also need 2 recent identical passport size photographs. Check the details that you were given when you booked the test to make sure you take the right ID and photographs with you.'),
              myText(context, ''),

              myHeading(context,'During the IELTS test'),
              myText(context,'- If you have any questions during the test, raise your hand to ask for help.'),
              myText(context,'- When you take the Speaking test, be sure to ask if there is something you do not understand. You will not lose marks for asking if the examiner’s instructions or questions are not clear.'),
              myText(context,'- When you take the Listening Test, Check that you can hear the test properly. Raise your hand straight away and let the invigilator know if you cannot hear the recording.'),
              myText(context,'- Remember that you will have 10 minutes after the Listening section to fill in your answer sheet. You will not have 10 minutes after the reading section, so make sure you write your answers on your Reading answer sheet as you complete each section.'),
              myText(context,''),
              myText(context,''),

              myHeading(context,'Please Do not'),
              myText(context,'- Trust anyone offering to take your IELT test for you.'),
              myText(context,'- Trust anyone offering IELTS results for sale as these promises are false.'),
              myText(context,'- Risk your integrity and your future by trying to cheat in any way.'),
              myText(context,'IELTS tests results are used for admission to Universities , colleges and professional bodies, as well as for immigration to English-speaking countries. For this reason, It is essential to ensure the security of the test results and IELTS has a number of measures in place to safe guard against the falsification of results.'),
              myText(context,'Your photograph will be taken on the day of your IELTS test; this will appear on your IELTS Test Report Form. Fraud Prevention measures are in place to enable IELTS to identify counterfeit TEST Report Forms (TRFs)'),
              myText(context,'Immigration agencies and institutions that accept IELTS scores will cancel your application and exclude you from applying again if false documentation is submitted. Test takers engaging in malpractice may also be liable to legal action.'),
              myText(context,'IELTS is the world’s leading high-stakes English language proficiency test, and continues to protect the validity of its scores and the genuine test taker. If you ignore the above warning, you risk your money and your future.'),
              myText(context, ''),
              ],),))
            ],),)
        ],)
      ),
    );
  }
}
