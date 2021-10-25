import 'package:esooul/Screens/BottomNavBar/bottomNavBar.dart';
import 'package:esooul/Screens/Country%20Home/country_Navbar.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Report extends StatefulWidget {
  final int total;
  final int pass;
  final int fail;
  final int attemped;
  final int notAttemped;

  const Report(
      {required this.total,
      required this.pass,
      required this.fail,
      required this.attemped,
      required this.notAttemped});

  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            height: MediaQuery.of(context).size.height * 1,
            child: SingleChildScrollView(
              child: Column(children: [
                Header(
                  btntext: 'Report',
                ),
                Container(
                  // height: MediaQuery.of(context).size.height,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // color: Colors.blue,
                  ),
                  padding: EdgeInsets.all(5),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(30).copyWith(top: 2),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        .01,
                                  ),
                                  Text(
                                    "Good luck! Don't stress. You can totally ace it.",
                                    style: TextStyle(color: Colors.black),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20)
                              .copyWith(top: 0, bottom: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Report",
                                style: TextStyle(color: Color(0xff00B0D7)),
                              ),
                              Text(
                                "Recent Quiz attempted",
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          ),
                        ),
                        Divider(
                          color: Color(0xffECECEC),
                        ),
                        Container(
                          // color: Colors.blue,
                          width: MediaQuery.of(context).size.width * .9,
                          // height: MediaQuery.of(context).size.height * .44,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            // color: Colors.green,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                card(Icons.task_alt_outlined, 'Attempted',
                                    widget.attemped, widget.total, Colors.grey),
                                card(
                                    Icons.task_alt_outlined,
                                    'Correct answered',
                                    widget.pass,
                                    widget.total,
                                    Colors.green),
                                card(Icons.task_alt_outlined, 'Wrong answered',
                                    widget.fail, widget.total, Colors.red),
                                card(
                                    Icons
                                        .do_not_disturb_on_total_silence_outlined,
                                    'Not attempted',
                                    widget.notAttemped,
                                    widget.total,
                                    Colors.grey),
                                // Time View
                                // Container(
                                //   width: MediaQuery.of(context).size.width * .9,
                                //   height:
                                //       MediaQuery.of(context).size.height * .07,
                                //   // color: Colors.black,
                                //   padding: EdgeInsets.only(right: 95),
                                //   child: Row(
                                //     mainAxisAlignment:
                                //         MainAxisAlignment.spaceBetween,
                                //     children: [
                                //       Column(
                                //         mainAxisAlignment:
                                //             MainAxisAlignment.center,
                                //         children: [
                                //           Row(
                                //             children: [
                                //               Icon(Icons.access_time_outlined,
                                //                   size: 35,
                                //                   color: Color(0xff00B0D7)),
                                //               SizedBox(
                                //                 width: MediaQuery.of(context)
                                //                         .size
                                //                         .width *
                                //                     .04,
                                //               ),
                                //               Text(
                                //                 "Time",
                                //                 style: TextStyle(
                                //                     color: Color(0xff00B0D7)),
                                //               ),
                                //             ],
                                //           ),
                                //         ],
                                //       ),
                                //       Column(
                                //         mainAxisAlignment:
                                //             MainAxisAlignment.center,
                                //         children: [
                                //           Text(
                                //             "1 min",
                                //             style: TextStyle(
                                //                 color: Color(0xff00B0D7)),
                                //           ),
                                //         ],
                                //       ),
                                //     ],
                                //   ),
                                // ),
                                Divider(
                                  color: Color(0xffECECEC),
                                ),
                                card(
                                    Icons.bar_chart_outlined,
                                    'Marks',
                                    widget.pass,
                                    widget.total,
                                    Color(0xffCE9D00)),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
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
                                                  CountryNavBar()));
                                    },
                                    style: ElevatedButton.styleFrom(
                                      shadowColor: Colors.grey[200],

                                      padding: EdgeInsets.only(
                                          left: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .3,
                                          right:
                                              MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .3,
                                          top: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .015,
                                          bottom: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .015),
                                      primary: Color(0xff00B0D7),
                                      // side: BorderSide(width: 1, color: Colors.black),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                    ),
                                    child: Text("Go to Home")),
                              ),
                            ],
                          ),
                        ),
                      ]),
                )
              ]),
            )));
  }

  Widget card(icon, String title, int obtained, int total, final colortype) {
    double value = obtained / total;

    double number = value * 100;
    double percentage = double.parse((number).toStringAsFixed(1));
    return Container(
      // height: MediaQuery.of(context).size.height * .09,
      width: MediaQuery.of(context).size.width * .9,
      // margin: EdgeInsets.only(top: 140),
      decoration: BoxDecoration(
          // color: Colors.red,
          ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Icon(
                    icon,
                    color: colortype,
                    size: 35,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .04,
                  ),
                  Text(
                    "$title",
                    style: TextStyle(color: colortype),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    "$obtained/$total",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .08,
                  ),
                  CircularPercentIndicator(
                    radius: 65,
                    percent: value,
                    arcType: ArcType.HALF,
                    arcBackgroundColor: Colors.white,
                    lineWidth: 7,
                    progressColor: colortype,
                    animation: true,
                    center: Text(
                      "$percentage%",
                      style: TextStyle(fontSize: 12, color: colortype),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
