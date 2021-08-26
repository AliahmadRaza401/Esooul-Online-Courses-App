import 'dart:ui';
import 'package:esooul/Screens/Paper/topic_list.dart';
import 'package:esooul/Screens/Paper/year_papers.dart';
import 'package:esooul/Screens/Topics/Topics.dart';

import 'package:esooul/Widgets/header.dart';
import 'package:esooul/Widgets/header2.dart';
import 'package:flutter/material.dart';

class PaperCategorey extends StatefulWidget {
  PaperCategorey({Key? key}) : super(key: key);

  @override
  _PaperCategoreyState createState() => _PaperCategoreyState();
}

class _PaperCategoreyState extends State<PaperCategorey> {
  bool _show = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Container(
              // color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Header(
                    btntext: 'Paper',
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _show = !_show;
                      });
                    },
                    child: papercard(
                      context,
                      'assets/png/calender.png',
                      'Past Papers',
                      'Download and attempt',
                      'Yearly Papers',
                      Color(0xff72C6EF),
                      Color(0xff25AE95),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TopicList()));
                    },
                    child: papercard(
                      context,
                      'assets/png/editgoroup.png',
                      'Custom Papers',
                      'Enter topics and generate',
                      'Your own Papers',
                      Color(0xff2575AE),
                      Color(0xff72C6EF),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .06,
                  )
                ],
              ),
            ),
            _show == true ? pastpaper(context) : Text(""),
          ],
        ),
      ),
    );
  }

  Widget pastpaper(BuildContext context) {
    DateTime currentdate = new DateTime.now();
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.white.withOpacity(.5),
      child: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * .65,
          width: MediaQuery.of(context).size.width * .9,
          decoration: BoxDecoration(
            // boxShadow: [
            //   BoxShadow(color: Colors.grey, spreadRadius: 70, blurRadius: 200)
            // ],
            gradient: LinearGradient(colors: [
              Color(0xff72C6EF),
              Color(0xff004E8F),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(30),
          ),
          padding: EdgeInsets.all(30).copyWith(left: 5, right: 5),
          child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Select year",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .25,
                    ),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            _show = false;
                          });
                        },
                        child: Icon(
                          Icons.close,
                          size: 30,
                        ))
                  ],
                ),
                ListView.builder(
                    shrinkWrap: true,
                    // scrollDirection:Axis.horizontal ,
                    itemCount: 9,
                    itemBuilder: (context, i) {
                      return GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>YearPaperSelection()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xffEBEBEB).withOpacity(.21),
                                  ),
                                  height: MediaQuery.of(context).size.height * .05,
                                  width: MediaQuery.of(context).size.width * .86,
                                  child: Center(
                                      child: Text(
                                    "${currentdate.year - i}",
                                    style: TextStyle(fontSize: 20),
                                  ))),
                            )
                          ],
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget papercard(BuildContext context, String icon, String title, String desc,
    String papers, final color1, final color2) {
  return Stack(
    children: [
      Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurRadius: 2,
                  spreadRadius: 5,
                  color: Color(0xffD7E0E4),
                  offset: Offset(1, 2))
            ],
            gradient: new LinearGradient(
              colors: [
                color1,
                color2,
              ],
              // stops: [0.0, 1.0],
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight,
            ),
            borderRadius: BorderRadius.circular(70)),
        width: MediaQuery.of(context).size.width * .9,
        height: MediaQuery.of(context).size.height * .3,
      ),
      Container(
        margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * .015,
            left: MediaQuery.of(context).size.width * .025),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            image: DecorationImage(
                image: AssetImage('assets/png/backgroundpapers.png'),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(70)),
        width: MediaQuery.of(context).size.width * .85,
        height: MediaQuery.of(context).size.height * .27,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          // crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Image.asset("$icon"),
            Text(
              "$title",
              style: TextStyle(fontSize: 25),
            ),
            Text("$desc"),
            Text("$papers")
          ],
        ),
      ),
    ],
  );
}
