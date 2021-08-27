import 'package:esooul/Widgets/header.dart';
import 'package:esooul/Widgets/header2.dart';
import 'package:flutter/material.dart';

class PaperAnswerVideo extends StatefulWidget {
  PaperAnswerVideo({Key? key}) : super(key: key);

  @override
  _PaperAnswerVideoState createState() => _PaperAnswerVideoState();
}

class _PaperAnswerVideoState extends State<PaperAnswerVideo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height * .9,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(15, 8, 15, 0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.6,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8.0),
                        margin: EdgeInsets.all(5.0),
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.155,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              "assets/png/playvideo.png",
                            ),
                            Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.02,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "01 Introduction",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 16.0,
                                                      decoration: TextDecoration
                                                          .underline),
                                                ),
                                                Text(
                                                  " video link",
                                                  style: TextStyle(
                                                      color: Colors.blue,
                                                      fontSize: 16.0,
                                                      decoration: TextDecoration
                                                          .underline),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.003,
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Text(
                                                  "05:30 min",
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.003,
                                        ),
                                        Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                // Text("hello world",
                                                //     style: TextStyle(
                                                //       color: Colors.black,
                                                //     )),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.50,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.009,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xffC4C4C4),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15)),
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                          height:
                                                              MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  0.050,
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.15,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xff00B0D7),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        50),
                                                          )),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(12, 2, 12, 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .020,
                            ),
                            paperText("Solutions:"),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .020,
                            ),
                            paperText("Part-1"),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .020,
                            ),
                            paperText(
                                "Write Short answers to any Five(5) questions"),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .009,
                            ),
                            paperText("Question-1:"),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .009,
                            ),
                            paperText("What is meant by chemical equilibrium?"),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .020,
                            ),
                            paperText("Answer:"),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .020,
                            ),
                            paperText(
                                "Chemical equilibrium, condition in the course of a reversible chemical reaction in which no net change in the amounts of reactants and products occurs. A reversible chemical reaction is one in which the products, as soon as they are formed, react to produce the original reactants."),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .020,
                            ),
                            paperText("Question-2:"),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .009,
                            ),
                            paperText(
                                "What is meant by irreversible reaction?"),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .020,
                            ),
                            paperText("Answer:"),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .020,
                            ),
                            paperText(
                                "A reversible reaction is a reaction in which the conversion of reactants to products and the conversion of products to reactants occur simultaneously"),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .020,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  paperText(String papertext) {
    return Container(
      child: Text(papertext,
          style: TextStyle(color: Colors.black, fontSize: 16.0)),
    );
  }
}
