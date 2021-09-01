import 'dart:ui';
import 'package:esooul/Screens/Topics/topic_list.dart';
import 'package:esooul/Screens/paper_categorey/paper_categorey_provider.dart';
import 'package:esooul/Screens/subject_list/subject_list_provider.dart';
import 'package:esooul/Screens/yearly_papers/yearly_papers.dart';

import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:provider/provider.dart';

class PaperCategorey extends StatefulWidget {
  PaperCategorey({Key? key}) : super(key: key);

  @override
  _PaperCategoreyState createState() => _PaperCategoreyState();
}

class _PaperCategoreyState extends State<PaperCategorey> {
  late PaperCategoreyProvider _paperCategoreyProvider;
  late SubjectListProvider _subjectListProvider;

  bool _show = false;
  bool _yearLoading = true;
  var courseID;
  var pastPaperYearsList = [];

  @override
  void initState() {
    super.initState();
    _paperCategoreyProvider = Provider.of(context, listen: false);
    _subjectListProvider = Provider.of(context, listen: false);
    courseID = _subjectListProvider.selectedcourse;
    getYears();
  }

  getYears() async {
    pastPaperYearsList = await _paperCategoreyProvider.pastPaperYear(courseID);
    print('pastPaperYearsList: ${pastPaperYearsList}');
    print(pastPaperYearsList[0].past_papers_years);
    setState(() {
      _yearLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Container(
              // color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Header(
                    btntext: 'Paper',
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _show = !_show;
                        _paperCategoreyProvider.paperType = "past";
                      });
                    },
                    child: papercard(
                      context,
                      'assets/png/calender.png',
                      'Past Papers',
                      'Download and attempt',
                      'Yearly Papers',
                      Color(0xff72C6EF),
                      Color(0xff25AE95),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => TopicList()));
                      _paperCategoreyProvider.paperType = "custom";
                    },
                    child: papercard(
                      context,
                      'assets/png/editgoroup.png',
                      'Custom Papers',
                      'Enter topics and generate',
                      'Your own Papers',
                      Color(0xff2575AE),
                      Color(0xff72C6EF),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .06,
                  )
                ],
              ),
            ),
            _show == true ? selectYear(context) : Text(""),
          ],
        ),
      ),
    );
  }

  Widget selectYear(BuildContext context) {
    DateTime currentdate = new DateTime.now();
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.white.withOpacity(.5),
      child: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * .65,
          width: MediaQuery.of(context).size.width * .9,
          decoration: BoxDecoration(
            // boxShadow: [
            //   BoxShadow(color: Colors.grey, spreadRadius: 70, blurRadius: 200)
            // ],
            gradient: LinearGradient(colors: [
              Color(0xff72C6EF),
              Color(0xff004E8F),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(30),
          ),
          padding: EdgeInsets.all(30).copyWith(left: 5, right: 5),
          child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Select year",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .25,
                    ),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            _show = false;
                          });
                        },
                        child: Icon(
                          Icons.close,
                          size: 30,
                        ))
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .015),
                _yearLoading == false
                    ? Container(
                        padding: EdgeInsets.only(bottom: 10),
                        width: MediaQuery.of(context).size.width * .82,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: SingleChildScrollView(
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  // scrollDirection:Axis.horizontal ,
                                  itemCount: pastPaperYearsList == null
                                      ? 0
                                      : pastPaperYearsList.length,
                                  itemBuilder: (context, i) {
                                    return yearTile(
                                        context,
                                        pastPaperYearsList[i]
                                                    .past_papers_years ==
                                                null
                                            ? ""
                                            : pastPaperYearsList[i]
                                                .past_papers_years,
                                        pastPaperYearsList[i]
                                            .past_papers_years);
                                  })),
                        ),
                      )
                    : CircularProgressIndicator(
                        color: Colors.white,
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget yearTile(BuildContext context, year, selectedYear) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => YearlyPaper(
                  year: selectedYear,
                )));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.07),
                ),
                height: MediaQuery.of(context).size.height * .05,
                width: MediaQuery.of(context).size.width * .82,
                child: Center(
                    child: Text(
                  year,
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ))),
          )
        ],
      ),
    );
  }
}

Widget papercard(BuildContext context, String icon, String title, String desc,
    String papers, final color1, final color2) {
  return Stack(
    children: [
      Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurRadius: 5,
                  spreadRadius: 5,
                  color: Color(0xffD7E0E4),
                  offset: Offset(2, 2))
            ],
            gradient: new LinearGradient(
              colors: [
                color1,
                color2,
              ],
              // stops: [0.0, 1.0],
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight,
            ),
            borderRadius: BorderRadius.circular(70)),
        width: MediaQuery.of(context).size.width * .9,
        height: MediaQuery.of(context).size.height * .3,
      ),
      Container(
        margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * .015,
            left: MediaQuery.of(context).size.width * .025),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white.withOpacity(.3)),
            image: DecorationImage(
                image: AssetImage('assets/png/backgroundpapers.png'),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(70)),
        width: MediaQuery.of(context).size.width * .85,
        height: MediaQuery.of(context).size.height * .27,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          // crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Image.asset("$icon"),
            Text(
              "$title",
              style: TextStyle(fontSize: 25),
            ),
            Text("$desc"),
            Text("$papers")
          ],
        ),
      ),
    ],
  );
}
