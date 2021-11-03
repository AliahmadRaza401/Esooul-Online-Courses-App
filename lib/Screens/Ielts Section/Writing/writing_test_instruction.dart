import 'package:esooul/Screens/Authentication/signUp/signUp_provider.dart';
import 'package:esooul/Screens/Ielts%20Section/Writing/writing_provider.dart';
import 'package:esooul/Widgets/dialog.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:esooul/Widgets/loading_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

class WritingTestInstruction extends StatefulWidget {
  final instruction;
  WritingTestInstruction({@required this.instruction});

  @override
  _WritingTestInstructionState createState() => _WritingTestInstructionState();
}

class _WritingTestInstructionState extends State<WritingTestInstruction> {
  late WritingProvider writingProvider;
  @override
  void initState() {
    super.initState();
    writingProvider = Provider.of<WritingProvider>(context, listen: false);
    getTest();
  }

  var instruction;
  var writingData;

  getTest() async {
    var token = await Provider.of<SignUpProvider>(context, listen: false)
        .getUserTokenSF();
    var data = await writingProvider.writingTest(token);
    // print('data: $data');

    if (data['status'] == 200) {
      setState(() {
        writingData = data['data'][0];
        instruction = writingData['instruction'];
      });
    } else {
      CommomWidget().okayAlertDialog(
        context,
        "Failed",
        "Check your internet connection",
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Header(btntext: "Test Instruction"),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              height: MediaQuery.of(context).size.height * 0.68,
              child: ListView(
                children: [
                  instruction == null
                      ? LoadingBounceAnimation(context)
                      : Html(data: instruction),
//                   heading('Answering techniques'),
//                   Text(
//                       """So you want to score a band 8 on IELTS Writing? \n Many IELTS test-takers spend a lot of time training to write top-notch essays. To achieve a desired score, they stuff their essays with uncommon vocabulary, overuse complicated grammar or write too many words. But are these means really necessary? The answer is NO.\nThere are a lot of much simpler writings that score 8.0 and higher! This is because you don’t need any special knowledge: the examiner will assess your writing, not your thoughts. Even simple but accurately expressed ideas score better than too complicated ones. To succeed in IELTS Writing, you need to be accurate
// write simple things well
// Ridiculously, even well trained candidates often lose points on IELTS Writing because of making simple mistakes: from going off topic to writing too many words.
// On this page we’ve gathered top 10 IELTS Writing tips that will help you score band 8+ on IELTS Writing:"""),
//                   heading('Read the question'),
//                   Text(
//                       """ Understanding what the question asks you to do is crucial for achieving a good score. That's why, always read your question thoroughly and cover all the points you're asked to write about. For example:
// The government should pay to the parents of very young children, so that one of them can stay at home and look after their children.
// What do you think are the pros and cons of this policy? Justify your answer and include any relevant examples from your own knowledge or experience.

// In this question you're asked to do two things:
// Write pros & cons
// Give examples
// Failing to complete one of the requirements of the task results in a lower score!
// """),
//                   heading("Read what you have written"),
//                   Text(
//                       """ Go back and read the paragraph you have just written before you start the next one. You may think that this is a waste of time. If so, you’d be wrong. It’s important to link your paragraphs together – what easier way to do that than just read what you have written?"""),
//                   heading("Be clear"),
//                   Text(
//                       """The practical advice here is to select your best idea and write about that. That means not writing everything you know – leave some ideas out. Don’t worry if it is not your best explanation, worry about whether it is your clearest explanation."""),
//                   heading("Write about what you know"),
//                   Text(
//                       """You are being tested on the quality of your English, not on the quality of your ideas. So you shouldn’t worry about finding the “right answer”. You need a simple idea that you can clearly describe and justify."""),
//                   heading("Follow the standard structure"),
//                   Text(
//                       """To get maximum points, you should follow the standard structure. IELTS Writing task 1 should be written as follows:

// Introduction: briefly describe what your graph shows.
// Overview: state main trends.
// Specific details: describe specific changes, providing data.
// Learn more about structuring Academic Writing task 1.
// IELTS Writing task 2 answer should have such backbone:
// Introduction: rephrase the topic + give your opinion.
// Body paragraphs: each should have its central idea, which is generally stated in the first sentence.
// Conclusion: just rephrase your opinion from the introduction.
// """),
//                   heading("Don’t write too many words"),
//                   Text(
//                       """It’s a bad idea to write more than 300 words in task 2 and more than 200 words in task 1. Firstly, it’s difficult for the examiner to read long essays and he/she will check your writing less carefully. Secondly, you are likely to make more mistakes and have less time to check what you wrote."""),
//                   heading("Choose your writing style"),
//                   Text(
//                       """"Never use informal language in academic writing or in essay. Only in general module task 1 you may be asked to write an informal letter."""),
//                   heading("Don't learn model answers by heart"),
//                   Text(
//                       """Never use informal language in academic writing or in essay. Only in general module task 1 you may be asked to write an informal letter."""),
//                   heading("Don't learn model answers by heart"),
//                   Text(
//                       """Do not memorize model answers - you will receive less points for such essay. The chance of getting exactly the same essay as you've learnt is very small. And going off topic will result in achieving a low score. So instead, spend some time learning to adopt advanced vocabulary to make it fit into your answer. This way you'll be able to use various words phrases in different writings and show your broad range of vocabulary."""),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget heading(text) {
    return Container(
      margin: EdgeInsets.only(top: 15, bottom: 5),
      child: Row(
        children: [
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
