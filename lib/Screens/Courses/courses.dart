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
          color: Color(0xFFF0F0F0),
          child: Column(children: [
            Header(
              btntext: 'Courses',
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Courses",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.black),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.010,
                      ),
                      _courseContainer(
                          "assets/png/candageography (2).png",
                          "Issues in Canadian Geography",
                          "Ponum Ghazzanfar",
                          "History",
                          "2K",
                          "12 jan 2021"),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.018,
                      ),
                      _courseContainer(
                          "assets/png/book.png",
                          "Issues in Canadian Geography",
                          "Ponum Ghazzanfar",
                          "History",
                          "2K",
                          "12 jan 2021"),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.018,
                      ),
                      _courseContainer(
                          "assets/png/laptop.png",
                          "Issues in Canadian Geography",
                          "Ponum Ghazzanfar",
                          "History",
                          "2K",
                          "12 jan 2021"),
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  _courseContainer(String imgPath, String subject, String author,
      String catergory, String likes, String date) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SelectPaper()),
        );
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(1, 8.0, 1, 8.0),
        height: MediaQuery.of(context).size.height * 0.145,
        width: MediaQuery.of(context).size.width * 0.88,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 4,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
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
                      imgPath,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      subject,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      author,
                      style: TextStyle(color: Color(0xffC4C4C4)),
                    ),
                    Text(
                      "Catergory $catergory",
                      style: TextStyle(color: Color(0xffC4C4C4)),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.020,
                    ),
                    Row(
                      children: [
                        Text(
                          "Likes $likes",
                          style: TextStyle(color: Colors.black),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.020,
                        ),
                        Text(
                          "Created $date",
                          style: TextStyle(color: Colors.black),
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
      ),
    );
  }
}
