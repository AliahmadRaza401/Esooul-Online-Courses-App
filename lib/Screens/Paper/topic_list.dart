import 'package:esooul/Widgets/back_button.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';

class TopicList extends StatefulWidget {
  TopicList({Key? key}) : super(key: key);

  @override
  _TopicListState createState() => _TopicListState();
}

class _TopicListState extends State<TopicList> {
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    BackButtonWidget(
                        buttontext: "",
                        iconPath: "assets/png/backbuttonimage.png"),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.10,
                    ),
                    Center(
                      child: Text(
                        "Add topics from the list to add them in your paper",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Topic List",
                        style: TextStyle(
                            color: Color(0xff00B0D7),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    _topic("1", Color(0xff2F2E2E)),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.010,
                    ),
                    _topic("2", Color(0xff5F5F5F)),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.010,
                    ),
                    _topic("3", Color(0xff2F2E2E)),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.010,
                    ),
                    _topic("4", Color(0xff5F5F5F)),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.010,
                    ),
                    _topic("3", Color(0xff2F2E2E)),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.10,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color(
                                  0xff3D3D3D), //background color of button
                              //border width and color
                              elevation: 3, //elevation of button
                              shape: RoundedRectangleBorder(
                                  //to set border radius to button
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                            child: Text('Generate paper'),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ]),
      ),
    );
  }

  _topic(String no, Color color) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.050,
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Topic $no",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Add",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
