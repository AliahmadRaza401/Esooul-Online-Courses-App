import 'package:esooul/Screens/Authentication/signUp/signUp_provider.dart';
import 'package:esooul/Screens/Topics/topic_provider.dart';
import 'package:esooul/Screens/custom_objective/custom_objective_instruction.dart';
import 'package:esooul/Screens/custom_subjective/custom_subjective.dart';
import 'package:esooul/Screens/past_objective/past_obj_instruction.dart';
import 'package:esooul/Screens/past_subjective_paper/subjective_paper.dart';
import 'package:esooul/Screens/subject_list/subject_list_provider.dart';
import 'package:esooul/Widgets/back_button.dart';
import 'package:esooul/Widgets/dialog.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:esooul/Widgets/loading_animation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TopicList extends StatefulWidget {
  var courseID;
  TopicList({Key? key, @required this.courseID}) : super(key: key);

  @override
  _TopicListState createState() => _TopicListState();
}

class _TopicListState extends State<TopicList> {
  late SubjectListProvider _subjectListProvider;
  late TopicProvider _topicProvider;

  var courseID;
  var topiclist = [];
  var selectedTopicList = [];
  bool loading = true;
  bool show = false;

  @override
  void initState() {
    super.initState();
    _topicProvider = Provider.of(context, listen: false);
    _subjectListProvider = Provider.of(context, listen: false);
    courseID = _subjectListProvider.selectedcourse;
    _topicProvider.selectedTopicID.clear();
    getTopics();
  }

  getTopics() async {
      var token = await Provider.of<SignUpProvider>(context, listen: false)
          .getUserTokenSF();
    topiclist = await _topicProvider.topicGet(token,widget.courseID);
    print('topicList: ${topiclist}');
    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            topicBody(),
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
                              builder: (context) =>
                                  CustomObjectiveInstruction()));
                          _topicProvider.questionType = "objective";
                        },
                        child: papertype(context, 'assets/png/Objective.png',
                            'Objective', 'Online MCQs', Color(0xff004E8F))),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CustomSubjective()));
                          _topicProvider.questionType = "subjective";
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
      ),
    );
  }

  Widget topicBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Header(
          btntext: 'Topic',
        ),
        Container(
          padding: EdgeInsets.fromLTRB(
              MediaQuery.of(context).size.width * 0.04,
              MediaQuery.of(context).size.height * 0.010,
              MediaQuery.of(context).size.width * 0.04,
              0),
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      selectedTopicList.clear();
                    });
                  },
                  child: Text(
                    "Remove All",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.w600),
                  ))
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.fromLTRB(
                  MediaQuery.of(context).size.width * 0.04,
                  MediaQuery.of(context).size.height * 0.009,
                  MediaQuery.of(context).size.width * 0.04,
                  0),
              child: loading == false
                  ? selectedTopicList.length == 0
                      ? Center(
                          child: Text(
                            "Tap to add Topics",
                            style: TextStyle(color: Colors.black),
                          ),
                        )
                      : ListView(
                          shrinkWrap: true,
                          physics: ClampingScrollPhysics(),
                          children: [
                            ListView.builder(
                              shrinkWrap: true,
                              physics: ClampingScrollPhysics(),
                              itemCount: selectedTopicList.length == null
                                  ? 0
                                  : selectedTopicList.length,
                              itemBuilder: (context, i) {
                                return _SelectedTopic(
                                    selectedTopicList == null
                                        ? ""
                                        : selectedTopicList[i],
                                    i % 2 == 0
                                        ? Color(0xff61B4E0)
                                        : Color(0xff2878B0),
                                    selectedTopicList[i]);
                              },
                            ),
                          ],
                        )
                  : Center(
                      child: Text(
                        "Tap to add Topics",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(
              MediaQuery.of(context).size.width * 0.03,
              MediaQuery.of(context).size.height * 0.010,
              0,
              MediaQuery.of(context).size.height * 0.01),
          child: Text(
            "Topic List",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.fromLTRB(
                  MediaQuery.of(context).size.width * 0.04,
                  MediaQuery.of(context).size.height * 0.009,
                  MediaQuery.of(context).size.width * 0.04,
                  0),
              child: loading == false
                  ? ListView(
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      children: [
                        ListView.builder(
                          shrinkWrap: true,
                          physics: ClampingScrollPhysics(),
                          itemCount:
                              topiclist.length == null ? 0 : topiclist.length,
                          itemBuilder: (context, i) {
                            return _topic(
                                topiclist[i].title == null
                                    ? ""
                                    : topiclist[i].title,
                                i % 2 == 0
                                    ? Color(0xff61B4E0)
                                    : Color(0xff2878B0),
                                topiclist[i].title,
                                topiclist[i].id);
                          },
                        ),
                      ],
                    )
                  : LoadingBounceAnimation(context),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.030,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.width * 0.03,
                0,
                MediaQuery.of(context).size.width * 0.03,
                MediaQuery.of(context).size.height * 0.02),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(double.infinity,
                      MediaQuery.of(context).size.height * 0.050),
                  primary: selectedTopicList.length == 0
                      ? Color(0xffD4D4D4)
                      : Color(0xff00B0D7), //background color of button
                  //border width and color
                  elevation: 3, //elevation of button
                  shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(15)),
                ),
                child: Text(
                  'Generate paper',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  setState(() {
                    show = !show;
                  });
                },
              ),
            ),
          ),
        ),
      ],
    );
  }

  _topic(String no, Color color, selectTopic, topicID) {
    return Container(
      margin:
          EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.009),
      height: MediaQuery.of(context).size.height * 0.050,
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Topic $no",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
            IconButton(
              icon: const Icon(
                Icons.add_rounded,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                setState(() {
                  if (selectedTopicList.contains(selectTopic)) {
                    CommomWidget().okayAlertDialog(
                      context,
                      "Doublicate",
                      "Topic already exist",
                    );
                  } else {
                    selectedTopicList.add(selectTopic);
                    print("selected : ${selectedTopicList}");
                    _topicProvider.selectedTopicID.add(topicID);
                    print('selectedTopicID: ${_topicProvider.selectedTopicID}');
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  _SelectedTopic(String no, Color color, selectTopic) {
    return Container(
      margin:
          EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.009),
      height: MediaQuery.of(context).size.height * 0.050,
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Topic $no",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
            IconButton(
              icon: const Icon(
                Icons.remove,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                setState(() {
                  selectedTopicList.remove(selectTopic);
                  print(selectTopic);
                });
              },
            ),
          ],
        ),
      ),
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
