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
        child: Column(children: [
          Header(),
          Container(
            padding: EdgeInsets.all(8.0),
            height: MediaQuery.of(context).size.height * .65,
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Row(
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
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.040,
                ),
                Text(
                  "Add topics from the list to add them in your paper",
                  style: TextStyle(
                      fontWeight: FontWeight.w300, color: Colors.black54),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Topic List",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600),
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
                          primary:
                              Color(0xff3D3D3D), //background color of button
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
          )
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
