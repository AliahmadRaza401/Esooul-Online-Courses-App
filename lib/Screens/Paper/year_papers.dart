import 'package:esooul/Screens/Paper/topic_list.dart';
import 'package:esooul/Screens/Topics/Topics.dart';
import 'package:esooul/Screens/subjective_paper/subjective_paper.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';

class YearPaperSelection extends StatefulWidget {
  const YearPaperSelection({Key? key}) : super(key: key);

  @override
  _YearPaperSelectionState createState() => _YearPaperSelectionState();
}

class _YearPaperSelectionState extends State<YearPaperSelection> {
  bool show = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            child: Column(children: [
              Header(
                btntext: 'Paper',
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Select paper from 2017",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.010,
                        ),
                        _yearPapers(context, 'Maths-Paper-01',
                            'assets/png/yearpaper.png'),
                        _yearPapers(context, 'Maths-Paper-02',
                            'assets/png/yearpaper.png'),
                        _yearPapers(context, 'Maths-Paper-03',
                            'assets/png/yearpaper.png'),
                        _yearPapers(context, 'Maths-Paper-04',
                            'assets/png/yearpaper.png'),
                      ],
                    ),
                  ),
                ),
              )
            ]),
          ),
          Visibility(
            visible: show,
            child: Container(
              color: Colors.white.withOpacity(.5),
              height: double.infinity,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: 150),
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Topics()));
                      },
                      child: papertype(context, 'assets/png/Objective.png',
                          'Objective', 'Online MCQs', Color(0xff004E8F))),
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SubjectivePaper()));
                      },
                      child: papertype(context, 'assets/png/Subjective.png',
                          "Subjective", "Readable pdf", Color(0xff72C6EF))),
                  SizedBox(height: 150),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  _yearPapers(BuildContext context, String grade, String img) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              show = !show;
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.only(left: 10),
              height: MediaQuery.of(context).size.height * 0.075,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  shape: BoxShape.rectangle),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("$img"),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Text(
                    grade,
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget papertype(
      BuildContext context, String icon, String title, String desc, color) {
    return Center(
      child: Container(
          width: MediaQuery.of(context).size.width * .8,
          height: MediaQuery.of(context).size.height * .21,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    spreadRadius: 1,
                    color: Colors.grey,
                    offset: Offset(2, 3))
              ],
              color: Colors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: color,
                ),
                width: MediaQuery.of(context).size.width * .75,
                height: MediaQuery.of(context).size.height * .18,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10, top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                              onTap: () {
                                setState(() {
                                  show = !show;
                                });
                              },
                              child: Icon(
                                Icons.close,
                                size: 35,
                              ))
                        ],
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // SizedBox(width:MediaQuery.of(context).size.width*.07),
                        Column(
                          children: [
                            Image.asset(
                              "$icon",
                              height: MediaQuery.of(context).size.height * .1,
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "$title",
                              style: TextStyle(fontSize: 25),
                            ),
                            Text("$desc", style: TextStyle(fontSize: 15))
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
