import 'package:esooul/Screens/Paper/select_grade.dart';
import 'package:esooul/Screens/Paper/select_paper.dart';
import 'package:esooul/Widgets/header.dart';

import 'package:esooul/Widgets/header2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Courses extends StatefulWidget {
  Courses({Key? key}) : super(key: key);

  @override
  _CoursesState createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xff2F2F2F),
          child: ListView(children: [
            Header(),
            Container(
              padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * .0,
                left: MediaQuery.of(context).size.width * .01,
                right: MediaQuery.of(context).size.width * .01,
              ),
              height: MediaQuery.of(context).size.height * .9,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 5),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                          MediaQuery.of(context).size.width * .08),
                      topRight: Radius.circular(
                          MediaQuery.of(context).size.width * .08))),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Select a Course",
                      style: TextStyle(fontWeight: FontWeight.w100),
                    ),
                    _courseContainer(),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SelectPaper()),
                          );
                        },
                        child: Text("Select paper"))
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  _courseContainer() {
    return Container(
      padding: EdgeInsets.all(5.0),
      height: MediaQuery.of(context).size.height * 0.18,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xff3D3D3D),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          //1st Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/png/candageography.png",
                    height: MediaQuery.of(context).size.height * 0.080,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Issues in Canadian Geography"),
                  Text(
                    "Ponum Ghazzanfar",
                    style: TextStyle(color: Color(0xffFFD643)),
                  ),
                  Row(
                    children: [
                      Text("Category-History"),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.020,
                      ),
                      Text(
                        "PKR 1000",
                        style: TextStyle(color: Color(0xff00B0D7)),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.015,
                      ),
                      Text(
                        "PKR 1500",
                        style: TextStyle(
                            color: Color(0xff949494),
                            decoration: TextDecoration.lineThrough),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          //2nd row
          // Row(
          //   children: <Widget>[
          //     Container(
          //       width: double.infinity,
          //       height: MediaQuery.of(context).size.height * 0.20,
          //       decoration: BoxDecoration(
          //         color: Color(0xff646464),
          //         borderRadius: BorderRadius.circular(30),
          //       ),
          //       child: Row(
          //         children: <Widget>[
          //           Column(
          //             children: <Widget>[
          //               Container(
          //                 decoration: BoxDecoration(
          //                   shape: BoxShape.circle,
          //                   color: Color(0xff464646),
          //                 ),
          //                 child: Center(
          //                   child: Text("01"),
          //                 ),
          //               ),
          //             ],
          //           )
          //         ],
          //       ),
          //     ),
          //   ],
          // )
        ],
      ),
    );
  }
}
