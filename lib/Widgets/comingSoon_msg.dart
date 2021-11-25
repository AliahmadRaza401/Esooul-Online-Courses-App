import 'package:esooul/Widgets/header.dart';
import 'package:esooul/Widgets/header2.dart';
import 'package:flutter/material.dart';

class ComingSoon extends StatefulWidget {
  ComingSoon({Key? key}) : super(key: key);

  @override
  _ComingSoonState createState() => _ComingSoonState();
}

class _ComingSoonState extends State<ComingSoon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Header(btntext: "Coming Soon"),
            Expanded(
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/png/coming.jpg"),
                      fit: BoxFit.contain,
                    ),
                  ),
                  child: Text('.')),
            ),
          ],
        ),
      ),
    );
  }
}
