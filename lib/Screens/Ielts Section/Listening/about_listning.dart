import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';

import '../IELTS Home/ielts_widget.dart';

class AboutListning extends StatefulWidget {
  const AboutListning({Key? key}) : super(key: key);

  @override
  _AboutListningState createState() => _AboutListningState();
}

class _AboutListningState extends State<AboutListning> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(btntext: 'About Listening Test'),
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
                    myHeading(context,"IELTS test sections Listening About the Listening Test  Understand the test format( Question Types ) "),
                    myText(context,'IELTS Listening in detail'),
                    myText(context,'Task type 1 – Multiple choice'),
                    myText(context,'Task type and format: In multiple choice tasks, there is a question followed by three possible answers, or the beginning of a sentence followed by three possible ways to complete the sentence. Test takers are required to choose the one correct answer - A, B or C.'),
                    myText(context,'Sometimes, test takers are given a longer list of possible answers and told that they have to choose more than one. In this case, they should read the question carefully to check how many answers are required.'),
                    myText(context,'Task focus: Multiple choice questions are used to test a wide range of skills. The test taker may be required to have a detailed understanding of specific points or an overall understanding of the main points of the listening text.'),
                    myText(context,'No. of questions: Variable'),
                    myText(context,''),
                    myText(context,'Task type 2 – Matching'),
                    myText(context,'Task type and format: Test takers are required to match a numbered list of items from the listening text to a set of options on the question paper. The set of options may be criteria of some kind.'),
                    myText(context,'Task focus: Matching assesses the skill of listening for detail and whether a test taker can understand information given in a conversation on an everyday topic, such as the different types of hotel or guest house accommodation. It also assesses the ability to follow a conversation between two people. It may also be used to assess test takers’ ability to recognise relationships and connections between facts in the listening text.'),
                    myText(context,'No. of questions: Variable'),
                    myText(context,''),
                    myText(context,'Task type 3 – Plan, map, diagram labelling'),
                    myText(context,'Task type and format: Test takers are required to complete labels on a plan (eg of a building), map (eg of part of a town) or diagram (e.g. of a piece of equipment). The answers are usually selected from a list on the question paper.'),
                    myText(context,'Task focus: This type of task assesses the ability to understand, for example, a description of a place, and to relate this to a visual representation. This may include being able to follow language expressing spatial relationships and directions (e.g. straight on/through the far door).'),
                    myText(context,'No. of questions: Variable'),
                    myText(context,'Task type 4 – Form, note, table, flow-chart, summary completion'),
                    myText(context,'Task type and format: Test takers are required to fill in the gaps in an outline of part or of all of the listening text. The outline will focus on the main ideas/facts in the text. It may be:'),
                    myText(context,'1.	 a form: often used to record factual details such as names'),
                    myText(context,' 2. a set of notes: used to summarise any type of information using the layout to show how different items relate to one another'),
                    myText(context,' 3. a table: used as a way of summarising information which relates to clear categories – e.g. place/time/price,'),
                    myText(context,' 4. a flow-chart: used to summarise a process which has clear stages, with the direction of the process shown by arrows.'),
                    myText(context,'Test takers may have to select their answers from a list on the question paper or identify the missing words from the recording, keeping to the word limit stated in the instructions. Test takers do not have to change the words from the recording in any way.'),
                    myText(context,'Test takers should read the instructions very carefully as the number of words or numbers they should use to fill the gaps will vary. A word limit is given, for example, ‘NO MORE THAN TWO WORDS AND/OR A NUMBER’. Test takers are penalised for writing more than the stated number of words, and test takers should check this word limit carefully for each task. Contracted words will not be tested. Hyphenated words count as single words.'),
                    myText(context,'Task focus: This focuses on the main points which a listener would naturally record in this type of situation.'),
                    myText(context,'No. of questions: Variable'),
                    myText(context,'Task type 5 – Sentence completion'),
                    myText(context,'Task type and format: Test takers are required to read a set of sentences summarising key information from all the listening text or from one part of it. They then fill a gap in each sentence using information from the listening text. A word limit is given, for example, ‘NO MORE THAN ONE WORD AND/OR A NUMBER’.'),
                    myText(context,'Test takers are penalised for writing more than the stated number of words. (Test takers should check this word limit carefully for each task: the limit is either ONE, TWO or THREE words). Contracted words will not be tested. Hyphenated words count as single words.'),
                    myText(context,'Task focus: Sentence completion focuses on the ability to identify the key information in a listening text. Test takers have to understand functional relationships such as cause and effect.'),
                    myText(context,'No. of questions: Variable'),
                    myText(context,''),
                    myText(context,'Task type 6 – Short-answer questions'),
                    myText(context,'Task type and format: Test takers are required to read a question and then write a short answer using information from the listening text. A word limit is given, for example, ‘NO MORE THAN THREE WORDS AND/OR A NUMBER’. Test takers are penalised for writing more than the stated number of words. (Test takers should check this word limit carefully for each task.) Contracted words will not be tested. Hyphenated words count as single words. Sometimes test takers are given a question which asks them to list two or three points.'),
                    myText(context,'Task focus: Sentence completion focuses on the ability to listen for concrete facts, such as places, prices or times, within the listening text.'),
                    myText(context,'No. of questions: Variable'),
                    myText(context,'IELTS Listening – how it\'s marked'),
                    myText(context,'The Listening test is marked by certificated markers, who are regularly monitored to ensure their reliability. All answer sheets, after being marked, are further analysed by Cambridge Assessment English.'),
                    myText(context,'Band score conversion'),
                    myText(context,'Band score conversion'),
                    myText(context,'A Band Score conversion table is produced for each version of the Listening test which translates scores out of 40 into the IELTS 9-band scale. Scores are reported in whole bands and half bands.'),
                    myText(context,'One mark is awarded for each correct answer in the 40-item test. Care should be taken when writing answers on the answer sheet as poor spelling and grammar are penalised.'),
                    myText(context,''),
                    myHeading(context,'Parts details:'),
                    myText(context,'Test format – Listening (30 minutes)'),
                    myText(context,'You will listen to four recordings of native English speakers and then write your answers to a series of questions.'),
                    myText(context,'Recording 1 – a conversation between two people set in an everyday social context.'),
                    myText(context,'Recording 2 – a monologue set in an everyday social context, e.g. a speech about local facilities.'),
                    myText(context,'Recording 3 – a conversation between up to four people set in an educational or training context, e.g. a university tutor and a student discussing an assignment.'),
                    myText(context,'Recording 4 – a monologue on an academic subject, e.g. a university lecture.'),
                    myText(context,'Assessors will be looking for evidence of your ability to understand the main ideas and detailed factual information, the opinions and attitudes of speakers, the purpose of an utterance and evidence of your ability to follow the development of ideas.'),
                    myText(context,'IELTS Listening description'),
                    myText(context,'Paper format: There are four parts with ten questions each. The questions are designed so that the answers appear in the order they are heard in the audio.'),
                    myText(context,'The first two parts deal with situations set in everyday social contexts. In Part 1, there is a conversation between two speakers (for example, a conversation about travel arrangements), and in Part 2, there is a monologue in (for example, a speech about local facilities). The final two parts deal with situations set in educational and training contexts. In Part 3, there is a conversation between two main speakers (for example, two university students in discussion, perhaps guided by a tutor), and in Part 4, there is a monologue on an academic subject.'),
                    myText(context,'The recordings are heard only once. They include a range of accents, including British, Australian, New Zealand, American and Canadian.'),
                    myText(context,'Timing: Approximately 30 minutes (plus 10 minutes transfer time).'),
                    myText(context,''),
                    myText(context,'No. of questions: 40'),
                    myText(context,'Task types: A variety of question types are used, chosen from the following: multiple choice, matching, plan/map/diagram labelling, form/note/table/flow-chart/summary completion, sentence completion.'),
                    myText(context,'Answering: Test takers write their answers on the question paper as they listen and at the end of the test are given 10 minutes to transfer their answers to an answer sheet. Care should be taken when writing answers on the answer sheet as poor spelling and grammar are penalised.'),
                    myText(context,'Marks: Each question is worth 1 mark.'),
                    myText(context,''),
                    myHeading(context,'Marking and scoring'),
                    myText(context,'The IELTS Listening test contains 40 questions. Each correct answer is awarded one mark. Scores out of 40 are converted to the IELTS nine-band scale. Scores are reported in whole and half bands.'),
                    myText(context,'Correct Answers / Bands'),
                    myText(context,'- 39-40 / 9'),
                    myText(context,'- 37-38 / 8.5'),
                    myText(context,'- 35-36 / 8'),
                    myText(context,'- 32-34 / 7.5'),
                    myText(context,'- 30-31 / 7'),
                    myText(context,'- 26-29 / 6.5'),
                    myText(context,'- 23-25 / 6'),
                    myText(context,'- 18-22 / 5.5'),
                    myText(context,'- 16-17 / 5'),
                    myText(context,'- 13-15 / 4.5'),
                    myText(context,'- 11-12  / 4'),
                    myText(context,''),
                    myHeading(context,'Top tips'),
                    myText(context,'Improve your general listening skills'),
                    myText(context,'The goal of IELTS Listening section is to test your listening skills. Don\'t use practice tests to improve your score: i\'s not enough! They will help you to become familiar with the test, but won\'t much improve your listening abilities. It is much more effective to do various listening exercises, listen to general listening materials (radio reports, TV-shows, documental programs etc) and only after that do IELTS Listening practice tests.'),
                    myText(context,'Polish your topic vocabulary'),
                    myText(context,'Section 3 is almost always about education. For example, students and a tutor talking about an assignment. Learn all the vocabulary you can about studying at university. This way you will understand this section better.'),
                    myText(context,'On the test'),
                    myText(context,'Word types'),
                    myText(context,'Skip over the questions and decide which type of word fits in each gap. Is it a noun, verb, adverb or adjective? Write \'N\' for noun, \'V\' for verb and so on. This will help you to focus on the specific word forms while listening'),
                    myText(context,'"Plug in" the situation'),
                    myText(context,'Try to get an idea of the situation. Before each part you will be given a short introduction: \'Now, you will hear a dialogue between…\' or \'you will hear a lecture on…\' This information is not written on the question paper, so be attentive. Note: who are the speakers, why are they speaking and where are they. This will make understanding the rest of the recording much easier.'),
                    myText(context,'Don\'t loose attention'),
                    myText(context,'Remember, you will only hear the audio once. So if you didn\'t hear some words and passed over some questions, don\'t worry! Leave them blank and focus on the actual part. Review those questions at the end of the section, otherwise, you will only miss more questions and tangle in the recording. You will need to read, write and listen all at the same time.'),
                    myText(context,'Watch out words-indicators'),
                    myText(context,'Listen for words-indicators, such as however, but, then, finally. They help you to anticipate what the speaker will say.'),
                    myText(context,'Don\'t write answers too quickly'),
                    myText(context,'A lot of students fall into this trap: as soon as they hear the needed information, they take it for the correct answer. But sometimes this information is repeated or corrected further in the section. Example:'),
                    myText(context,'Sam: Thank you! I\'ve received your email. So it is loren-hanson@gmail.com.Loren: No-no! You have mistaken, it is loren-hamson@gmail.com spelled with M. Sam: Oh, I\'m sorry...'),
                    myText(context,'Check for silly mistakes'),
                    myText(context,'After each section you have 30 seconds to check your answers. It is important to check spelling, plurals and word forms. Remember that only correctly written answers will gain points.'),
                    myText(context,'Transfer answers accurately'),
                    myText(context,'At the end of the listening test you will have 10 minutes for transferring your answers into the answer sheet. And quite often students get confused in the numeration! As you write down your answers, check that they fit into the correct numbered space. In other words, make sure that answer for question 7 goes into space number 7.'),
                    myText(context,'At the end of the listening test you will have 10 minutes for transferring your answers into the answer sheet. And quite often students get confused in the numeration! As you write down your answers, check that they fit into the correct numbered space. In other words, make sure that answer for question 7 goes into space number 7.'),
                    myText(context,'Don\'t leave any blank answers!'),
                    myText(context,'You won\'t lose marks for incorrect answers, so even if you don\'t know the answer it is better to write something in the answers box. Read the question again and make a guess!'),
                    myHeading(context,'Take a quiz'),
                    myText(context,'Take a quiz'),
                    myText(context,'4'),
                    myText(context,'2'),
                    myText(context,'6 ( Answer ) ( MCQ, Sentence/table/summary/flowchart completion, diagram completion,Matching, and short answer questions.'),
                    myText(context,'- In a Short Answer Question you should answer with once sentence'),
                    myText(context,'True'),
                    myText(context,'False ( False ) The question will tell you how many words to use'),
                    myText(context,'- In a summary completion questions you will be given an answer in a list'),
                    myText(context,'True'),
                    myText(context,'False ( Answer ) You may be given a list or you may have to recall words from the recording.'),
                    myText(context,'There is only one correct answer for a multiple choice questions.'),
                    myText(context,'True'),
                    myText(context,'False ( Answer ) The question will tell you if there could be more than one correct answer '),
                    myText(context,'Matching Questions tend to focus on detailed information.'),
                    myText(context,'True ( Answer ) They ask for detailed information or how different information is related to each other.'),
                    myText(context,'False'),
                    myText(context,'Only maps and flowcharts are used in labeling questions.'),
                    myText(context,'True'),
                    myText(context,'False ( Answer ) Other diagrams can also be used in labeling questions.'),
                    myText(context,'Sentence Completion Questions are used to test understanding of functional relationships'),
                    myText(context,'True ( Answer ) These questions focus on key information and understanding of functional relationships.'),
                    myText(context,'False'),
                    myText(context,'How many parts of the listening parts are there'),
                    myText(context,'1'),
                    myText(context,'4 (  Answer )'),
                    myText(context,'2'),
                    myText(context,'Each of the 4 sections has how many questions.'),
                    myText(context,'5'),
                    myText(context,'Various'),
                    myText(context,'10 ( Answer ) Each section has 10 questions.'),
                    myText(context,'Part 1 and Part 2 deal with academic contexts and part 3 and 4 deal with everyday contexts.'),
                    myText(context,'True'),
                    myText(context,'False ( Answer ) Part 1 and 2 deal with every day contexts part 3 and 4 with academic contexts.'),
                    myText(context,'Part 1 and 3 are conversations and part 2 and 4 are monologues.'),
                    myText(context,'True ( Answer ) There is both a conversation and a monologues set in every day contexts and academic contexts.'),
                    myText(context,'False'),
                    myText(context,'Only accents from the united kingdom will be heard in the recording.'),
                    myText(context,'True'),
                    myText(context,'False ( Answer ) Accent from any country where English is the native language may be heard.'),
                    myText(context,'A variety of topics may be used in the listening text.'),
                    myText(context,'False'),
                    myText(context,'True ( Answer ) The topics are general enough for all test takers to be able to answer the questions.'),
                    myText(context,'Test Takers may find some of the topics sensitive or offensive.'),
                    myText(context,'True'),
                    myText(context,'False ( Answer ) IELTS include questions catering people from different cultures to ensure fairness and appropriacy.'),
                    myText(context,'Each recording will be played how many times.'),
                    myText(context,'1 ( Answer ) '),
                    myText(context,'3'),
                    myText(context,'4'),
                    myText(context,'How long does the test last for ?.'),
                    myText(context,'30'),
                    myText(context,'40 ( Answer ) 30 minutes to answer on the test paper then 10 minutes to transfer answers on answer sheet. '),
                    myText(context,'50'),
                    myText(context,'Each question is worth 1 point.'),
                    myText(context,'False'),
                    myText(context,'True ( Answer ) Each question is worth 1 point but poor spellings and grammar are penalized.'),
                    myText(context,'There are specific techniques that should help test takers to get a better score.'),
                    myText(context,'True'),
                    myText(context,'False ( Answer ) Each test taker may have their own answering techniques that they would like to use'),
                    myText(context,''),
                    
                 

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  

  // Widget myText(String text) {
  //   return Row(
  //     children: [
  //       Expanded(
  //         child: Text(
  //           text,
  //           style: TextStyle(color: Colors.black, fontSize: 10),
  //         ),
  //       ),
  //       SizedBox(height: MediaQuery.of(context).size.height * .05),
  //     ],
  //   );
  // }

  Widget blueText(String text) {
    return Row(
      children: [
        Text(
          "\u2022",
          style: TextStyle(color: Colors.black, fontSize: 13),
        ),
        SizedBox(width: MediaQuery.of(context).size.width * .04),
        Text(
          text,
          style: TextStyle(color: Colors.blue, fontSize: 10),
        )
      ],
    );
  }
}
