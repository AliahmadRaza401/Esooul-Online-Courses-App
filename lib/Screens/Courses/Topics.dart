import 'package:esooul/Widgets/back_button.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';

class Topics extends StatefulWidget {
  const Topics({Key? key}) : super(key: key);

  @override
  _TopicsState createState() => _TopicsState();
}

class _TopicsState extends State<Topics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Header(),
           
            Container(
              // margin: EdgeInsets.only(
              //   // top: MediaQuery.of(context).size.height * .08,
              //   left: MediaQuery.of(context).size.width * .05,
              //   right: MediaQuery.of(context).size.width * .05,
              // ),
              height: MediaQuery.of(context).size.height * .75,
              // width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white
                  ),
              padding: EdgeInsets.all(30).copyWith(top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Text("Quiz Guide",style: TextStyle(color: Colors.black),)
                  ],),
                  Row(
                    children: [
                      // Padding(
                      //   padding: const EdgeInsets.all(7.0),
                      //   child:
                      //       BackButtonWidget(iconPath: 'assets/png/fvrt.png'),
                      // )
                    ],
                  ),
                  desc('assets/png/question.png', '10 Question',
                      '10 point for a correct answer'),
                  desc('assets/png/timer.png', '1 hour 15 min',
                      'Total duration of the quiz'),
                  desc('assets/png/winstar.png', 'Win 10 star',
                      'Answer all questions correctly'),
                      SizedBox(height:MediaQuery.of(context).size.height *.01),
                  Wrap(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Brief explanation about this quiz",
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                      desc('assets/png/question.png', '10 Question',
                          '10 point for a correct answer'),
                      desc('assets/png/timer.png', '1 hour 15 min',
                          'Total duration of the quiz'),
                      desc('assets/png/winstar.png', 'Win 10 star',
                          'Answer all questions correctly'),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * .01),
                      Wrap(
                        children: [
                          Text(
                              "Please read the text below carefully so you can understand it"),
                        ],
                      ),
                      bullets('assets/png/Ellipse 6.png',
                          '10 point awarded for a correct answer and nomarks for a incorrect answer'),
                      bullets('assets/png/Ellipse 6.png',
                          'Tap on options to select the correct answer'),
                      bullets('assets/png/Ellipse 6.png',
                          'Tap on the bookmark icon to save interestingquestions'),
                      bullets('assets/png/Ellipse 6.png',
                          'Click submit if you are sure you want to complete all the quizzes'),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .04,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * .3,
                                right: MediaQuery.of(context).size.width * .3,
                                top: MediaQuery.of(context).size.height * .02,
                                bottom:
                                    MediaQuery.of(context).size.height * .02),
                            primary: Color(0xff00B0D7),
                            side: BorderSide(width: 1, color: Colors.black),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                          child: Text(
                            "Start Quiz",
                            style: TextStyle(fontSize: 10),
                          ))
                    ],
                  ),
                  bullets('assets/png/Ellipse 6.png', '10 point awarded for a correct answer and nomarks for a incorrect answer'),
                  bullets('assets/png/Ellipse 6.png', 'Tap on options to select the correct answer'),
                  bullets('assets/png/Ellipse 6.png', 'Tap on the bookmark icon to save interestingquestions'),
                  bullets('assets/png/Ellipse 6.png', 'Click submit if you are sure you want to complete all the quizzes'),
                  SizedBox(height: MediaQuery.of(context).size.height *.04,),
                  ElevatedButton(onPressed: (){

                  }, style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.only(
                                        left: MediaQuery.of(context)
                                                .size
                                                .width *
                                            .35,
                                        right: MediaQuery.of(context)
                                                .size
                                                .width *
                                            .35,
                                        top: MediaQuery.of(context)
                                                .size
                                                .height *
                                            .015,
                                        bottom: MediaQuery.of(context)
                                                .size
                                                .height *
                                            .015),
                                    primary: Color(0xff00B0D7),
                                    
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(100),
                                    ),
                                  ),
                                  child: Text("Start Quiz",style: TextStyle(fontSize: 15),))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget bullets(String imag, String txt) {
    return Row(
      children: [
        Column(
          children: [
            Image.asset("$imag",),
          ],
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .04,
        ),
        Expanded(
            child: Text(
          "$txt",
          style: TextStyle(fontSize: 12),
        ))
      ],
    );
  }

  Widget desc(String icon, String def, String description) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [Image.asset("$icon")],
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .04,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "$def",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  '$description',
                  style: TextStyle(fontSize: 12),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
