import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final ans;
  final question;
  const Answer({@required this.ans, @required this.question});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Header(btntext: 'Answer'),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Question:",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(question == null ? "" : question),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Answer:",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(ans == null ? "" : ans),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
