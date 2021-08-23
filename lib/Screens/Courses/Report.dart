import 'package:esooul/Widgets/back_button.dart';
import 'package:esooul/Widgets/header.dart';
import 'dart:ffi';
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
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Header(),
            Container(
                height: MediaQuery.of(context).size.height * .7,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
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
                      padding:
                          const EdgeInsets.all(20).copyWith(top: 0, bottom: 0),
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
                      padding: const EdgeInsets.only(left: 80),
                      child: Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width *.9,

                          child: Stack(
                            
                            children: [
                              Container(
                                  margin: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *.085),
                                  child: triangel(1, 5, 'Accepted')),
                              Container(
                                  margin: EdgeInsets.only(
                                    left: MediaQuery.of(context).size.width *.17
                                    ),
                                  child: triangel2(2, 5, "Correct Answered")),
                              Container(
                                  margin: EdgeInsets.only(
                                  left: MediaQuery.of(context).size.width *.38, 
                                  top: MediaQuery.of(context).size.height *.085
                                  ),
                                  child: triangel3(10, 10, 'Marks'))
                            ],
                          ),
                       ),
                      ),
                ),
                Row(children: [
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
                              // side: BorderSide(width: 1, color: Colors.black),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                            child: Text("Next Topic")),
                      ],)          
            ]
            ),
        )])));
  }

  Widget triangel(int obtained, int total, String title) {
    double value = obtained / total;
    double percentage = value * 100;
    return Container(
      height: MediaQuery.of(context).size.height * .13,
      width: MediaQuery.of(context).size.width * .29,
      // margin: EdgeInsets.only(top: 140),
      decoration: BoxDecoration(
        // color: Colors.black,
          image:
              DecorationImage(image: AssetImage("assets/png/Polygon 2.png")
              ,fit: BoxFit.cover)
              
              ),
      child: Stack(
        children: [
          Positioned(
              top: MediaQuery.of(context).size.height * .025,
              left: MediaQuery.of(context).size.width * .08,
              child: CircularPercentIndicator(
                radius: 55,
                percent: value,
                arcType: ArcType.HALF,
                arcBackgroundColor: Colors.white,
                lineWidth: 7,
                progressColor: Colors.green,
                animation: true,
                center: Text(
                  "$percentage%",
                  style: TextStyle(fontSize: 12),
                ),
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * .09,
              left: MediaQuery.of(context).size.width * .02,
              child: Image.asset("assets/png/accepted.png")),
          Positioned(
               top: MediaQuery.of(context).size.height * .095,
              left: MediaQuery.of(context).size.width * .1,
              child: Text("$title")),
          Positioned(
              top: MediaQuery.of(context).size.height * .07,
              left: MediaQuery.of(context).size.width * .13,
              child: Text("$obtained/$total")),
        ],
      ),
    );
  }

  Widget triangel2(int obtained, int total, String title) {
    double value = obtained / total;
    double percentage = value * 100;
    return Container(
       height: MediaQuery.of(context).size.height * .18,
      width: MediaQuery.of(context).size.width * .35,
      // margin: EdgeInsets.only(top: 140),
      decoration: BoxDecoration(
        // color: Colors.black,
          image:
              DecorationImage(image: AssetImage("assets/png/triangle2.png")
               ,fit: BoxFit.cover
              )),
      child: Stack(
        children: [
          Positioned(
              top: MediaQuery.of(context).size.height * .1,
              left: MediaQuery.of(context).size.width * .105,
              child: CircularPercentIndicator(
                radius: 50,
                percent: value,
                arcType: ArcType.HALF,
                arcBackgroundColor: Colors.white,
                lineWidth: 7,
                progressColor: Colors.green,
                animation: true,
                center: Text(
                  "$percentage%",
                  style: TextStyle(fontSize: 12),
                ),
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * .055,
              left: MediaQuery.of(context).size.width * .04,
              child: Image.asset("assets/png/check-circle.png")),
          Positioned(
              top: MediaQuery.of(context).size.height * .05,
              left: MediaQuery.of(context).size.width * .1,
              child: Container(
                  width: MediaQuery.of(context).size.height * .09,
                  child: Text(
                    "$title",
                    style: TextStyle(fontSize: 9),
                  ))),
          Positioned(
              top: MediaQuery.of(context).size.height * .05,
              left: MediaQuery.of(context).size.width * .215,
              child: Text("$obtained/$total",style: TextStyle(fontSize: 10),)),
        ],
      ),
    );
  }

  Widget triangel3(int obtained, int total, String title) {
    double value = obtained / total;
    double percentage = value * 100;
    return Container(
     height: MediaQuery.of(context).size.height * .13,
      width: MediaQuery.of(context).size.width * .29,
      // margin: EdgeInsets.only(top: 140),
      decoration: BoxDecoration(
        // color: Colors.black,
          image:
              DecorationImage(image: AssetImage("assets/png/Polygon 2.png")
               ,fit: BoxFit.cover
              )),
      child: Stack(
        children: [
          Positioned(
             top: MediaQuery.of(context).size.height * .025,
              left: MediaQuery.of(context).size.width * .08,
              child: CircularPercentIndicator(
                radius: 55,
                percent: value,
                arcType: ArcType.HALF,
                arcBackgroundColor: Colors.white,
                lineWidth: 7,
                progressColor: Colors.green,
                animation: true,
                center: Text(
                  "$percentage%",
                  style: TextStyle(fontSize: 12),
                ),
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * .09,
              left: MediaQuery.of(context).size.width * .02,
              child: Image.asset("assets/png/graph.png")),
          Positioned(
              top: MediaQuery.of(context).size.height * .095,
              left: MediaQuery.of(context).size.width * .1,
              child: Text("$title")),
          Positioned(
               top: MediaQuery.of(context).size.height * .07,
              left: MediaQuery.of(context).size.width * .13,
              child: Text("$obtained/$total")),
        ],
      ),
    );
  }
}
