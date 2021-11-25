import 'package:esooul/Screens/Home/home_widgets.dart';
import 'package:esooul/Screens/Ielts%20Section/IELTS%20Home/ielts_modules.dart';
import 'package:esooul/Screens/Ielts%20Section/Listening/ielts_test_tips.dart';
import 'package:esooul/Screens/Ielts%20Section/Writing/grammer.dart';
import 'package:esooul/Screens/Ielts%20Section/Writing/vocabulary.dart';
import 'package:esooul/Screens/boards_list/board_list.dart';
import 'package:esooul/Widgets/comingSoon_msg.dart';
import 'package:flutter/material.dart';

class ESLhome extends StatefulWidget {
  const ESLhome({Key? key}) : super(key: key);

  @override
  _ESLhomeState createState() => _ESLhomeState();
}

class _ESLhomeState extends State<ESLhome> {
  var userFName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            child: SafeArea(
          child: Container(
            child: SizedBox(
              // height: MediaQuery.of(context).size.height *1,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xff72C6EF),
                            Color(0xff004E8F),
                          ],
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                          bottomLeft: Radius.circular(80),
                          bottomRight: Radius.circular(80),
                        )),
                    width: MediaQuery.of(context).size.width * .99,
                    height: MediaQuery.of(context).size.height * .52,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 630),
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/png/ieltsBackground.png"),
                      ),
                      // color: Colors.amber,
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.all(0).copyWith(top: 5),
                      height: double.infinity,
                      width: double.infinity,
                      child: Column(
                        children: [
                          Container(
                            padding:
                                EdgeInsets.all(20).copyWith(top: 0, bottom: 10),
                            child: homeHeader(context, userFName),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * .65,
                            width: double.infinity,
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, right: 15, left: 15),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        IeltsModules()));
                                          },
                                          child: boardsCard(
                                              context,
                                              'assets/png/iELTS.png',
                                              'IELTS',
                                              'IELTS is an English language test for study, migration or work'),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ComingSoon()));
                                          },
                                          child: boardsCard(
                                              context,
                                              'assets/png/tofel.png',
                                              'TOFEL ',
                                              'The TOEFL test is the world\'s most trusted and widely accepted English-language assessment'),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ComingSoon()));
                                          },
                                          child: boardsCard(
                                              context,
                                              'assets/png/DUOLINGO.png',
                                              'DUOLINGO',
                                              'Duolingo\'s mission is to develop the best education in the world and make it universally available'),
                                        ),
                                      ],
                                    ),
                                  ),
                                  importantText(context, 'Important', ''),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Vocabulary()));
                                          },
                                          child: guessPaper(
                                              context,
                                              'assets/png/ieltshomevocabulary.png',
                                              'Vocabulary'),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Grammer()));
                                          },
                                          child: guessPaper(
                                              context,
                                              'assets/png/grammerIeltshome.png',
                                              'Grammer'),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        IeltsTestTips()));
                                          },
                                          child: guessPaper(
                                              context,
                                              'assets/png/testtips.png',
                                              'Tips'),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ),
          ),
        )));
  }
}
