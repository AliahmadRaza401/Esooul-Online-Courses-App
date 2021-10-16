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
                height: MediaQuery.of(context).size.height *.45,
               child: SingleChildScrollView(child: Column(
                 crossAxisAlignment:CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                 SizedBox(height:MediaQuery.of(context).size.height *.02 ,),
               Text("IELTS test sections Listening Preparation help",style: TextStyle(color: Color(0xff196C7E)),),
                    SizedBox(height:MediaQuery.of(context).size.height *.02 ,),
                myHeading(context,'Vocabulary'),
                myHeading(context,'Exercise: 1'),
                myText(context,'1    My only___________ is that the colour isn’t very nice, but otherwise I think you have chosen well.'),
                myText(context,'2    He is a(n) ___________ to the days of the Neanderthals, so outdated are his views on the place of women in society.'),
                myText(context,'3    It was an embarrassing___________ ; I’ll grant you that, but it will soon be forgotten and your reputation should remain relatively intact. Choose your words more carefully next time though.'),
                myText(context,'4    We will put the full___________ of the nation into this campaign and we will emerge victorious.'),
                myText(context,'5     She has a(n) ___________ for men a lot younger than her.'),
                myText(context,'6    He has a(n) ___________ to talk too much when he gets nervous.'),
                myText(context,'7    His behaviour in this particular instance was a(n) ___________ , I assure you; he is normally a very dependable guy.'),
                myText(context,'He has a(n) ___________ for Italian food, I have noticed.'),
                myHeading(context,'Answer Key'),
                myText(context,'Quibble'),
                myText(context,'throwback'),
                myText(context,'gaffe'),
                myText(context,'puissance'),
                myText(context,'penchant / predilection'),
                myText(context,'propensity'),
                myText(context,'aberration'),
                myText(context,'penchant / predilection'),
                myText(context,''),
                myHeading(context,'Exercise 2:'),
                myText(context,'1. Greek salad is the____________ starter at a Greek restaurant.'),
                myText(context,'2. The____________ bureaucracy of our civil service is frustrating, to say the least; nothing gets done quickly.'),
                myText(context,'3. He is nothing but a(n) ____________ drunk; his contribution has shrunk to such a degree as to render him virtually useless.'),
                myText(context,'4. We are all____________ to varying degrees I’m afraid; to err is simply human.'),
                myText(context,'5. His____________ behaviour did not win him many new friends at the United Nations; it is as though he was out to insult everyone he spoke to, embarking on some sort of diplomatic suicide mission.'),
                myText(context,'6. He is a nice fellow, but a tad too____________ for my taste; he needs to unbutton the top collar on his shirt now and then and let himself go, but, alas, that will never happen to such a stickler for the rules.'),
                myHeading(context,'Answers:'),
                myText(context,'Quintessential'),
                myText(context,'cumbersome'),
                myText(context,'feckless'),
                myText(context,'fallible'),
                myText(context,'indecorous'),
                myText(context,'pedantic'),
                myHeading(context,'Exercise 3'),
                myText(context,'1   The waitress here knows exactly how I like my steak because I\'m a _______________ customer'),
                myText(context,'2. She\'s a _______________ little girl who learns very quickly.'),
                myText(context,'3. Water becomes a _______________ at 0 degrees centigrade.'),
                myText(context,'4. His hockey career came to an _______________ end because of knee problems.'),
                myText(context,'5. Johnny has made _______________ progress in reading this past year, and is now one of the top students in the class.'),
                myText(context,'6. There was an _______________ smell of cat waste in the old woman\'s house.'),
                myText(context,'7. He was sick, and felt too _______________ to even get out of bed.'),
                myText(context,'8. The skin of a snake is not rough or slimy; in fact, it is quite dry and _______________.'),
                myText(context,'9. These pants are too _______________; I think I need something a little larger.'),
                myText(context,'10. The pattern on the wallpaper in the kids\' room is of a tropical jungle with _______________ birds, plants and animals.'),
                myHeading(context,'Answers'),
                myText(context,'Regular'),
                myText(context,'clever'),
                myText(context,'solid'),
                myText(context,'abrupt '),
                myText(context,'extraordinary'),
                myText(context,'awful'),
                myText(context,'weak '),
                myText(context,'smooth '),
                myText(context,'tight'),
                myText(context,'exotic'),
                myText(context,''),
               
             ],),),)
             
             ],),
           )
          ],
        ),
      ),
    );
  }

}