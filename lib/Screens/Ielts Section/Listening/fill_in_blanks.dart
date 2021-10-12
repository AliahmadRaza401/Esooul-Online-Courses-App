import 'package:esooul/Screens/Authentication/signUp/signUp_provider.dart';
import 'package:esooul/Screens/Ielts%20Section/Listening/listening_provider.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../IELTS Home/ielts_widget.dart';

class FillInBlanks extends StatefulWidget {
  const FillInBlanks({Key? key}) : super(key: key);

  @override
  _FillInBlanksState createState() => _FillInBlanksState();
}

class _FillInBlanksState extends State<FillInBlanks> {
  late ListeningProvider listeningProvider;

  @override
  void initState() {
    super.initState();
    listeningProvider = Provider.of<ListeningProvider>(context, listen: false);
    getTest();
  }

  getTest() async {
    var token = await Provider.of<SignUpProvider>(context, listen: false)
        .getUserTokenSF();
    var data = listeningProvider.listeningTest(token);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Header(btntext: '40 minuts'),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              width: MediaQuery.of(context).size.width * .98,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Listening Test 1",
                        style: TextStyle(color: Color(0xff196C7E)),
                      ),
                      Text(
                        "Show Answer sheet",
                        style: TextStyle(color: Color(0xffEEBB05)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .01,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height * .09,
                      width: MediaQuery.of(context).size.width * .9,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/png/audio.png"),
                            fit: BoxFit.contain),
                        boxShadow: [
                          // BoxShadow(
                          //   color: Colors.grey.withOpacity(0.3),
                          //   spreadRadius: 3,
                          //   blurRadius: 7,
                          //   offset: Offset(0, 3), // changes position of shadow
                          // ),
                        ],
                        borderRadius: BorderRadius.circular(7),
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Part 1(a): Questions 1-5",
                          style: TextStyle(color: Color(0xff196C7E)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Row(
                      //  mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Complete the notes below",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Wrap(
                        children: [
                          Text(
                            "Write no more than two words and/or number for each answer",
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .02,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * .35,
                    child:
                        //  Row(
                        //    mainAxisAlignment: MainAxisAlignment.center,
                        //    children: [
                        //      partB(
                        //        'Transport',
                        //         'Bus',
                        //         'Train (Peak)',
                        //         'Train (Off-Peak)- before 5pm or after 7______pm',
                        //         '9_______ferry',
                        //         'Tourist ferry 10_______'
                        //         )
                        //    ],
                        //  )
                        Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mcqs('1', 'Express train leaves at _______'),
                        mcqs('2', 'Nearest station is ______'),
                        mcqs('3', 'Number 706 bus goes to_____'),
                        mcqs('4', 'Nymber ______ bus goes to station'),
                        mcqs('5', 'Earlier bus leaves at _____'),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff00B0D7),
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 90),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100))),
                            child: Text(
                              'Submit',
                              style: TextStyle(fontSize: 20),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget partB(
      String title, String p1, String p2, String p3, String p4, String p5) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(1),
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(color: Color(0xff3E88AC), boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(.5),
                  offset: Offset(0, 0),
                  blurRadius: 5,
                  spreadRadius: 1)
            ]),
            width: MediaQuery.of(context).size.width * .25,
            height: MediaQuery.of(context).size.height * .04,
            child: Text(
              "$title",
              style: TextStyle(fontSize: 11),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(1),
          child: Container(
            // alignment: Alignment.center,
            padding: EdgeInsets.only(left: 15, top: 5),
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(.5),
                  offset: Offset(0, 0),
                  blurRadius: 5,
                  spreadRadius: 1)
            ]),
            width: MediaQuery.of(context).size.width * .25,
            height: MediaQuery.of(context).size.height * .04,
            child: Text(
              "$p1",
              style: TextStyle(color: Color(0xff706969), fontSize: 11),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(1),
          child: Container(
            // alignment: Alignment.center,
            padding: EdgeInsets.only(left: 15, top: 5),
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(.5),
                  offset: Offset(0, 0),
                  blurRadius: 5,
                  spreadRadius: 1)
            ]),
            width: MediaQuery.of(context).size.width * .25,
            height: MediaQuery.of(context).size.height * .04,
            child: Text(
              "$p2",
              style: TextStyle(color: Color(0xff706969), fontSize: 11),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(1),
          child: Container(
              // alignment: Alignment.center,
              padding: EdgeInsets.only(left: 15, top: 5),
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(.5),
                    offset: Offset(0, 0),
                    blurRadius: 5,
                    spreadRadius: 1)
              ]),
              width: MediaQuery.of(context).size.width * .25,
              height: MediaQuery.of(context).size.height * .1,
              child: Wrap(
                children: [
                  Text(
                    "$p3",
                    style: TextStyle(color: Color(0xff706969), fontSize: 11),
                  )
                ],
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(1),
          child: Container(
            // alignment: Alignment.center,
            padding: EdgeInsets.only(left: 15, top: 5),
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(.5),
                  offset: Offset(0, 0),
                  blurRadius: 5,
                  spreadRadius: 1)
            ]),
            width: MediaQuery.of(context).size.width * .25,
            height: MediaQuery.of(context).size.height * .04,
            child: Text(
              "$p4",
              style: TextStyle(color: Color(0xff706969), fontSize: 11),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(1),
          child: Container(
              // alignment: Alignment.center,
              padding: EdgeInsets.only(left: 15, top: 5),
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(.5),
                    offset: Offset(0, 0),
                    blurRadius: 5,
                    spreadRadius: 1)
              ]),
              width: MediaQuery.of(context).size.width * .25,
              height: MediaQuery.of(context).size.height * .065,
              child: Wrap(
                children: [
                  Text(
                    "$p5",
                    style: TextStyle(color: Color(0xff706969), fontSize: 11),
                  ),
                ],
              )),
        ),
      ],
    );
  }
}
