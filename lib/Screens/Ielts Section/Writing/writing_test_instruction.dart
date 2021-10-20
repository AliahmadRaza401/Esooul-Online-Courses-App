import 'package:esooul/Widgets/header.dart';
import 'package:esooul/Widgets/loading_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class WritingTestInstruction extends StatefulWidget {
  final instruction;
  WritingTestInstruction({@required this.instruction});

  @override
  _WritingTestInstructionState createState() => _WritingTestInstructionState();
}

class _WritingTestInstructionState extends State<WritingTestInstruction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Header(btntext: "Writing Test Instruction"),
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                   widget.instruction == null ? LoadingBounceAnimation(context)
                    : Html(data: widget.instruction)
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
