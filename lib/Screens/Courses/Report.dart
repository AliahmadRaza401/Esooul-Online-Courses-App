import 'package:esooul/Widgets/back_button.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Report extends StatefulWidget {
  const Report({Key? key}) : super(key: key);

  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Header(),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * .01,
                    right: MediaQuery.of(context).size.width * .01,
                  ),
                  height: MediaQuery.of(context).size.height * .74,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Colors.white,
                          Colors.black,
                        ],
                      ),
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                              MediaQuery.of(context).size.width * .08),
                          topRight: Radius.circular(
                              MediaQuery.of(context).size.width * .08))),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .003,
                    left: MediaQuery.of(context).size.width * .015,
                    right: MediaQuery.of(context).size.width * .015,
                  ),
                  height: MediaQuery.of(context).size.height * .74,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                              MediaQuery.of(context).size.width * .08),
                          topRight: Radius.circular(
                              MediaQuery.of(context).size.width * .08))),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .01,
                    left: MediaQuery.of(context).size.width * .03,
                    right: MediaQuery.of(context).size.width * .03,
                  ),
                  height: MediaQuery.of(context).size.height * .73,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  padding: EdgeInsets.all(5),
                  child: Column(
                    children: [
                      //BackButtonWidget(iconPath: 'assets/png/fvrt.png'),
                      Padding(
                        padding: const EdgeInsets.all(30),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hey John",
                                  style: TextStyle(
                                      color: Color(0xff00B0D7), fontSize: 20),
                                ),
                                Text(
                                  "Keep trying for better we belive in try again",
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
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                stacks(
                                  1,
                                  5,
                                  'assets/png/correct.PNG',
                                  'Correct answered',
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 85),
                                  child: stacks(
                                    2,
                                    10,
                                    'assets/png/correct.PNG',
                                    'Marks',
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 175),
                                  child: stacks(
                                    10,
                                    10,
                                    'assets/png/correct.PNG',
                                    'Attempted',
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(30),
                                  margin: EdgeInsets.only(top: 260),
                                  height:
                                      MediaQuery.of(context).size.height * .11,
                                  width:
                                      MediaQuery.of(context).size.width * .82,
                                  decoration: BoxDecoration(
                                    color: Color(0xff434343),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Icon(
                                                Icons.watch_later_outlined,
                                                size: 40,
                                              ),
                                              SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    .03,
                                              ),
                                              Text("Time")
                                            ],
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("1 min"),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.only(
                                    left:
                                        MediaQuery.of(context).size.width * .3,
                                    right:
                                        MediaQuery.of(context).size.width * .3,
                                    top: MediaQuery.of(context).size.height *
                                        .02,
                                    bottom: MediaQuery.of(context).size.height *
                                        .02),
                                primary: Color(0xff00B0D7),
                                side: BorderSide(width: 1, color: Colors.black),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                              child: Text("Next Topic"))
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget stacks(int obtained, int total, String img, String title) {
    double percent = obtained / total;
    double percentage = percent * 100;
    return Container(
      height: MediaQuery.of(context).size.height * .1,
      width: MediaQuery.of(context).size.width * .82,
      decoration: BoxDecoration(
        color: Color(0xff434343),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.elliptical(200, 400),
            bottomRight: Radius.elliptical(200, 400),
            topLeft: Radius.circular(MediaQuery.of(context).size.height * .07),
            topRight:
                Radius.circular(MediaQuery.of(context).size.height * .07)),
      ),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("$img"),
              Text("$title"),
              Text("$obtained/$total"),
              CircularPercentIndicator(
                radius: MediaQuery.of(context).size.height * .08,
                percent: percent,
                arcType: ArcType.HALF,
                arcBackgroundColor: Colors.white,
                lineWidth: 7,
                progressColor: Colors.green,
                animation: true,
                center: Text("$percentage%"),
              )
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .06,
            left: MediaQuery.of(context).size.width * .1,
            child: LinearPercentIndicator(
              width: MediaQuery.of(context).size.width * .5,
              percent: percent,
              progressColor: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}



















// Container(
//                 width: 70,
//                 height: 70,
//                 child: Stack(
//                   children: [
//                     ShaderMask(
//                         shaderCallback: (Rect) {
//                           return SweepGradient(
//                             colors: [Colors.blue,Colors.white, ],
//                             startAngle: 0.0,
//                             endAngle: 3.14 * 2,
//                             stops: [0.3, 0.5],
//                             center: Alignment.center,
//                           ).createShader(Rect);
//                         },
//                         child: Container(
//                           width: 70,
//                           height: 70,
//                           decoration: BoxDecoration(
//                               shape: BoxShape.circle, color: Colors.white),
//                         )),
//                     Center(
//                         child: Container(
//                       height: 70,
//                       width: 50,
//                       decoration: BoxDecoration(
//                        color: Colors.white, shape: BoxShape.circle),
//                    child: Center(child: Text("$pecentage %",style: TextStyle(color: Colors.black,),)),
//                     ))
//                   ],
//                 ),
//               )