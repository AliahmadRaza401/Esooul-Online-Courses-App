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
        color: Colors.white,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Header(
                btntext: 'Topic',
              ),
              Container(
                padding: EdgeInsets.fromLTRB(
                    MediaQuery.of(context).size.width * 0.04,
                    MediaQuery.of(context).size.height * 0.010,
                    MediaQuery.of(context).size.width * 0.04,
                    0),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Remove All",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.w600),
                        ))
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width * 0.04,
                        MediaQuery.of(context).size.height * 0.010,
                        MediaQuery.of(context).size.width * 0.04,
                        0),
                    child: Column(children: <Widget>[
                      _topic("1", Color(0xffC4C4C4)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.010,
                      ),
                      _topic("2", Color(0xff00B0D7)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.010,
                      ),
                      _topic("3", Color(0xffC4C4C4)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.010,
                      ),
                      _topic("4", Color(0xff00B0D7)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.010,
                      ),
                      _topic("3", Color(0xffC4C4C4)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.10,
                      ),
                    ]),
                  ),
                ),
              ),
              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.050,
              // ),
              // Text(
              //   "Add topics from the list to add them in your paper",
              //   style: TextStyle(
              //       fontWeight: FontWeight.w300,
              //       color: Colors.black54),
              // ),

              Padding(
                padding: EdgeInsets.fromLTRB(
                    MediaQuery.of(context).size.width * 0.03,
                    MediaQuery.of(context).size.height * 0.010,
                    0,
                    MediaQuery.of(context).size.height * 0.01),
                child: Text(
                  "Topic List",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width * 0.04,
                        MediaQuery.of(context).size.height * 0.010,
                        MediaQuery.of(context).size.width * 0.04,
                        0),
                    height: MediaQuery.of(context).size.height * .50,
                    child: Column(children: <Widget>[
                      _topic("1", Color(0xffC4C4C4)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.010,
                      ),
                      _topic("2", Color(0xff00B0D7)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.010,
                      ),
                      _topic("3", Color(0xffC4C4C4)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.010,
                      ),
                      _topic("4", Color(0xff00B0D7)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.010,
                      ),
                      _topic("3", Color(0xffC4C4C4)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.10,
                      ),
                    ]),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                      MediaQuery.of(context).size.width * 0.03,
                      0,
                      MediaQuery.of(context).size.width * 0.03,
                      MediaQuery.of(context).size.height * 0.02),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(double.infinity,
                            MediaQuery.of(context).size.height * 0.050),
                        primary: Color(0xff999999), //background color of button
                        //border width and color
                        elevation: 3, //elevation of button
                        shape: RoundedRectangleBorder(
                            //to set border radius to button
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      child: Text(
                        'Generate paper',
                        style: TextStyle(color: Color(0xFF4E4E4E)),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
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
