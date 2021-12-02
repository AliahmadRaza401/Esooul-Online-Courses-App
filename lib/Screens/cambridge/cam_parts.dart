import 'package:esooul/Screens/cambridge/cam_test.dart';
import 'package:esooul/Screens/cambridge/year_page.dart';
import 'package:esooul/Widgets/comingSoon_msg.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:esooul/Widgets/tile.dart';
import 'package:flutter/material.dart';

class CamParts extends StatelessWidget {
  const CamParts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Header(btntext: "2016"),
            Expanded(
                child: Container(
              width: MediaQuery.of(context).size.width,
              // color: Colors.green,
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Select Paper:",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  tile(context, "Paper 1", CamTest()),
                  tile(context, "Paper 2", ComingSoon()),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
