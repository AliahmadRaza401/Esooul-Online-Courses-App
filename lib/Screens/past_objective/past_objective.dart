import 'dart:async';

import 'package:esooul/Screens/Report/Report.dart';
import 'package:esooul/Screens/past_objective/past_objective_provider.dart';
import 'package:esooul/Screens/past_objective/past_objective_widget.dart';
import 'package:esooul/Widgets/back_button.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:esooul/Widgets/loading_animation.dart';
import 'package:flutter/material.dart';
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
  var result;

  late AnimationController _animationController;
  late Animation _animation;
  Animation get animation => this._animation;

  @override
  void initState() {
    super.initState();
    _pastObjectiveProvider = Provider.of(context, listen: false);
    getData();
  }

  getData() async {
    result = await _pastObjectiveProvider.pastObjective();
    setState(() {
      _loader = false;
      totalQuestion = result.length + 1;
    });
    print("lengh : ${result.length}");
  }

  optionValidate() {
    setState(() {
      attemped = attemped + 1;
    });
    print('selectedOption: $selectedOption');
    print("Ans ${result[questionNumber].answer}");
    if (selectedOption.toString() == result[questionNumber].answer.toString()) {
      print("True");
      setState(() {
        circleColor[selectedOption] = Colors.green;
        textColor[selectedOption] = Colors.green;
        pass = pass + 1;
        Timer(Duration(seconds: 1), nextQuestion);
      });
    } else {
      print("False");
      setState(() {
        circleColor[selectedOption] = Colors.red;
        textColor[selectedOption] = Colors.red;
        fail = fail + 1;
        Timer(Duration(seconds: 1), nextQuestion);
      });
    }
  }

  nextQuestion() {
    setState(() {
      questionNumber = questionNumber + 1;

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
                // top: MediaQuery.of(context).size.height * 0,
                left: MediaQuery.of(context).size.width * .015,
                right: MediaQuery.of(context).size.width * .015,
              ),
              height: MediaQuery.of(context).size.height * .7,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                child: Column(children: [
                  _loader == true
                      ? LoadingBounceAnimation(context)
                      : Container(
                          padding: EdgeInsets.all(30).copyWith(top: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 0, right: 20),
                                    padding: EdgeInsets.symmetric(vertical: 5),
                                    alignment: Alignment.center,
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
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
                                            BorderRadius.circular(20)),
                                    child: Text(
                                      "Total: " +
                                          "${totalQuestion == null ? 0 : totalQuestion}",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 17),
                                    ),
                                  ),
                                ],
                              ),
                              // Padding(
                              //   padding: const EdgeInsets.all(8.0),
                              //   child: DefaultTabController(
                              //       length: 2,
                              //       child: TabBar(tabs: [tabMaker()])),
                              // ),
                              Column(
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02,
                                  ),
                                  question(
                                      questionNumber == null
                                          ? 0
                                          : questionNumber + 1,
                                      result[questionNumber].question == null
                                          ? ""
                                          : result[questionNumber].question),
                                  ListView.builder(
                                    shrinkWrap: true,
                                    physics: ClampingScrollPhysics(),
                                    itemCount: result[questionNumber]
                                                .option
                                                .length ==
                                            null
                                        ? 0
                                        : result[questionNumber].option.length,
                                    itemBuilder: (context, i) {
                                      return options(
                                          result[questionNumber].option[i] ==
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
                              // mcq(
                              //     '01)  The water of crystallization is responsible for the',
                              //     'Melting points of crystals',
                              //     'Boiling points of crystals',
                              //     'Transition point of crystal',
                              //     'Shapes of crystals'),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * .04,
                              ),
                              GestureDetector(
                                  onTap: () {
                                    snackBar("Comming Soon...");
                                  },
                                  child: videoContainer(context)),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * .03,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Skip and go to next question",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        .01,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Color(0xff677A8F),
                                        radius: 25,
                                        child: Icon(Icons.arrow_back_ios_sharp),
                                      ),
                                      ElevatedButton(
                                          onPressed: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Report(
                                                          total: totalQuestion,
                                                          pass: pass,
                                                          fail: fail,
                                                          attemped: attemped,
                                                          notAttemped:
                                                              notAttemped,
                                                        )));
                                            // if (totalQuestion == questionNumber) {
                                            //   Navigator.of(context).push(
                                            //       MaterialPageRoute(
                                            //           builder: (context) =>
                                            //               Report()));
                                            // } else {
                                            //   snackBar(
                                            //       "Kindly Finish Question Firstly!");
                                            // }
                                          },
                                          style: ElevatedButton.styleFrom(
                                            padding: EdgeInsets.only(
                                                left: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    .14,
                                                right: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    .15,
                                                top: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    .015,
                                                bottom: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    .015),
                                            primary: Colors.blue,
                                            // questionNumber == totalQuestion
                                            //     ? Colors.blue
                                            //     : Color(0xff677A8F),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                            ),
                                          ),
                                          child: Text(
                                            'Submit Quiz',
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            notAttemped = notAttemped + 1;
                                            questionNumber = questionNumber + 1;
                                          });
                                        },
                                        child: CircleAvatar(
                                          backgroundColor: Color(0xffD4D4D4),
                                          radius: 25,
                                          child: Icon(
                                              Icons.arrow_forward_ios_sharp),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              )
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
        optionValidate();
      },
      child: Container(
        margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.01),
        child: Row(
          children: [
            CircleAvatar(
              child: Text(
                intToAlphbatic(number),
                style: TextStyle(color: Colors.black),
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
}
