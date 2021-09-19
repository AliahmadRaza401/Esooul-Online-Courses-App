import 'package:esooul/Screens/Authentication/signUp/signUp_provider.dart';
import 'package:esooul/Screens/past_subjective_paper/past_subjective_provider.dart';
import 'package:esooul/Screens/yearly_papers/yearly_paper_provider.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:esooul/Widgets/header2.dart';
import 'package:esooul/Widgets/loading_animation.dart';
import 'package:esooul/Widgets/noData_msg.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PaperAnswerVideo extends StatefulWidget {
  PaperAnswerVideo({Key? key}) : super(key: key);

  @override
  _PaperAnswerVideoState createState() => _PaperAnswerVideoState();
}

class _PaperAnswerVideoState extends State<PaperAnswerVideo> {
  late PastSubjectiveProvider _pastSubjectiveProvider;
  late YearlyPaperProvider _yearlyPaperProvider;
  var paperID;
  var result;
  bool _loader = true;
  @override
  void initState() {
    super.initState();
    _pastSubjectiveProvider = Provider.of(context, listen: false);
    _yearlyPaperProvider = Provider.of(context, listen: false);
    paperID = _yearlyPaperProvider.yearlyPaperID;
    getData();
  }

  getData() async {
      var token = await Provider.of<SignUpProvider>(context, listen: false)
          .getUserTokenSF();
    result = await _pastSubjectiveProvider.pastSubjective(token,paperID);
    setState(() {
      _loader = false;
    });
    print('Subjective result: $result');
    print(
        "------------------------------------------------ ${result[0].paper_id}");
  }

  snackBar(String message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        duration: Duration(seconds: 2),
      ),
    );
  }

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
                      GestureDetector(
                        onTap: () {
                          snackBar("Comming Soon...");
                        },
                        child: Container(
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
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
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
                                                        decoration:
                                                            TextDecoration
                                                                .underline),
                                                  ),
                                                  Text(
                                                    " video link",
                                                    style: TextStyle(
                                                        color: Colors.blue,
                                                        fontSize: 16.0,
                                                        decoration:
                                                            TextDecoration
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
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.50,
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.009,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Color(0xffC4C4C4),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15)),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                            height: MediaQuery
                                                                        .of(
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
                            _loader == true
                                ? LoadingBounceAnimation(context)
                                : _pastSubjectiveProvider
                                        .pastSubjectiveData.isEmpty
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
                                                return Container(
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          paperText(
                                                              "Question-:${i + 1}"),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            .005,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          paperText(result[i]
                                                                      .paper_id ==
                                                                  null
                                                              ? ""
                                                              : result[i]
                                                                  .paper_id),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            .010,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          paperText("Answer:"),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            .005,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          paperText(result[i]
                                                                      .description ==
                                                                  null
                                                              ? ""
                                                              : result[i]
                                                                  .description),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            .020,
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              })
                                        ],
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
