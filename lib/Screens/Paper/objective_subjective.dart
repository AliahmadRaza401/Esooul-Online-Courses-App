import 'package:esooul/Widgets/back_button.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';

class ObjectiveSubjective extends StatefulWidget {
  ObjectiveSubjective({Key? key}) : super(key: key);

  @override
  _ObjectiveSubjectiveState createState() => _ObjectiveSubjectiveState();
}

class _ObjectiveSubjectiveState extends State<ObjectiveSubjective> {
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
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        BackButtonWidget(iconPath: "assets/png/hearticon.png"),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.030,
                  ),
                  _myContainer("assets/png/backbuttonimage.png", "Objective",
                      "Online MCQ's", Colors.red),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.030,
                  ),
                  _myContainer("assets/png/backbuttonimage.png", "Subjective",
                      "Download PDF/Images", Colors.yellow),
                ],
              ),
            ),
          ]),
        ]),
      ),
    );
  }

  _myContainer(String imgPath, String text1, String text2, Color borderColor) {
    return GestureDetector(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.30,
        width: MediaQuery.of(context).size.width * 0.60,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: borderColor),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF849A9B),
                Color(0xff2C2C2C),
              ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.060,
            ),
            Image.asset(
              imgPath,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.018,
            ),
            Text(
              text1,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.018,
            ),
            Text(
              text2,
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
