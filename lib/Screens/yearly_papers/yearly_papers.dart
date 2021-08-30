import 'package:esooul/Screens/Paper/topic_list.dart';
import 'package:esooul/Screens/Topics/Topics.dart';
import 'package:esooul/Screens/paper_categorey/paper_categorey_provider.dart';
import 'package:esooul/Screens/past_subjective_paper/subjective_paper.dart';
import 'package:esooul/Screens/subject_list/subject_list_provider.dart';
import 'package:esooul/Screens/yearly_papers/yearly_paper_provider.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:esooul/Widgets/loading_animation.dart';
import 'package:esooul/Widgets/noData_msg.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class YearlyPaper extends StatefulWidget {
  final year;
  const YearlyPaper({Key? key, @required this.year}) : super(key: key);

  @override
  _YearlyPaperState createState() => _YearlyPaperState();
}

class _YearlyPaperState extends State<YearlyPaper> {
  bool show = false;
  late YearlyPaperProvider _yearlyPaperProvider;
  late PaperCategoreyProvider _paperCategoreyProvider;
  late SubjectListProvider _subjectListProvider;
  var result;
  bool _loader = true;
  var paperType;
  var year;
  var courseID;

  @override
  void initState() {
    super.initState();
    _yearlyPaperProvider = Provider.of(context, listen: false);
    _paperCategoreyProvider = Provider.of(context, listen: false);
    _subjectListProvider = Provider.of(context, listen: false);
    paperType = _paperCategoreyProvider.paperType;
    courseID = _subjectListProvider.selectedcourse;
    yearlyPapaer();
  }

  yearlyPapaer() async {
    result = await _yearlyPaperProvider.yearlyPaperList(
        paperType, courseID, widget.year);
    print('result data yaeafdsfasd: $result');
    setState(() {
      _loader = false;
    });
  }

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
                          "Select paper from ${widget.year}",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.010,
                        ),
                        _loader == true
                            ? LoadingBounceAnimation(context)
                            : _yearlyPaperProvider.yearlyPaperData.isEmpty
                                ? noDataMsg(context)
                                : ListView(
                                    shrinkWrap: true,
                                    physics: ClampingScrollPhysics(),
                                    children: [
                                      ListView.builder(
                                          shrinkWrap: true,
                                          physics: ClampingScrollPhysics(),
                                          itemCount: result.length == null
                                              ? 0
                                              : result.length,
                                          itemBuilder: (context, i) {
                                            return _yearPapers(
                                                context,
                                                result[i].course,
                                                result[i].image,
                                                result[i].id);
                                          })
                                    ],
                                  ),
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
                        _yearlyPaperProvider.questionType = "objective";
                      },
                      child: papertype(context, 'assets/png/Objective.png',
                          'Objective', 'Online MCQs', Color(0xff004E8F))),
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => StackOver()));
                        _yearlyPaperProvider.questionType = "subjective";
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

  _yearPapers(BuildContext context, String grade, String img, yearlyPaperID) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              show = !show;
              _yearlyPaperProvider.yearlyPaperID = yearlyPaperID;
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
                  Image.network("$img"),
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
