import 'package:esooul/Screens/grade_list/grade_list_provider.dart';
import 'package:esooul/Screens/subject_list/subject_list.dart';
import 'package:esooul/Screens/subject_list/subject_list_provider.dart';
import 'package:esooul/Widgets/header.dart';

import 'package:esooul/Widgets/header2.dart';
import 'package:esooul/Widgets/loading_animation.dart';
import 'package:esooul/Widgets/noData_msg.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GradeList extends StatefulWidget {
  var educationalBoardsId;
  GradeList({Key? key, @required this.educationalBoardsId}) : super(key: key);

  @override
  _GradeListState createState() => _GradeListState();
}

class _GradeListState extends State<GradeList> {
  late GradeListProvider _gradeListProvider;
  var result;
  bool _loader = true;

  @override
  void initState() {
    super.initState();

    _gradeListProvider = Provider.of<GradeListProvider>(context, listen: false);
    getGradeList();
  }

  getGradeList() async {
    result = await _gradeListProvider.getGradeList(widget.educationalBoardsId);
    setState(() {
      _loader = false;
    });
    print('gradesList: $result');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(children: [
          Header(
            btntext: 'Grades',
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Select Your Grade",
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
                        : _gradeListProvider.gradeListData.isEmpty
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
                                        return _myContainer(
                                            result[i].title, result[i].id);
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
    );
  }

  _myContainer(String grade, gradeID) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => SubjectList(
                    gradeID: gradeID,
                  )),
        );
        _gradeListProvider.selectedGradeID = gradeID;
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
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
            Container(
              height: MediaQuery.of(context).size.height * 0.050,
              width: MediaQuery.of(context).size.width * 0.035,
              decoration: BoxDecoration(
                color: Color(0xff00B0D7),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.20,
            ),
            Text(
              grade,
              style: TextStyle(color: Colors.black, fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
