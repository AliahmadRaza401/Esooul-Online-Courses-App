import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';

import '../IELTS Home/ielts_widget.dart';

class Vocabulary extends StatefulWidget {
  const Vocabulary({Key? key}) : super(key: key);

  @override
  _VocabularyState createState() => _VocabularyState();
}

class _VocabularyState extends State<Vocabulary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Header(btntext: 'IELTS Vocabulary'),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
           Container(
              padding:EdgeInsets.symmetric(horizontal: 20,vertical: 20),
             child: Column(children: [
               grammerAndVocabularyCard(context, 'assets/png/listeningVocabulary.png',"IELTS Listening Vocabulary"),
              grammerAndVocabularyCard(context,'assets/png/writingVocabulary.png', 'IELTS Writing Vocabulary'),
              grammerAndVocabularyCard(context,'assets/png/readingVocabulary.png', 'IELTS Reading Vocabulary'),
              grammerAndVocabularyCard(context,'assets/png/speakingVocabulary.png', 'IELTS Speaking Vocabulary'),
             Container(
               width: double.infinity,
                height: MediaQuery.of(context).size.height *.4,
               child: SingleChildScrollView(child: Column(
                 crossAxisAlignment:CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                 SizedBox(height:MediaQuery.of(context).size.height *.02 ,),
               Text("How To Learn Vocabulary for IELTS ‘Properly’",style: TextStyle(color: Color(0xff196C7E)),),
                    SizedBox(height:MediaQuery.of(context).size.height *.02 ,),
                myText(context,'Why do I include the word ‘properly’ in this title?'),
                myText(context,'Many people waste a whole load of their study time learning lists of words in the hope that they’ll be able to force them into their answers and impress the examiner. If that’s your approach, I’m afraid the examiner will be far from impressed.'),
                myText(context,'This is completely the wrong way to go about improving your vocabulary so please don’t be one of these people because there is a better way. One that will save you time and be far more effective.'),
                myText(context,'Firstly, you need to learn words in context. This means learning them within sentences so that you fully understand the meaning and how they are used. This is why I usually include a sentence containing any word or phrase I use as an example.'),
                myText(context,'You probably noticed that the other page I’ve just recommended that you read promises you ‘topic word lists’. No, I’m not contradicting myself. There’s nothing wrong with using word lists as a resource, especially lists containing words and phrases related to common IELTS topics. Just don’t try learning them off by heart.'),
                myText(context,'I’ve created the topic lists to save you time in researching the topics and having to look up the meaning of less common words and phrases.'),
                myText(context,'They will make it quick and easy for you to practice using the vocabulary which will help you to learn it. I’ve included practice questions to help you here too.'),
                myText(context,'Part 1'),
                myText(context,'1)  What do you do to stay healthy?'),
                myText(context,'I eat a balanced diet with lots of fresh fruit and vegetables and take some form of exercise every day. I also make sure that I get enough sleep.'),
                myText(context,'2)  Do you get ill very often?'),
                myText(context,'Fortunately, I’m very healthy and rarely get ill, although I occasionally catch a cold in the winter.'),
                myText(context,'3)  Is there anything you’d like to improve about your fitness?'),
                myText(context,'I really want to take up yoga because I often feel stiff after exercise and I think it would help. It would also make me more flexible and less likely to get injured when I work out.'),
                myText(context,'4) Are you careful about waht you eat?'),
                myText(context,'I try very hard to have a healthy diet, even when I eat out at a restaurant. I rarely buy takeaways and when I go out with friends for fish and chips, I only have the fish with some peas.'),
                myText(context,'5)  How important is a healthy lifestyle for you?'),
                myText(context,'It’s one of the most important things for me because I want to feel good and to enjoy life. If you don’t have good health then everything else in life is a struggle.'),
             ],),),)
             
             ],),
           )
          ],
        ),
      ),
    );
  }

}