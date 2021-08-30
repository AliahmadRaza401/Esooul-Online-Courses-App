import 'package:esooul/Screens/past_objective/past_objective.dart';
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
      backgroundColor: Colors.white,
      body: Container(
        // height: MediaQuery.M,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Header(
                btntext: 'Topics',
              ),
              Container(
                height: MediaQuery.of(context).size.height * .7,
                // width: double.infinity,
                decoration: BoxDecoration(color: Colors.white),
                padding: EdgeInsets.all(30).copyWith(top: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        PaperInstructions(),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Quiz Guide",
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Brief explanation about this quiz",
                          style:
                              TextStyle(fontSize: 18, color: Color(0xff1D6CA7)),
                        )
                      ],
                    ),
                    desc('assets/png/question.png', '10 Question',
                        '10 point for a correct answer'),
                    desc('assets/png/timer.png', '1 hour 15 min',
                        'Total duration of the quiz'),
                    desc('assets/png/winstar.png', 'Win 10 star',
                        'Answer all questions correctly'),
                    SizedBox(height: MediaQuery.of(context).size.height * .01),
                    Wrap(children: [
                      Text(
                        "Please read the text below carefully so you can understand it",
                        style: TextStyle(color: Color(0xff1D6CA7)),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * .06),
                      bullets("",
                          'Instructions : Four possible answers A, B, C and D to each question are given. The choice which you think is correct, fill that circle in front of that question with Marker or Pen ink in the answer-book.Cutting or filling two or more circles will result in zero mark in that question.'),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .1,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10).copyWith(bottom: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 5,
                                        spreadRadius: 2,
                                        offset: Offset(3, 1))
                                  ]),
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                PastObjective()));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shadowColor: Colors.grey,

                                    padding: EdgeInsets.only(
                                        left:
                                            MediaQuery.of(context).size.width *
                                                .3,
                                        right:
                                            MediaQuery.of(context).size.width *
                                                .3,
                                        top:
                                            MediaQuery.of(context).size.height *
                                                .015,
                                        bottom:
                                            MediaQuery.of(context).size.height *
                                                .015),
                                    primary: Color(0xff00B0D7),
                                    // side: BorderSide(width: 1, color: Colors.black),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                  child: Text("Take Quiz")),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .1,
                      ),
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget PaperInstructions() {
    return Container(
        height: MediaQuery.of(context).size.height * .23,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image.asset(
                      "assets/png/BISE-Lahore-Logo.png",
                      width: MediaQuery.of(context).size.width * .13,
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * .71,
                      child: Wrap(
                        children: [
                          Text(
                            "Board of Intermediate and Secondary Education Lahore 2015-2017 to 2018-2020",
                            style: TextStyle(color: Colors.black, fontSize: 11),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height * .15,
              width: MediaQuery.of(context).size.width * .87,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Chemistry",
                        style: TextStyle(color: Colors.black, fontSize: 11),
                      ),
                      Text("Maximum Marks",
                          style: TextStyle(color: Colors.black, fontSize: 11)),
                      Text("Topic",
                          style: TextStyle(color: Colors.black, fontSize: 11)),
                      Text("Type",
                          style: TextStyle(color: Colors.black, fontSize: 11)),
                      Text("Time",
                          style: TextStyle(color: Colors.black, fontSize: 11)),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ".............................",
                        style: TextStyle(color: Colors.black, fontSize: 11),
                      ),
                      Text(
                        ".............................",
                        style: TextStyle(color: Colors.black, fontSize: 11),
                      ),
                      Text(
                        ".............................",
                        style: TextStyle(color: Colors.black, fontSize: 11),
                      ),
                      Text(
                        ".............................",
                        style: TextStyle(color: Colors.black, fontSize: 11),
                      ),
                      Text(
                        ".............................",
                        style: TextStyle(color: Colors.black, fontSize: 11),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "10th",
                        style: TextStyle(color: Colors.black, fontSize: 11),
                      ),
                      Text("48",
                          style: TextStyle(color: Colors.black, fontSize: 11)),
                      Text("Chemical Equilibrium",
                          style: TextStyle(color: Colors.black, fontSize: 11)),
                      Text("Subjective",
                          style: TextStyle(color: Colors.black, fontSize: 11)),
                      Text("1.45 hours",
                          style: TextStyle(color: Colors.black, fontSize: 11)),
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }

  Widget bullets(String bullet, String txt) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            child: Text(
          "$txt",
          style: TextStyle(fontSize: 12, color: Colors.black),
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
                  style: TextStyle(fontSize: 12, color: Colors.black),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
