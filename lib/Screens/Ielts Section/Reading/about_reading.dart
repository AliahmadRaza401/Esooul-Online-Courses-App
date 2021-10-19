import 'package:esooul/Screens/Ielts%20Section/IELTS%20Home/ielts_widget.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';

class AboutReading extends StatefulWidget {
  const AboutReading({ Key? key }) : super(key: key);

  @override
  _AboutReadingState createState() => _AboutReadingState();
}

class _AboutReadingState extends State<AboutReading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(btntext: 'About Reading Test'),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.only(left:25),
            //       child: Text("About Listening test",style: TextStyle(color: Colors.black),),
            //     ),
            //   ],
            // ),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * .03,
            // ),
            Container(
              // color: Colors.amber,
              height: MediaQuery.of(context).size.height * .67,
              padding: EdgeInsets.symmetric( horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                     SizedBox(
                      height: MediaQuery.of(context).size.height * .02,
                    ),
                   myHeading(context, 'Reading'),
                   myHeading(context, 'About the reading test'),
                   myHeading(context, 'Understand the test format'),
                   myHeading(context, 'Reading paper description '),
                   myText(context, 'You will need to read quickly and efficiently, and manage your time. You will be asked to read three different passages and respond to related questions in your IELTS Reading test. The content of the Reading test is different for IELTS Academic and IELTS General Training tests.'),
                   myText(context, 'The IELTS Reading test is designed to assess a wide range of reading skills, including how well you'),
                   bulletCard(context,'•	read for the general sense of a passage'),
                   bulletCard(context,'•	read for the main ideas'),
                   bulletCard(context,'•	read for detail'),
                   bulletCard(context,'•	understand inferences and implied meaning'),
                   bulletCard(context,'•	recognize a writer’s opinions, attitudes and purpose'),
                   bulletCard(context,'follow the development of an argument'),
                   myText(context, ''),
                   myText(context, 'Academic Reading'),
                   myText(context, ''),

                   snapshot(context,'assets/png/reading1.PNG' ),

                   myText(context, ' General Training Reading'),
                   snapshot(context,'assets/png/reading2.PNG' ),
                   myHeading(context, 'Question Types'),
                  bulletCard(context, '	Short Answer Questions'),
                   myText(context, 'This post will help you answer short answer questions more effectively by looking at a sample question, identifying common problems and giving you a strategy to use on exam day.'),
                  bulletCard(context, '	Multiple Choice '),
                   myText(context, 'This article will help you answer multiple-choice questions more effectively. We look at common problems and how to fix them.'),
                  bulletCard(context, 'Summary Completion'),
                   myText(context, 'In these kinds of questions, you will be given a summary of information from the text and there will be some gaps in that summary.'),
                  bulletCard(context, '	Matching Sentence Endings '),
                   myText(context, 'In this IELTS Reading question, you will be given a list of incomplete sentences with no endings and another list with possible endings. Your job is to match the incomplete sentences with the correct ending based on the reading text.'),
                  bulletCard(context, '	Sentence Completion '),
                   myText(context, 'In this question type, you will be given a number of sentences with gaps in them and asked to complete the sentences with words from the reading text. Check out this article to learn how to do so strategically.'),
                  bulletCard(context, '	True, False, Not Given '),
                   myText(context, '‘True, False, Not Given’ questions requires you to identify if the information in a text is true or not. You will be given a number of factual statements and you have to check in the text if they are true or not. This is probably the most difficult question in the reading paper.'),
                  bulletCard(context, 'Matching Headings Tips and Strategy'),
                   myText(context, 'In the IELTS Reading test, you may be asked to match headings to sections of text. This type of question tests your ability to understand the main idea of each paragraph.'),
                  bulletCard(context, '	Labelling a Diagram '),
                   myText(context, 'In the IELTS Reading test, you might get a question that asks you to label a diagram. This post will show you examples, look at common problems and provide you with a strategy for answering these questions effectively.'),
                  bulletCard(context, 'Matching Information to Paragraphs'),
                   myText(context, 'In this kind of question, you are asked to match statements to paragraphs in the reading text. This post will look at example question types and show you my step-by-step strategy for matching information to paragraphs.'),
                   myText(context, ''),

                  myHeading(context, 'Marking and scoring'),
                  myText(context, 'IELTS General Reading marking schemes'),
                   myText(context, 'For the general reading test, which contains 40 questions, the approximate band scores can be calculated using this table.'),
                  snapshot(context,'assets/png/reading3.PNG' ),
                   
                   myHeading(context, 'IELTS Academic Reading marking schemes'),
                   myText(context, 'For the academic reading test, which also contains 40 questions, but is more difficult, the approximate band scores can be calculated using this table.'),
                   snapshot(context, 'assets/png/reading4.PNG'),
                   myHeading(context, 'Some tips'),
                   myHeading(context, '1. Timing is key.'),
                   myText(context, 'You will have just 1 hour to complete 40 questions, so you must use your time wisely. I advise my students to try and get each section finished in 20 minutes. This will give you 16-17 minutes to read and answer the questions and 3-4 minutes to transfer and check your answers. You’ll find more help with time management here.'),
                   myHeading(context, '2. Read the instructions carefully.'),

                   myText(context, 'Many strong candidates lose marks in IELTS Reading because they don’t read the instructions properly. Pay close attention to the instructions you’re given to avoid losing easy marks.'),
                   myHeading(context, '3. Don’t panic.'),
                   myText(context, 'Some of the questions will be easy and some will be extremely difficult. (I knew many IELTS teachers who had to check the answers to some questions because they are so challenging!)'),
                   myText(context, 'The wrong thing to do is spend a large amount of time on a hard question. If the answer does not present itself, move on to the next one. You can always come back to the difficult questions later.'),
                   myText(context, 'It’s important that you stay calm and keep your nerves under control. Accepting that you are probably not going to get all of the questions correct might help you to control your nerves and timing on test day!'),
                   myHeading(context, '4. It’s really a vocabulary test.'),
                   myText(context, 'In many ways, IELTS Reading is more of a vocabulary test than a reading test. The reason is that you need a wide range of vocabulary to understand the passages of text given to you. You must also have an awareness of synonyms and paraphrasing if you wish to identify the information required to answer the questions correctly.'),
                   myHeading(context, '5. Don’t expect to understand every word.'),
                   myText(context, 'If you don’t understand a word in the test, you should look at the words and sentences around it for clues as to its meaning. Alternatively, you can move on and forget about it.'),
                   myText(context, 'Focus on the words that are related to the question and don’t worry about the words you don’t understand.'),
                   myHeading(context, 'Checklist'),
                   myText(context, '- I skim and analyse questions at speed.'),
                   myText(context, '- I read the instructions carefully.'),
                   myText(context, '- I can highlight key words in questions.'),
                   myText(context, '- I see the relation ship between questions.'),
                   myText(context, '- I leave questions I can’t do and check them later'),
                   myText(context, '- I am fast and accurate'),
                   myText(context, '- I can skim the text easily.'),
                   myText(context, '- I can scan the test easily.'),
                   myText(context, '- I predict as I skim and scan and check my answers.'),
                   myText(context, '- I manage my time efficiently.'),
                   myText(context, '- I complete the answer sheet accurately.'),
                   myHeading(context, 'Take a quiz'),
                   myText(context, '- How many Questions are there in the Reading test ?'),
                   myText(context, '40 ( Answer, Like the listening test , there are 40 questions to answer in the Reading test.'),
                   myText(context, '30'),
                   myText(context, '50'),
                   myText(context, 'How many Passages are there in the Academic Reading test ?'),
                   myText(context, '2'),
                   myText(context, '3 ( Answer, Each Passage will have a total of 2700 words ).'),
                   myText(context, '4'),
                   myText(context, 'How much time do you have to complete the Reading test ?.'),
                   myText(context, '40 minutes'),
                   myText(context, '60 minutes ( Answer, No extra time is allowed to transfer answers ). '),
                   myText(context, '90 minutes'),
                   myText(context, 'How many marks are there for each correct answer ?'),
                   myText(context, '1 ( Answer, Half marks are not awarded.'),
                   myText(context, '3'),
                   myText(context, '5'),
                   myText(context, 'Which one of these sentences about writing down answers is true>'),
                   myText(context, 'spelling and grammar are important ( Answer )'),
                   myText(context, 'Hyphenated words, e.g hard-working count as two words.'),
                   myText(context, 'Contracted words, e.g It’s should not be written in answers.'),
                   myText(context, 'On average, how much time should be spent on each question ?'),
                   myText(context, '1 minute ( Answer )'),
                   myText(context, '2 minutes'),
                   myText(context, '2 1/2 minutes'),
                   myText(context, 'What is the maximum number of words you can write when answering a short answer question?'),
                   myText(context, '1'),
                   myText(context, '3'),
                   myText(context, 'It depends on the instructions ( Answer ) Read the instructions carefully to identify how many words can be used.'),
                   myText(context, 'Can you make some notes on the Reading question paper ?'),
                   myText(context, 'Yes ( Answer )'),
                   myText(context, 'No'),
                   myText(context, 'What should you do when you start reading ?'),
                   myText(context, 'Read the instructions first '),
                   myText(context, 'Read the passage in detail '),
                   myText(context, 'Skim the passage ( Answer ) Don’t read the whole passage this will take much of your time.'),
                   myText(context, 'Where should you write the answers as you read?'),
                   myText(context, 'On the question booklet'),
                   myText(context, 'On the answer sheet ( Answer ) No time is allowed to transfer answers.'),
                   myText(context, 'On draft paper '),
                   myText(context, ''),
                   myText(context, ''),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}