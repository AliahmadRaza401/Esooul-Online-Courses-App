import 'package:esooul/Screens/cambridge/cam_parts.dart';
import 'package:esooul/Widgets/comingSoon_msg.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:esooul/Widgets/tile.dart';
import 'package:flutter/material.dart';

class YearPage extends StatelessWidget {
  const YearPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Header(btntext: "Year"),
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
                        "Select Year:",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  tile(context, 2016.toString(), CamParts()),
                  tile(context, 2017.toString(), ComingSoon()),
                  tile(context, 2018.toString(), ComingSoon()),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
