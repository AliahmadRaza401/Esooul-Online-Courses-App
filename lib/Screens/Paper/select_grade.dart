import 'package:esooul/Widgets/back_button.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:esooul/Widgets/header2.dart';
import 'package:flutter/material.dart';

class SelectGrade extends StatefulWidget {
  SelectGrade({Key? key}) : super(key: key);

  @override
  _SelectGradeState createState() => _SelectGradeState();
}

class _SelectGradeState extends State<SelectGrade> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff2F2F2F),
        child: Column(children: [
          Header2(),
          SingleChildScrollView(
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
                  _myContainer("Grade 09"),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.010,
                  ),
                  _myContainer("Grade 10"),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.010,
                  ),
                  _myContainer("Grade 11"),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.010,
                  ),
                  _myContainer("Grade 12"),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.010,
                  ),
                  _myContainer("A Levels"),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.010,
                  ),
                  _myContainer("O Levels"),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }

  _myContainer(String grade) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.only(left: 10),
        height: MediaQuery.of(context).size.height * 0.075,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            shape: BoxShape.rectangle),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.0600,
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
