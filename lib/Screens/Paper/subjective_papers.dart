import 'package:esooul/Widgets/back_button.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';

class SubjectivePapers extends StatefulWidget {
  SubjectivePapers({Key? key}) : super(key: key);

  @override
  _SubjectivePapersState createState() => _SubjectivePapersState();
}

class _SubjectivePapersState extends State<SubjectivePapers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff2F2F2F),
        child: ListView(children: [
          Header(),
          Stack(children: [
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .0080,
                  left: MediaQuery.of(context).size.width * .017,
                  right: MediaQuery.of(context).size.width * .017,
                  bottom: MediaQuery.of(context).size.height * 0.0),
              height: MediaQuery.of(context).size.height * .78,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.white,
                      Colors.white10,
                    ],
                  ),
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                          MediaQuery.of(context).size.width * .08),
                      topRight: Radius.circular(
                          MediaQuery.of(context).size.width * .08))),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .01,
                  left: MediaQuery.of(context).size.width * .02,
                  right: MediaQuery.of(context).size.width * .02,
                  bottom: MediaQuery.of(context).size.height * 0.0),
              height: MediaQuery.of(context).size.height * .78,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xff404040),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                          MediaQuery.of(context).size.width * .07),
                      topRight: Radius.circular(
                          MediaQuery.of(context).size.width * .07))),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: BackButtonWidgetSubjective(
                        text: "Subjective Papers",
                        iconPath: 'assets/png/hearticon.png',
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.020,
                    ),
                    _paperContainer("assets/png/books.png", "Paper 1",
                        "10 Question", "1 hour 15 min", "2.5"),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.010,
                    ),
                    _paperContainer("assets/png/books.png", "Paper 2",
                        "10 Question", "1 hour 15 min", "2.5"),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.010,
                    ),
                    _paperContainer("assets/png/books.png", "Paper 3",
                        "10 Question", "1 hour 15 min", "2.5"),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.010,
                    ),
                    _paperContainer("assets/png/books.png", "Paper 4",
                        "10 Question", "1 hour 15 min", "2.5"),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.010,
                    ),
                    _paperContainer("assets/png/books.png", "Paper 5",
                        "10 Question", "1 hour 15 min", "2.5"),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.010,
                    ),
                    _paperContainer("assets/png/books.png", "Paper 6",
                        "10 Question", "1 hour 15 min", "2.5"),
                  ],
                ),
              ),
            ),
          ]),
        ]),
      ),
    );
  }

  _paperContainer(String imgPath, String paperNo, String totalQuestions,
      String time, String rating) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.fromLTRB(13, 13, 13, 13),
        height: MediaQuery.of(context).size.height * 0.12,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Image.asset(
              imgPath,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.020,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  paperNo,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0,
                      color: Color(0xff3550DC)),
                ),
                Row(
                  children: [
                    Icon(Icons.book, color: Color(0xff999999)),
                    Text(
                      totalQuestions,
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Color(0xff999999)),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(Icons.watch, color: Color(0xff999999)),
                    Text(
                      time,
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Color(0xff999999)),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.22,
            ),
            Row(
              children: [
                Icon(Icons.star, color: Color(0xffF2C94C)),
                Text(
                  rating,
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Color(0xff3550DC)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class BackButtonWidgetSubjective extends StatelessWidget {
  final String iconPath;
  final String text;
  BackButtonWidgetSubjective({
    Key? key,
    required this.iconPath,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(30.0)),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.0, 1.0],
            colors: [
              Color(0xff3A6073),
              Color(0xff16222A),
            ],
          ),
          border: Border(
            top: BorderSide(
              color: Colors.black,
              width: 1.5,
            ),
            left: BorderSide(
              color: Colors.black,
              width: 1.5,
            ),
            right: BorderSide(
              color: Colors.black,
              width: 1.5,
            ),
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black,
              offset: Offset(20.0, 20.0),
              blurRadius: 20.0,
              spreadRadius: 40.0,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 0, 15.0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  minimumSize: MaterialStateProperty.all(Size(50, 50)),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                  // elevation: MaterialStateProperty.all(3),
                  shadowColor: MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                  ),
                  child: Text(
                    "< Back",
                    style: TextStyle(
                      fontSize: 18,
                      // fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Text(
                text,
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
              ),
              Image.asset(
                iconPath,
                height: MediaQuery.of(context).size.height * 0.050,
                width: MediaQuery.of(context).size.width * 0.080,
              )
            ],
          ),
        ),
      ),
    );
  }
}
