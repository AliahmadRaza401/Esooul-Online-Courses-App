import 'package:esooul/Widgets/back_button.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  // final String btntext;
  // final String icon;
  Header({
    Key? key,
  }) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * .0080,
            left: MediaQuery.of(context).size.width * .017,
            right: MediaQuery.of(context).size.width * .017,
            bottom: MediaQuery.of(context).size.height * 0.0),
        padding: EdgeInsets.all(12.0),
        height: MediaQuery.of(context).size.height * 0.26,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff72C6EF),
              Color(0xff004E8F),
            ],
          ),
          color: Colors.blue,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  "assets/png/headerlogo (2).png",
                  // height: MediaQuery.of(context).size.height * 0.1,
                  // width: MediaQuery.of(context).size.width * 0.1
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: [_myText("Hi, John")],
                    ),
                    Row(
                      children: [_myText("Let's Start Learning")],
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [_myConatiner("assets/png/search (2).png")],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.020,
                        ),
                        Column(
                          children: [
                            _myConatiner("assets/png/notification.png")
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.020,
                        ),
                        Column(
                          children: [_myConatiner("assets/png/addtocart.png")],
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.020,
            ),
            Row(
              children: [
                Text(
                  "Invite Friend",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 21.0),
                ),
                Container(
                  // height: MediaQuery.of(context).size.height * 0.1,
                  // width: MediaQuery.of(context).size.width * 0.1,
                  child: Image.asset(
                    "assets/png/share-2 (1).png",
                  ),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.020,
            ),
            //  BackButtonWidget(
            //     iconPath: $icon, buttontext: "Settings")
            BackButtonWidget(
                iconPath: "assets/png/settings.png", buttontext: "Settings")
          ],
        ),
      ),
    );
  }

  _myText(String mytext) {
    return Text(
      mytext,
      style: TextStyle(color: Colors.white, fontSize: 15.0),
    );
  }

  _myConatiner(String imgPath) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.080,
        height: MediaQuery.of(context).size.height * 0.040,
        decoration: BoxDecoration(
          color: Colors.transparent,
          shape: BoxShape.rectangle,
        ),
        // margin: EdgeInsets.only(right: 8, top: 8),
        child: Center(
          child: Image.asset(imgPath),
        ),
      ),
    );
  }
}
