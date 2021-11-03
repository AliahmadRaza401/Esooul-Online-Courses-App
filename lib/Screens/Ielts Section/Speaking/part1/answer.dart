import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final ans;
  const Answer({@required this.ans});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Header(btntext: 'Answer'),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("    Answer:",
                      style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(ans == null ? "" : ans),
            ],
          ),
        ),
      ),
    );
  }
}
