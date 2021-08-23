import 'package:esooul/Screens/Paper/select_paper.dart';
import 'package:esooul/Widgets/header2.dart';
import 'package:flutter/material.dart';

class SelectSubject extends StatefulWidget {
  SelectSubject({Key? key}) : super(key: key);

  @override
  _SelectSubjectState createState() => _SelectSubjectState();
}

class _SelectSubjectState extends State<SelectSubject> {
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
                      "Select Subject",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.010,
                    ),
                    _myContainer("Maths"),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.010,
                    ),
                    _myContainer("English"),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.010,
                    ),
                    _myContainer("Science"),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.010,
                    ),
                    _myContainer("Urdu"),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.010,
                    ),
                    _myContainer("Islamiat"),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.010,
                    ),
                    _myContainer("Pak Studies"),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.010,
                    ),
                    _myContainer("Computer Science"),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.010,
                    ),
                    _myContainer("General Knowledge"),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.010,
                    ),
                    _myContainer("General Knowledge"),
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
          MaterialPageRoute(builder: (context) => SelectPaper()),
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
