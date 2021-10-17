import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/shims/dart_ui_real.dart';

class AboutWritingTest extends StatefulWidget {
  var about;
  AboutWritingTest({@required this.about});

  @override
  _AboutWritingTestState createState() => _AboutWritingTestState();
}

class _AboutWritingTestState extends State<AboutWritingTest> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.about);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Header(btntext: "About Writing Test"),
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Html(data: widget.about),
                    Text(
                      "hy",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
