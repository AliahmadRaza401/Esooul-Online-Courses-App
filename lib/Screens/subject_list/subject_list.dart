import 'package:esooul/Screens/paper_categorey/paper_categorey.dart';
import 'package:esooul/Screens/subject_list/subject_list_provider.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:esooul/Widgets/header2.dart';
import 'package:esooul/Widgets/loading_animation.dart';
import 'package:esooul/Widgets/noData_msg.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SubjectList extends StatefulWidget {
  var gradeID;
  SubjectList({Key? key, @required this.gradeID}) : super(key: key);

  @override
  _SubjectListState createState() => _SubjectListState();
}

class _SubjectListState extends State<SubjectList> {
  var result;
  bool _loader = true;
  late SubjectListProvider _subjectListProvider;

  @override
  void initState() {
    super.initState();
    _subjectListProvider =
        Provider.of<SubjectListProvider>(context, listen: false);
    getSubjectList();
  }

  getSubjectList() async {
    result = await _subjectListProvider.getsubjectList(widget.gradeID);
    setState(() {
      _loader = false;
    });
    print('SubjectList: $result');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(children: [
          Header(btntext: "Subjects"),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Select Subject",
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
                        : _subjectListProvider.courseListData.isEmpty
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
                                        return _myContainer(result[i].title);
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

  _myContainer(
    String grade,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PaperCategorey()),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
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
