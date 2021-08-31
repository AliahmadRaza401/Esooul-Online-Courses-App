import 'dart:async';

import 'package:esooul/Screens/Report/Report.dart';
import 'package:esooul/Screens/past_objective/past_objective_provider.dart';
import 'package:esooul/Screens/past_objective/past_objective_widget.dart';
import 'package:esooul/Screens/yearly_papers/yearly_paper_provider.dart';
import 'package:esooul/Widgets/back_button.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:esooul/Widgets/loading_animation.dart';
import 'package:esooul/Widgets/noData_msg.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:provider/provider.dart';

class PastObjective extends StatefulWidget {
  const PastObjective({Key? key}) : super(key: key);

  @override
  _PastObjectiveState createState() => _PastObjectiveState();
}

class _PastObjectiveState extends State<PastObjective> {
  bool _loader = true;
  var selectedOption;
  int questionNumber = 0;
  var totalQuestion;
  int pass = 0;
  int fail = 0;
  int attemped = 0;
  int notAttemped = 0;
  late PastObjectiveProvider _pastObjectiveProvider;
  late YearlyPaperProvider _yearlyPaperProvider;
  var result;
  var paperID;
  bool videoVisible = false;
  bool optionSelected = true;

  late AnimationController _animationController;
  late Animation _animation;
  Animation get animation => this._animation;
  final interval = const Duration(seconds: 1);

  final int timerMaxSeconds = 60;

  int currentSeconds = 0;
  String get timerText =>
      '00:${((timerMaxSeconds - currentSeconds) % 60).toString().padLeft(2, '0')}';

