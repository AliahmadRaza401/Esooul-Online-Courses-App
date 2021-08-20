import 'package:esooul/Widgets/back_button.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';

class StartPaper extends StatefulWidget {
  StartPaper({Key? key}) : super(key: key);

  @override
  _StartPaperState createState() => _StartPaperState();
}

class _StartPaperState extends State<StartPaper> {
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
                    padding: const EdgeInsets.all(5.0),
                    child:
                        BackButtonWidget(iconPath: "assets/png/hearticon.png"),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.030,
                  ),
                  _myContainer(
                    "assets/png/backbuttonimage.png",
                    "Yaerly paper",
                    "Download and Attempt\nyearly paper",
                    Color(0xFF849A9B),
                    Color(0xff2C2C2C),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.030,
                  ),
                  _myContainer(
                    "assets/png/backbuttonimage.png",
                    "Generate Paper",
                    "Enter Topics and generate\nyour own paper",
                    Color(0xff8F6A6A),
                    Color(0xff000000),
                  ),
                ],
              ),
            ),
          ]),
        ]),
      ),
    );
  }

  _myContainer(
      String imgPath, String text1, String text2, Color grd1, Color grd2) {
    return GestureDetector(
      child: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * 0.306,
        width: MediaQuery.of(context).size.width * 0.606,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          // border: Border.all(color: borderColor),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.yellow,
                Colors.white,
              ]),
        ),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.30,
          width: MediaQuery.of(context).size.width * 0.60,
          decoration: BoxDecoration(
            // color: Colors.white,
            shape: BoxShape.circle,
            // border: Border.all(color: borderColor),
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
                  grd1, grd2
                  // Color(0xFF849A9B),
                  // Color(0xff2C2C2C),
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.018,
              ),
              Flexible(
                child: Text(
                  text2,
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
