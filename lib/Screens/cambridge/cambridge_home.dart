import 'package:esooul/Screens/cambridge/year_page.dart';
import 'package:esooul/Widgets/comingSoon_msg.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:esooul/Widgets/header2.dart';
import 'package:esooul/Widgets/noData_msg.dart';
import 'package:flutter/material.dart';

class CambridgeHome extends StatelessWidget {
  // const CambridgeHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Header(btntext: ""),
            Expanded(
                child: Container(
              width: MediaQuery.of(context).size.width,
              // color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Select your study Level:",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        box(context, "A LEVEL", YearPage()),
                      ],
                    ),
                  ),
                  box(context, "O LEVEL", ComingSoon()),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }

  Widget box(BuildContext context, txt, goTo) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => goTo));
      },
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width * 0.5,
        height: MediaQuery.of(context).size.height * 0.18,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Text(
          txt,
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.w700,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
