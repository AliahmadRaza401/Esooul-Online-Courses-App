import 'package:esooul/Screens/Paper/select_grade.dart';
import 'package:esooul/Widgets/header2.dart';
import 'package:flutter/material.dart';

class SelectBoard extends StatefulWidget {
  SelectBoard({Key? key}) : super(key: key);

  @override
  _SelectBoardState createState() => _SelectBoardState();
}

class _SelectBoardState extends State<SelectBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(children: [
          Header2(),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Punjab Board List",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.010,
                    ),
                    _myContainer(
                        "Board of Intermediate and\nSecondary Education (BISE) Lahore"),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.010,
                    ),
                    _myContainer(
                        "Board of Intermediate and\nSecondary Education (BISE) Rawalpindi"),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.010,
                    ),
                    _myContainer(
                        "Board of Intermediate and\nSecondary Education (BISE) Faisalabad"),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.010,
                    ),
                    _myContainer(
                        "Board of Intermediate and\nSecondary Education (BISE) Multan"),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.010,
                    ),
                    _myContainer(
                        "Board of Intermediate and\nSecondary Education (BISE) DG Khan"),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.010,
                    ),
                    _myContainer(
                        "Board of Intermediate and\nSecondary Education (BISE) Gujranwala"),
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }

  _myContainer(String grade) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SelectGrade()),
        );
      },
      child: Container(
        padding: EdgeInsets.only(left: 10),
        height: MediaQuery.of(context).size.height * 0.075,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 1,
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
                )),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.05,
            ),
            Text(
              grade,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