  @override
  void initState() {
    super.initState();
    _pastObjectiveProvider = Provider.of(context, listen: false);
    _yearlyPaperProvider = Provider.of(context, listen: false);
    paperID = _yearlyPaperProvider.yearlyPaperID;

    getData();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  startTimeout([int? milliseconds]) {
    var duration = interval;
    Timer.periodic(duration, (timer) {
      if (this.mounted) {
        // check whether the state object is in tree
        setState(() {
          currentSeconds = timer.tick;
          if (timer.tick >= timerMaxSeconds) timer.cancel();
        });
      }
    });
  }

  getData() async {
    result = await _pastObjectiveProvider.pastObjective(paperID);
    setState(() {
      _loader = false;
      totalQuestion = result.length + 1;
    });
    startTimeout();
    print("lengh : ${result.length}");
  }

  optionValidate() {
    print("total $totalQuestion");
    print("QNo : ${questionNumber + 2}");
    setState(() {
      attemped = attemped + 1;
      optionSelected = false;
    });
    print('selectedOption: $selectedOption');
    print("Ans ${result[questionNumber].answer}");
    if (selectedOption.toString() == result[questionNumber].answer.toString()) {
      print("True");
      setState(() {
        circleColor[selectedOption] = Colors.green;
        textColor[selectedOption] = Colors.green;
        pass = pass + 1;
        videoVisible = false;
        if (questionNumber + 2 != totalQuestion) {
          Timer(Duration(seconds: 1), nextQuestion);
        }
      });
    } else if (selectedOption.toString() !=
        result[questionNumber].answer.toString()) {
      print("False");
      print(result[questionNumber].answer.toString());
      setState(() {
        circleColor[selectedOption] = Colors.red;
        textColor[selectedOption] = Colors.red;
        // circleColor[result[questionNumber].answer] = Colors.green;
        fail = fail + 1;
        videoVisible = true;
      });
    }
  }

  nextQuestion() {
    setState(() {
      questionNumber = questionNumber + 1;
      optionSelected = true;
      textColor[0] = Colors.black;
      textColor[1] = Colors.black;
      textColor[2] = Colors.black;
      textColor[3] = Colors.black;
      textColor[4] = Colors.black;
      textColor[5] = Colors.black;
      textColor[5] = Colors.black;
      textColor[6] = Colors.black;

      circleColor[0] = Color(0xffD4D4D4);
      circleColor[1] = Color(0xffD4D4D4);
      circleColor[2] = Color(0xffD4D4D4);
      circleColor[3] = Color(0xffD4D4D4);
      circleColor[4] = Color(0xffD4D4D4);
      circleColor[5] = Color(0xffD4D4D4);
      circleColor[6] = Color(0xffD4D4D4);
      circleColor[7] = Color(0xffD4D4D4);
    });
  }

  Map<int, Color> textColor = {
    0: Colors.black,
    1: Colors.black,
    2: Colors.black,
    3: Colors.black,
    4: Colors.black,
    5: Colors.black,
    6: Colors.black,
    7: Colors.black,
  };
  Map<int, Color> circleColor = {
    0: Color(0xffD4D4D4),
    1: Color(0xffD4D4D4),
    2: Color(0xffD4D4D4),
    3: Color(0xffD4D4D4),
    4: Color(0xffD4D4D4),
    5: Color(0xffD4D4D4),
    6: Color(0xffD4D4D4),
    7: Color(0xffD4D4D4),
  };
  // tabMaker() {
  //   for (var i = 0; i < totalQuestion; i++) {
  //     return Tab(
  //       text: "${i + 1}",
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Header(
            btntext: 'MCQs',
          ),
          Container(
              margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * .015,
                right: MediaQuery.of(context).size.width * .015,
              ),
              height: MediaQuery.of(context).size.height * .72,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                child: Column(children: [
                  _loader == true
                      ? LoadingBounceAnimation(context)
                      : _pastObjectiveProvider.pastObjectiveData.isEmpty
                          ? noDataMsg(context)
                          : Container(
                              padding: EdgeInsets.all(30).copyWith(top: 10),
                              height: MediaQuery.of(context).size.height * .72,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                      width: double.infinity,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .08,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              percentageIndicator(
                                                context,
                                              ),
                                            ],
                                          ),
                                          Row(
                                            // crossAxisAlignment:
                                            // CrossAxisAlignment.end,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 5),
                                                alignment: Alignment.center,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.3,
                                                decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topRight,
                                                      end: Alignment.topLeft,
                                                      colors: [
                                                        Color(0xffFF9D43),
                                                        Color(0xffFFD643),
                                                      ],
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                                child: Text(
                                                  "Total: " +
                                                      "${totalQuestion == null ? 0 : totalQuestion - 1}",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 17),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )),
                                  Container(
                                    // color: Colors.amber,
                                    height: MediaQuery.of(context).size.height *
                                        .45,
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.02,
                                        ),
                                        question(
                                            questionNumber == null
                                                ? 0
                                                : questionNumber + 1,
                                            result[questionNumber].question ==
                                                    null
                                                ? ""
                                                : result[questionNumber]
                                                    .question),
                                        ListView.builder(
                                          shrinkWrap: true,
                                          physics: ClampingScrollPhysics(),
                                          itemCount: result[questionNumber]
                                                      .option
                                                      .length ==
                                                  null
                                              ? 0
                                              : result[questionNumber]
                                                  .option
                                                  .length,
                                          itemBuilder: (context, i) {
                                            return options(
                                                result[questionNumber]
                                                            .option[i] ==
                                                        null
                                                    ? ""
                                                    : result[questionNumber]
                                                        .option[i],
                                                i,
                                                circleColor,
                                                textColor);
                                          },
                                        )
                                      ],
                                    ),
                                  ),
                                  // Row(
                                  //   children: [
                                  //     Visibility(
                                  //         visible: videoVisible,
                                  //         child: videoContainer(context)),
                                  //   ],
                                  // ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            "Skip and go to next question",
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .02,
                                          ),
                                          Container(
                                            alignment: Alignment.bottomCenter,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                ElevatedButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        videoVisible = false;
                                                      });
                                                      Navigator.of(context).push(
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) =>
                                                                      Report(
                                                                        total:
                                                                            totalQuestion,
                                                                        pass:
                                                                            pass,
                                                                        fail:
                                                                            fail,
                                                                        attemped:
                                                                            attemped,
                                                                        notAttemped:
                                                                            notAttemped,
                                                                      )));
                                                    },
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      padding: EdgeInsets.only(
                                                          left: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              .14,
                                                          right:
                                                              MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  .15,
                                                          top: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              .015,
                                                          bottom: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              .015),
                                                      primary: Colors.blue,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100),
                                                      ),
                                                    ),
                                                    child: Text(
                                                      'Submit Quiz',
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    )),
                                                SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            .06),
                                                GestureDetector(
                                                  onTap: questionNumber + 2 !=
                                                          totalQuestion
                                                      ? () {
                                                          setState(() {
                                                            notAttemped =
                                                                notAttemped + 1;
                                                            // questionNumber =
                                                            //     questionNumber + 1;
                                                            videoVisible =
                                                                false;
                                                          });
                                                          nextQuestion();
                                                        }
                                                      : null,
                                                  child: CircleAvatar(
                                                    backgroundColor:
                                                        questionNumber + 2 ==
                                                                totalQuestion
                                                            ? Color(0xffD4D4D4)
                                                            : Colors.blue,
                                                    radius: 25,
                                                    child: Icon(
                                                        Icons
                                                            .arrow_forward_ios_sharp,
                                                        color: Colors.white),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ))
                ]),
              )),
        ]),
      ),
    );
  }

  snackBar(String message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 2),
      ),
    );
  }

  Widget tabs(int number) {
    return Text(
      "$number",
      style: TextStyle(color: Colors.black),
    );
  }

  intToAlphbatic(val) {
    if (val == 0) {
      return "A";
    } else if (val == 1) {
      return "B";
    } else if (val == 2) {
      return "C";
    } else if (val == 3) {
      return "D";
    }
  }

  Widget options(val, number, cirColor, txtColor) {
    return GestureDetector(
      onTap: () {
        print("click");
        setState(() {
          selectedOption = number;
        });
        if (optionSelected == true) {
          optionValidate();
        }
      },
      child: Container(
        margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.01),
        child: Row(
          children: [
            CircleAvatar(
              child: Text(
                intToAlphbatic(number),
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              backgroundColor: circleColor[number],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .03,
            ),
            Text(
              "$val",
              style: TextStyle(color: textColor[number]),
            )
          ],
        ),
      ),
    );
  }

  Widget question(number, val) {
    return Row(
      children: [
        Expanded(
            child: Text(
          "${number.toString() + ":" + " " + val}",
          style: TextStyle(color: Colors.black),
        ))
      ],
    );
  }

  Widget percentageIndicator(
    context,
  ) {
    return LinearPercentIndicator(
      width: MediaQuery.of(context).size.width * 0.84,
      animation: true,
      lineHeight: 25.0,
      animationDuration: 60000,
      percent: 1,
      center: Text(timerText),
      linearStrokeCap: LinearStrokeCap.roundAll,
      progressColor: Color(0xff00B0D7),
      onAnimationEnd: () {
        print("Time out");
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Report(
                  total: totalQuestion,
                  pass: pass,
                  fail: fail,
                  attemped: attemped,
                  notAttemped: notAttemped,
                )));
      },
    );
  }
}
