import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';

class WritingTestInstruction extends StatefulWidget {
  WritingTestInstruction({Key? key}) : super(key: key);

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
                  children: [Text("hy")],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
