import 'package:esooul/Screens/Authentication/signUp/signUp_provider.dart';
import 'package:esooul/Screens/card/card_provider.dart';
import 'package:esooul/Screens/past_objective/past_obj_instruction.dart';
import 'package:esooul/Screens/paper_categorey/paper_categorey_provider.dart';
import 'package:esooul/Screens/past_subjective_paper/subjective_paper.dart';
import 'package:esooul/Screens/subject_list/subject_list_provider.dart';
import 'package:esooul/Screens/yearly_papers/yearly_paper_provider.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:esooul/Widgets/loading_animation.dart';
import 'package:esooul/Widgets/noData_msg.dart';
import 'package:esooul/modeles/course_card_item_model.dart';
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
  late CardProvider _cardProvider;
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
    _cardProvider = Provider.of(context, listen: false);
    paperType = _paperCategoreyProvider.paperType;
    courseID = _subjectListProvider.selectedcourse;
    yearlyPapaer();
  }

  yearlyPapaer() async {
    var token = await Provider.of<SignUpProvider>(context, listen: false)
        .getUserTokenSF();
    result = await _yearlyPaperProvider.yearlyPaperList(
        token, paperType, courseID, widget.year);
    print('widget.year): ${widget.year})');
    print('courseID: $courseID');
    print('paperType: $paperType');
    print('result data all: $result');
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
                                            return result[i].payment_status == 0
                                                ? _yearPapers(
                                                    context,
                                                    result[i].title,
                                                    result[i].image,
                                                    result[i].id)
                                                : _lockPapers(
                                                    context,
                                                    result[i].title,
                                                    result[i].image,
                                                    result[i].id, () {
                                                    _cardProvider.addToCardCourses(
                                                        item: CourseCardItemModel(
                                                            result[i].id,
                                                            result[i].title,
                                                            result[i].course,
                                                            result[i].image,
                                                            result[i].year,
                                                            result[i].price,
                                                            result[i].discount,
                                                            result[i]
                                                                .payment_status,
                                                            false));
                                                  });
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
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PastObjectiveInstruction()));
                        _yearlyPaperProvider.questionType = "objective";
                      },
                      child: papertype(context, 'assets/png/Objective.png',
                          'Objective', 'Online MCQs', Color(0xff004E8F))),
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PastSubjective()));
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
              height: MediaQuery.of(context).size.height * 0.12,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
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
                  Container(
                    height: MediaQuery.of(context).size.height * .1,
                    width: MediaQuery.of(context).size.width * .2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        // color: Colors.amber,
                        image: DecorationImage(
                            image: NetworkImage("$img"), fit: BoxFit.fill)),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Wrap(
                      children: [
                        Text(
                          grade,
                          style: TextStyle(color: Colors.black, fontSize: 18.0),
                        ),
                      ],
                    ),
                  )
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

  _lockPapers(BuildContext context, String title, String img, yearlyPaperID,
      addtoCard()) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            padding: EdgeInsets.only(left: 10),
            height: MediaQuery.of(context).size.height * 0.12,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 0.5,
                    blurRadius: 2,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                shape: BoxShape.rectangle),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .1,
                  width: MediaQuery.of(context).size.width * .2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      // color: Colors.amber,
                      image: DecorationImage(
                          image: NetworkImage("$img"), fit: BoxFit.fill)),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Wrap(
                    children: [
                      Text(
                        title,
                        style: TextStyle(color: Colors.black, fontSize: 18.0),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            padding: EdgeInsets.only(left: 10),
            height: MediaQuery.of(context).size.height * 0.12,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[400]!.withOpacity(0.9),
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.black.withOpacity(0.3),
                //     spreadRadius: 2,
                //     blurRadius: 7,
                //     offset: Offset(0, 3), // changes position of shadow
                //   ),
                // ],
                shape: BoxShape.rectangle),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.lock,
                  color: Colors.red,
                  size: MediaQuery.of(context).size.height * 0.05,
                ),
                GestureDetector(
                  onTap: () {
                    addtoCard();
                    print(
                        '_cardProvider.courseCardItem: ${_cardProvider.courseCardItem}');
                  },
                  child: Text(
                    "Add To Card",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
